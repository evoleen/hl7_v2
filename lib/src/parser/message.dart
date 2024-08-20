import 'dart:convert';
import 'dart:io';

import 'package:hl7_v2/hl7_v2.dart';
import 'package:hl7_v2/src/schema/dataTypes.dart';
import 'package:hl7_v2/src/schema/fields.dart';
import 'package:hl7_v2/src/schema/messages.dart';
import 'package:hl7_v2/src/schema/segments.dart';
import 'package:hl7_v2/src/schema/structure.dart';
import 'package:recase/recase.dart';

class HL7v2Message {
  /// The default HL7 v2 delimiters
  final defaultDelimiters = {
    'field': '|',
    'component': '^',
    'repetition': '~',
    'escape': '\\',
    'subComponent': '&',
  };

  late Map<String, dynamic> _schema;
  late Map<String, String> _delimiters;

  Map<String, String> get delimiters => _delimiters;
  Map<String, dynamic> get schema => _schema;

  HL7v2Message({Map<String, String>? delimiters}) {
    // setup default schema
    _schema = {};
    _schema['dataTypes'] = schemaDataTypes;
    _schema['fields'] = schemaFields;
    _schema['messages'] = schemaMessages;
    _schema['segments'] = schemaSegments;
    _schema['structure'] = schemaStructure;

    _delimiters = delimiters ?? defaultDelimiters;
  }

  /// Recursively merges a Map<String,dynamic> [b] into Map<String,dynamic> [a].
  /// Atomic values that exist in both [a] and [b] will be replaced with values
  /// in [b]. This method is used to merge two schemas, where a new schema is
  /// merged into an existing one, giving values of the new schema precedence
  /// over the ones in the existing schema.
  dynamic _mergeMaps(dynamic a, dynamic b) {
    // for atomic values always give precedence to B
    if (b is! Map) {
      return b;
    }

    final result = <String, dynamic>{};

    // merge everything from B into A, giving precedence to B
    for (String bKey in b.keys) {
      if (a.containsKey(bKey)) {
        result[bKey] = _mergeMaps(a[bKey], b[bKey]);
      } else {
        result[bKey] = b[bKey];
      }
    }

    // copy everything from A that is not in B also into the result
    for (String aKey in a.keys) {
      if (!b.containsKey(aKey)) {
        result[aKey] = a[aKey];
      }
    }

    return result;
  }

  /// Helper function to convert [input] to integer. Since int.tryParse()
  /// will not accept integers as inputs but HL7 JSON inputs could either
  /// consist of strings or integers (depending on how values are converted
  /// during decoding), we need a conversion method that supports both cases.
  int? _tryParseInt(dynamic input) {
    if (input is int) {
      return input;
    }

    return int.tryParse(input);
  }

  /// Sets a new schema [schema]. If [merge] is false (the default), it will
  /// replace the existing schema with the new one. If [merge] is true, the
  /// new schema will be merged into the existing one.
  void setSchema({required Map<String, dynamic> schema, merge = false}) {
    if (merge == false) {
      _schema = schema;
    } else {
      _schema = _mergeMaps(_schema, schema);
    }
  }

  /// Builds an index with the segment names as the keys and the groups that segment is in as the values.
  ///
  /// Also, builds a second index which counts the number of distinct positional occurrences of a given
  /// segment as a direct child of each group it is part of.
  ///
  /// [segmentIndex] The segmentIndex so far
  /// [segmentPositionCount] The segmentPositionCount so far
  /// [messageDef] The message definition we're building
  /// [groupName] The name of the current group we're processing
  ///
  /// Implicitly returns the index in the segmentIndex variable
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
  /// [segmentArray] Array of segments
  /// [messageDef] The definition of this message type
  /// [groupName] The name of the group we are unpacking
  ///
  /// Returns the unpacked group
  Map<String, dynamic> parseGroup({
    required List<String> segmentArray,
    required Map<String, dynamic> segmentIndex,
    required Map<String, dynamic> segmentPositionCount,
    required Map<String, dynamic> messageDef,
    required String groupName,
  }) {
    var ret = <String, dynamic>{};
    var completedSegments = {};
    var moveOn = true;
    String segment = '';
    String segmentName = '';

    for (var i = 0; i < messageDef[groupName]['elements'].length; i++) {
      if (segmentArray.isEmpty && moveOn) {
        for (var j = i; j < messageDef[groupName]['elements'].length; j++) {
          var element = messageDef[groupName]['elements'][j];
          // If we're missing some required group or segment that we haven't gotten to yet
          if ((_tryParseInt(element['minOccurs']) ?? 0) > 0) {
            if (element['segment'] != null) {
              throw Exception(
                  'Message is missing required segment ${element['segment']}.');
            } else {
              throw Exception(
                  'Message is missing required group ${element['group']}.');
            }
          }
        }
        return ret;
      }

      var element = messageDef[groupName]['elements'][i];

      if (moveOn) {
        segment = segmentArray.removeAt(0);
        segmentName = segment.substring(0, 3);
      }

      // If we have seen this segment the maximum number of times it occurs in different distinct positions in this
      // group, a new repetition of the group must be starting.
      if (completedSegments[segmentName] != null &&
          completedSegments[segmentName] >=
              segmentPositionCount[segmentName][groupName]) {
        segmentArray.insert(0, segment);
        return ret;
      }

      // If this segment is not part of the group, add it back on and return
      if (segmentIndex[segmentName] == null ||
          segmentIndex[segmentName][groupName] == null) {
        segmentArray.insert(0, segment);
        return ret;
      }

      if (element['segment'] == segmentName) {
        // We have a match
        final jsonKey = element['jsonKey'] ?? segmentName;

        completedSegments[segmentName] ??= 0;
        completedSegments[segmentName]++;

        if (_tryParseInt(element['maxOccurs']) != 1) {
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

        moveOn = true;
      } else if (element['segment'] != null &&
          (_tryParseInt(element['minOccurs']) ?? 0) > 0) {
        // We've missed a required segment
        throw Exception(
            'Message is missing required segment ${element['segment']}.');
      } else if (element['segment'] != null &&
          _tryParseInt(element['minOccurs']) == 0) {
        // optional segment that we can skip
        moveOn = false;
      } else if (element['group'] != null) {
        // We need to check the group for the segment
        if (segmentIndex[segmentName] != null &&
            segmentIndex[segmentName][element['group']] != null) {
          segmentArray.insert(0, segment);

          if (_tryParseInt(element['maxOccurs']) != 1) {
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
          moveOn = true;
        } else if ((_tryParseInt(element['minOccurs']) ?? 0) > 0) {
          throw Exception(
              'Message is missing required group ${element['group']}.');
        } else {
          moveOn = false;
        }
      }
    }

    return ret;
  }

  /// Parses an HL7 v2 message [hl7] and returns its JSON representation
  Map<String, dynamic> parse(String hl7) {
    String messageType;
    String eventType;
    List<String> segmentArray;
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
      _delimiters['field'] = segmentArray[0].substring(3, 4); // |
      _delimiters['component'] = segmentArray[0].substring(4, 5); // ^
      _delimiters['repetition'] = segmentArray[0].substring(5, 6); // ~
      _delimiters['escape'] = segmentArray[0].substring(6, 7); // \
      _delimiters['subComponent'] = segmentArray[0].substring(7, 8); // &

      mshArray = segmentArray[0].split(_delimiters['field']!);
      mshArray.insert(
          1,
          _delimiters[
              'field']!); // Add field delimiter back in to make length correct

      messageType = mshArray[9].split(_delimiters['component']!)[0];

      eventType = messageType == 'ACK'
          ? 'ACK'
          : mshArray[9].split(_delimiters['component']!)[1];
    } else {
      throw Exception('Could not read MSH segment of HL7 v2 message.');
    }

    final messageEventKey = _schema['structure'][messageType][eventType];

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
    Map<String, String>? delimiters,
  }) {
    delimiters ??= _delimiters;
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
  /// [fieldValue]
  /// [fieldName]
  /// [delimiters] Optional object specifying different delimiters than the defaults
  ///
  /// Returns either JSON or String. JSON if field has components, string otherwise.
  dynamic parseField(
    String fieldValue,
    String fieldName,
    Map<String, String>? delimiters,
  ) {
    var ret = <String, dynamic>{};
    var schema = _schema;
    var dataTypeDef =
        schema['dataTypes'][schema['fields'][fieldName]['dataType']];

    // Use provided delimiters or default ones
    delimiters = delimiters ?? _delimiters;

    // Simple String field
    if (dataTypeDef['dataType'] == 'STRING' ||
        dataTypeDef['dataType'] == 'VARIES') {
      return Escape.unEscapeString(delimiters, fieldValue);
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
        ret[(i + 1).toString()][(j + 1).toString()] = j < subCompArray.length
            ? Escape.unEscapeString(delimiters, subCompArray[j])
            : null;
      }
    }

    return ret;
  }

  /// Loads a single JSON based schema file from disk and deserializes it.
  Map<String, dynamic> _loadSchemaFile({required File file}) {
    final fileData = file.readAsStringSync();
    final json = jsonDecode(fileData);
    return json;
  }

  /// Loads all JSON schema files from a single directory, deserializes them
  /// and returns a JSON object with one entry per file.
  Map<String, dynamic> _loadSchemaFilesFromDirectory(
      {required Directory path}) {
    final entities = path.listSync(recursive: false);
    final schemaFiles = entities.whereType<File>().toList();
    final returnValue = <String, dynamic>{};

    for (final schemaFile in schemaFiles) {
      if (schemaFile.path.substring(schemaFile.path.length - 5) != '.json') {
        continue;
      }

      final pathComponents = schemaFile.path.split('/');
      final entityName =
          pathComponents.last.substring(0, pathComponents.last.length - 5);

      returnValue[entityName] = _loadSchemaFile(file: schemaFile);
    }

    return returnValue;
  }

  /// Loads a JSON based schema from [schemaBaseDirectory]. This will load
  /// the original Redox files from disk. This method exists to preserve
  /// backward compatibility with the original repository.
  Map<String, dynamic> loadSchema({required String schemaBaseDirectory}) {
    final schema = <String, dynamic>{};

    schema['dataTypes'] = _loadSchemaFilesFromDirectory(
        path: Directory('$schemaBaseDirectory/dataTypes'));
    schema['fields'] = _loadSchemaFilesFromDirectory(
        path: Directory('$schemaBaseDirectory/fields'));
    schema['messages'] = _loadSchemaFilesFromDirectory(
        path: Directory('$schemaBaseDirectory/messages'));
    schema['segments'] = _loadSchemaFilesFromDirectory(
        path: Directory('$schemaBaseDirectory/segments'));
    schema['structure'] = _loadSchemaFile(
        file:
            File(Directory('$schemaBaseDirectory/structure/index.json').path));

    return schema;
  }

  /// Take data at key [schemaKey] in [data] and writes it to a file located in
  /// the directory [schemaFilePath].
  Future<void> _writeDartJsonSchemaFile(
      {required String schemaFilePath,
      required String schemaKey,
      required Map<String, dynamic> schema}) async {
    final schemaFile = File('$schemaFilePath/$schemaKey.dart');

    final variableName = 'schema_$schemaKey'.camelCase;

    await schemaFile.writeAsString(
        'const $variableName = <String,dynamic>${jsonEncode(schema[schemaKey])};');
  }

  /// Writes a JSON based schema that was already loaded back to disk by writing
  /// Dart source codes. This function helps in translating the schema from
  /// the original repository (or any additional custom schemas) to Dart code,
  /// which is easier to package in Dart-only software.
  Future<void> writeDartJsonSchema(
      {required Map<String, dynamic> schema,
      required String schemaBaseDirectory}) async {
    await _writeDartJsonSchemaFile(
      schemaFilePath: schemaBaseDirectory,
      schemaKey: 'dataTypes',
      schema: schema,
    );
    await _writeDartJsonSchemaFile(
      schemaFilePath: schemaBaseDirectory,
      schemaKey: 'fields',
      schema: schema,
    );
    await _writeDartJsonSchemaFile(
      schemaFilePath: schemaBaseDirectory,
      schemaKey: 'messages',
      schema: schema,
    );
    await _writeDartJsonSchemaFile(
      schemaFilePath: schemaBaseDirectory,
      schemaKey: 'segments',
      schema: schema,
    );
    await _writeDartJsonSchemaFile(
      schemaFilePath: schemaBaseDirectory,
      schemaKey: 'structure',
      schema: schema,
    );
  }

// If not an object, just returns fieldValue. If it is an object, it loops over it assuming
// the top level key is the component number and the second level key is the subcomponent number
// @param  {String/Object} fieldValue Value of the field
// @param  {Object} delimiters The delimiters this message uses
// @return {String}            The field in hl7 format
  String? writeVariesField(dynamic fieldValue, Map<String, String> delimiters) {
    int componentCounter = 1;
    int subComponentCounter;
    String ret = '';

    if (fieldValue is! Map) {
      return Escape.escapeString(delimiters, fieldValue);
    }

    fieldValue.forEach((key, value) {
      while (componentCounter < (_tryParseInt(key) ?? 0)) {
        ret += delimiters['component'] ?? '';
        componentCounter++;
      }

      if (value is Map) {
        subComponentCounter = 1;
        value.forEach((subKey, subValue) {
          while (subComponentCounter < (_tryParseInt(subKey) ?? 0)) {
            ret += delimiters['subComponent'] ?? '';
            subComponentCounter++;
          }
          ret += Escape.escapeString(delimiters, subValue) ?? '';
        });
      } else {
        ret += Escape.escapeString(delimiters, value) ?? '';
      }
    });

    return ret;
  }

  /// Packs up an individual field based on the HL7 spec for that field
  /// @param  {String/Object} fieldValue The json version of the field
  /// @param  {String} fieldName  The name of the field
  /// @param  {Object} schema     The schema defining this message
  /// @param  {Object} delimiters The delimiters this message uses
  /// @return {String}            A string representation of the field
  String writeField(
      {required dynamic fieldValue,
      required String fieldName,
      Map<String, String>? delimiters}) {
    String ret = '';
    var dataTypeDef =
        schema['dataTypes'][schema['fields'][fieldName]['dataType']];
    int compsToAdd = -1;

    delimiters ??= _delimiters;

    if (dataTypeDef['dataType'] == 'STRING') {
      return Escape.escapeString(delimiters, (fieldValue ?? '').toString()) ??
          '';
    }

    if (dataTypeDef['dataType'] == 'VARIES') {
      return writeVariesField(fieldValue, delimiters) ?? '';
    }

    for (int i = 0; i < dataTypeDef['components'].length; i++) {
      var componentDef = schema['dataTypes'][schema['dataTypes']
          [dataTypeDef['components'][i]['dataType']]['dataType']];

      compsToAdd++;

      if (fieldValue[(i + 1).toString()] == null) {
        continue;
      }

      for (int l = 0; l < compsToAdd; l++) {
        ret += delimiters['component'] ?? '';
      }
      compsToAdd = 0;

      if (componentDef['dataType'] == 'STRING') {
        ret +=
            Escape.escapeString(delimiters, fieldValue[(i + 1).toString()]) ??
                '';
        continue;
      }

      int subCompsToAdd = -1;
      for (int j = 0; j < (componentDef['components'] ?? '').length; j++) {
        subCompsToAdd++;

        if (fieldValue[(i + 1).toString()][(j + 1).toString()] == null) {
          continue;
        }

        for (int k = 0; k < subCompsToAdd; k++) {
          ret += delimiters['subComponent'] ?? '';
        }
        subCompsToAdd = 0;

        ret += Escape.escapeString(delimiters,
                fieldValue[(i + 1).toString()][(j + 1).toString()]) ??
            '';
      }
    }

    return ret;
  }

  /// Packs up a segment into the appropriate HL7 version of it
  /// [segmentValue] The json version of the segment
  /// [segmentName] The name of the segment ot pack up
  /// [schema] The schema defining how to pack up the schema
  /// [delimiters] The delimiters used by this message
  /// Returns the string version of the segment
  String writeSegment(Map<dynamic, dynamic> segmentValue, String segmentName,
      Map<String, dynamic>? schema, Map<String, String>? delimiters) {
    String ret = '';
    dynamic fieldValue;
    List<dynamic> fields;
    int startIndex;

    delimiters ??= _delimiters;
    schema ??= _schema;

    final Map<String, dynamic> segmentDef = schema['segments'][segmentName];
    ret = segmentName;

    if (segmentName == 'MSH') {
      startIndex = 2;
      ret += delimiters['field']! +
          delimiters['component']! +
          delimiters['repetition']! +
          delimiters['escape']! +
          delimiters['subComponent']!;
    } else {
      startIndex = 0;
    }

    for (int i = startIndex; i < segmentDef['fields'].length; i++) {
      ret += delimiters['field']!;

      // We add 1 to i since HL7 is not zero based
      if (segmentValue[(i + 1).toString()] == null) {
        continue;
      }

      if (segmentDef['fields'][i]['maxOccurs'] != '1') {
        fields = segmentValue[(i + 1).toString()];

        for (int j = 0; j < fields.length; j++) {
          fieldValue = fields[j];
          if (j > 0) {
            ret += delimiters['repetition']!;
          }

          ret += writeField(
              fieldValue: fieldValue,
              fieldName: segmentDef['fields'][i]['field'],
              delimiters: delimiters);
        }
      } else {
        fieldValue = segmentValue[(i + 1).toString()];
        ret += writeField(
            fieldValue: fieldValue,
            fieldName: segmentDef['fields'][i]['field'],
            delimiters: delimiters);
      }
    }

    return ret;
  }

  /// Packs up a json object representation of HL7 into an actual HL7 message
  /// [json] The JSON version of the HL7 message
  /// Returns the HL7 message
  String writeMessage(
      {required Map<String, dynamic> json,
      Map<String, String>? delimiters,
      Map<String, dynamic>? schema}) {
    String? messageType, eventType, messageEventKey;
    String ret;

    delimiters ??= _delimiters;
    schema ??= _schema;

    messageType = json['MSH']["9"]["1"];

    if (messageType == 'ACK') {
      eventType = 'ACK';
    } else {
      eventType = json['MSH']["9"]["2"];
    }

    messageEventKey = schema['structure'][messageType]?[eventType];

    if (messageEventKey == null) {
      throw Exception(
          'Could not load the HL7 message structure for an HL7 message.');
    }

    final Map<String, dynamic> messageDef = schema['messages'][messageEventKey];

    String writeGroup(Map<String, dynamic> groupJSON,
        Map<String, dynamic> messageDef, String groupName) {
      String ret = '';
      dynamic element;
      int i, j;

      for (i = 0; i < messageDef[groupName]['elements'].length; i++) {
        element = messageDef[groupName]['elements'][i];

        if (element['segment'] != null) {
          String jsonKey = element['jsonKey'] ?? element['segment'];
          if (groupJSON[jsonKey] != null) {
            if (groupJSON[jsonKey] is List) {
              int limit = (_tryParseInt(element['maxOccurs']) == 1)
                  ? 1
                  : groupJSON[jsonKey].length;
              for (j = 0; j < limit; j++) {
                ret += writeSegment(groupJSON[jsonKey][j], element['segment'],
                    schema, delimiters);
                ret += '\r';
              }
            } else {
              ret += writeSegment(
                  groupJSON[jsonKey], element['segment'], schema, delimiters);
              ret += '\r';
            }
          } else if ((_tryParseInt(element['minOccurs']) ?? 0) > 0) {
            throw Exception(
                'Message is missing required segment ${element['segment']}');
          }
        } else {
          if (groupJSON[element['group']] != null) {
            if (groupJSON[element['group']] is List) {
              int limit = (_tryParseInt(element['maxOccurs']) == 1)
                  ? 1
                  : groupJSON[element['group']].length;
              for (j = 0; j < limit; j++) {
                ret += writeGroup(groupJSON[element['group']][j], messageDef,
                    element['group']);
              }
            } else {
              ret += writeGroup(
                  groupJSON[element['group']], messageDef, element['group']);
            }
          } else if ((_tryParseInt(element['minOccurs']) ?? 0) > 0) {
            throw Exception(
                'Message is missing required group ${element['group']}');
          }
        }

        ret += '\r';
      }

      return ret;
    }

    ret = writeGroup(json, messageDef, messageEventKey);

    ret = ret.replaceAll(RegExp(r'(\r)+'), '\r'); // Remove excess line breaks

    return ret;
  }
}
