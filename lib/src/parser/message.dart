import 'dart:convert';
import 'dart:io';

import 'package:hl7_v2/hl7_v2.dart';

class HL7v2Message {
  /// The default HL7 v2 delimiters
  final _delimiters = {
    'field': '|',
    'component': '^',
    'repetition': '~',
    'escape': '\\',
    'subComponent': '&',
  };

  late Map<String, dynamic> _schema;

  HL7v2Message() {
    _schema = loadSchema();
  }

  /// Builds an index with the segment names as the keys and the groups that segment is in as the values.
  ///
  /// Also, builds a second index which counts the number of distinct positional occurrences of a given
  /// segment as a direct child of each group it is part of.
  ///
  /// @param  {Object} segmentIndex The segmentIndex so far
  /// @param  {Object} segmentPositionCount The segmentPositionCount so far
  /// @param  {Object} messageDef   The message definition we're building
  /// @param  {String} groupName    The name of the current group we're processing
  /// @return {Object}              Implicitly returns the index in teh segmentIndex variable
  void buildGroupIndices(
      Map<String, dynamic> segmentIndex,
      Map<String, dynamic> segmentPositionCount,
      Map<String, dynamic> messageDef,
      String groupName) {
    for (var element in messageDef[groupName]['elements']) {
      if (element['segment'] != null) {
        segmentIndex[element['segment']] ??= {};
        segmentIndex[element['segment']][groupName] = true;

        segmentPositionCount[element['segment']] ??= {};
        segmentPositionCount[element['segment']][groupName] ??= 0;
        segmentPositionCount[element['segment']][groupName]++;
      } else {
        buildGroupIndices(
            segmentIndex, segmentPositionCount, messageDef, element['group']);
        for (var segment in segmentIndex.keys) {
          if (segmentIndex[segment][element['group']] != null) {
            segmentIndex[segment][groupName] = true;
          }
        }
      }
    }
  }

  /// Unpacks a group of segments - defined as a separate function because we have to use recursion
  /// @param  {Array} segmentArray Array of segments
  /// @param  {Object} messageDef   The definition of this message type
  /// @param  {String} groupName    The name of the group we are unpacking
  /// @return {Object}              The unpacked group
  Map<String, dynamic> parseGroup({
    required List<String> segmentArray,
    required Map<String, dynamic> segmentIndex,
    required Map<String, dynamic> segmentPositionCount,
    required Map<String, dynamic> messageDef,
    required String groupName,
  }) {
    var ret = <String, dynamic>{};
    var completedSegments = {};

    for (var element in messageDef[groupName]['elements']) {
      if (segmentArray.isEmpty) {
        for (var j = messageDef[groupName]['elements'].indexOf(element);
            j < messageDef[groupName]['elements'].length;
            j++) {
          var elem = messageDef[groupName]['elements'][j];
          if (int.parse(elem['minOccurs']) > 0) {
            if (elem['segment'] != null) {
              throw Exception(
                  'Message is missing required segment ${elem['segment']}.');
            } else {
              throw Exception(
                  'Message is missing required group ${elem['group']}.');
            }
          }
        }
        return ret;
      }

      var segment = segmentArray.removeAt(0);
      var segmentName = segment.substring(0, 3);

      if (completedSegments[segmentName] != null &&
          completedSegments[segmentName] >=
              segmentPositionCount[segmentName][groupName]) {
        segmentArray.insert(0, segment);
        return ret;
      }

      if (segmentIndex[segmentName] == null ||
          segmentIndex[segmentName][groupName] == null) {
        segmentArray.insert(0, segment);
        return ret;
      }

      if (element['segment'] == segmentName) {
        var jsonKey = element['jsonKey'] ?? segmentName;

        completedSegments[segmentName] ??= 0;
        completedSegments[segmentName]++;

        if (int.parse(element['maxOccurs']) != 1) {
          ret[jsonKey] ??= [];

          segmentArray.insert(0, segment);
          while (segmentArray.isNotEmpty &&
              segmentArray[0].substring(0, 3) == element['segment']) {
            segment = segmentArray.removeAt(0);
            ret[jsonKey].add(parseSegment(
              segmentValue: segment,
              segmentName: segmentName,
              delimiters: _delimiters,
            ));
          }
        } else {
          ret[jsonKey] = parseSegment(
            segmentValue: segment,
            segmentName: segmentName,
            delimiters: _delimiters,
          );
        }
      } else if (element['segment'] != null &&
          int.parse(element['minOccurs']) > 0) {
        throw Exception(
            'Message is missing required segment ${element['segment']}.');
      } else if (element['segment'] != null &&
          int.parse(element['minOccurs']) == 0) {
        continue;
      } else if (element['group'] != null) {
        if (segmentIndex[segmentName] != null &&
            segmentIndex[segmentName][element['group']] != null) {
          segmentArray.insert(0, segment);

          if (int.parse(element['maxOccurs']) != 1) {
            ret[element['group']] ??= [];

            while (segmentArray.isNotEmpty &&
                segmentIndex[segmentArray[0].substring(0, 3)] != null &&
                segmentIndex[segmentArray[0].substring(0, 3)]
                        [element['group']] !=
                    null) {
              ret[element['group']].add(
                parseGroup(
                  segmentArray: segmentArray,
                  messageDef: messageDef,
                  groupName: element['group'],
                  segmentIndex: segmentIndex,
                  segmentPositionCount: segmentPositionCount,
                ),
              );
            }
          } else {
            ret[element['group']] = parseGroup(
              segmentArray: segmentArray,
              messageDef: messageDef,
              groupName: element['group'],
              segmentIndex: segmentIndex,
              segmentPositionCount: segmentPositionCount,
            );
          }
        } else if (int.parse(element['minOccurs']) > 0) {
          throw Exception(
              'Message is missing required group ${element['group']}.');
        }
      }
    }

    return ret;
  }

  /// Parses an HL7 v2 message and converts to JSON representation
  /// @param {String} hl7
  /// @return {Map<String, dynamic>}
  Map<String, dynamic> parseHl7Message(String hl7) {
    var messageEventKey, messageType, eventType;
    List<String> segmentArray;
    var delimiters = {};
    List<String> mshArray;
    Map<String, dynamic> messageDef;
    Map<String, dynamic> segmentIndex = {};
    Map<String, dynamic> segmentPositionCount = {};

    if (hl7.contains('\r\n')) {
      segmentArray = hl7.split('\r\n');
    } else {
      segmentArray = hl7.split('\r');
      if (segmentArray.length < 2) {
        segmentArray = hl7.split('\n');
      }
    }

    // If delimiters other than the defaults are being used, find them
    // Assume MSH is first segment - it's not necessarilly the first segment, but should be unless BHS segments are in play
    // If a customer is sending us BHS segments, we should write a batch message V2, then call this function on each message
    if (segmentArray.isNotEmpty && segmentArray[0].substring(0, 3) == 'MSH') {
      delimiters['field'] = segmentArray[0].substring(3, 4); // |
      delimiters['component'] = segmentArray[0].substring(4, 5); // ^
      delimiters['repetition'] = segmentArray[0].substring(5, 6); // ~
      delimiters['escape'] = segmentArray[0].substring(6, 7); // \
      delimiters['subComponent'] = segmentArray[0].substring(7, 8); // &

      mshArray = segmentArray[0].split(delimiters['field']);
      mshArray.insert(
          1,
          delimiters[
              'field']); // Add field delimiter back in to make length correct

      messageType = mshArray[9].split(delimiters['component'])[0];

      eventType = messageType == 'ACK'
          ? 'ACK'
          : mshArray[9].split(delimiters['component'])[1];
    } else {
      throw Exception('Could not read MSH segment of HL7 v2 message.');
    }

    messageEventKey = _schema['structure'][messageType][eventType];

    messageDef = _schema['messages'][messageEventKey];

    if (hl7.contains('\r\n')) {
      segmentArray = hl7.split('\r\n');
    } else {
      segmentArray = hl7.split('\r');
      if (segmentArray.length < 2) {
        segmentArray = hl7.split('\n');
      }
    }

    buildGroupIndices(
        segmentIndex, segmentPositionCount, messageDef, messageEventKey);

    // Remove any empty segments or segments not defined for this message type
    for (var i = 0; i < segmentArray.length; i++) {
      if (segmentArray[i].isEmpty) {
        segmentArray.removeAt(i);
        i--;
        continue;
      }

      // If the segment is not defined in this message type, remove it
      if (segmentIndex[segmentArray[i].substring(0, 3)] == null ||
          segmentIndex[segmentArray[i].substring(0, 3)][messageEventKey] ==
              null) {
        segmentArray.removeAt(i);
        i--;
      }
    }

    return parseGroup(
      segmentArray: segmentArray,
      segmentIndex: segmentIndex,
      segmentPositionCount: segmentPositionCount,
      messageDef: messageDef,
      groupName: messageEventKey,
    );
  }

  /// Parses an individual segment in an hl7 v2 message
  /// @param  {String} segmentValue
  /// @param  {String} segmentName
  /// @param  {Object} [delimiters]   Optional non default delimiters
  /// @return {JSON}              JSON version of the segment
  Map<String, dynamic> parseSegment({
    required String segmentValue,
    required String segmentName,
    required Map<String, String> delimiters,
  }) {
    var ret = <String, dynamic>{};
    var schema = _schema;
    var segmentDef = schema['segments'][segmentName];
    var fieldArray = segmentValue.split(delimiters['field']!);

    // Special handling for MSH segment
    if (segmentName == 'MSH') {
      fieldArray.insert(1, delimiters['field']!);
    }

    for (var i = 0; i < segmentDef['fields'].length; i++) {
      var fieldValue = i + 1 < fieldArray.length ? fieldArray[i + 1] : null;

      if (fieldValue == null || fieldValue.isEmpty) {
        continue;
      }

      if (segmentDef['fields'][i]['maxOccurs'] != '1') {
        ret[(i + 1).toString()] = [];

        var fields = fieldValue.split(delimiters['repetition']!);

        for (var j = 0; j < fields.length; j++) {
          ret[(i + 1).toString()]!.add(parseField(
              fields[j], segmentDef['fields'][i]['field'], delimiters));
        }
      } else {
        // We add 1 to i since HL7 is not zero-based
        ret[(i + 1).toString()] = parseField(
            fieldValue, segmentDef['fields'][i]['field'], delimiters);
      }
    }

    return ret;
  }

  /// Parses an individual field in an hl7 v2 message
  ///
  /// @param  {String} fieldValue
  /// @param  {String} fieldName
  /// @param  {Object} [delimiters] Optional object specifying different delimiters than the defaults
  /// @return {JSON/String}            Either JSON or String. JSON if field has components, string otherwise.
  Map<String, dynamic> parseField(
      String fieldValue, String fieldName, Map<String, String>? delimiters) {
    var ret = <String, dynamic>{};
    var schema = _schema;
    var dataTypeDef =
        schema['dataTypes'][schema['fields'][fieldName]['dataType']];

    // Use provided delimiters or default ones
    delimiters = delimiters ?? _delimiters;

    // Simple String field
    if (dataTypeDef['dataType'] == 'STRING' ||
        dataTypeDef['dataType'] == 'VARIES') {
      return {'value': Escape.unEscapeString(delimiters, fieldValue)};
    }

    // Field has components
    var compArray = fieldValue.split(delimiters['component']!);

    for (var i = 0; i < dataTypeDef['components'].length; i++) {
      var componentDef = schema['dataTypes'][schema['dataTypes']
          [dataTypeDef['components'][i]['dataType']]['dataType']];

      if (i >= compArray.length) {
        continue;
      }

      // Simple string component
      if (componentDef['dataType'] == 'STRING') {
        ret[(i + 1).toString()] =
            Escape.unEscapeString(delimiters, compArray[i]);
        continue;
      }

      // Field has subcomponents
      var subCompArray = compArray[i].split(delimiters['subComponent']!);
      ret[(i + 1).toString()] = {};

      for (var j = 0; j < componentDef['components'].length; j++) {
        ret[(i + 1).toString()][(j + 1).toString()] =
            Escape.unEscapeString(delimiters, subCompArray[j]);
      }
    }

    return ret;
  }

  Map<String, dynamic> loadSchemaFile({required File file}) {
    final fileData = file.readAsStringSync();
    final json = jsonDecode(fileData);
    return json;
  }

  Map<String, dynamic> loadSchemaFiles({required Directory path}) {
    final entities = path.listSync(recursive: false);
    final schemaFiles = entities.whereType<File>().toList();
    final returnValue = <String, dynamic>{};

    for (final schemaFile in schemaFiles) {
      if (schemaFile.path.substring(schemaFile.path.length - 5) != '.json') {
        continue;
      }

      final pathComponents = path.path.split('/');
      final entityName =
          pathComponents.last.substring(pathComponents.last.length - 5);

      returnValue[entityName] = loadSchemaFile(file: schemaFile);
    }

    return returnValue;
  }

  Map<String, dynamic> loadSchema() {
    final schemaBaseDirectory = './schema';

    final schema = <String, dynamic>{};

    schema['dataTypes'] =
        loadSchemaFiles(path: Directory('$schemaBaseDirectory/dataTypes'));
    schema['fields'] =
        loadSchemaFiles(path: Directory('$schemaBaseDirectory/fields'));
    schema['messages'] =
        loadSchemaFiles(path: Directory('$schemaBaseDirectory/messages'));
    schema['segments'] =
        loadSchemaFiles(path: Directory('$schemaBaseDirectory/segments'));
    schema['structure'] = loadSchemaFile(
        file:
            File(Directory('$schemaBaseDirectory/structure/index.json').path));

    return schema;
  }
}
