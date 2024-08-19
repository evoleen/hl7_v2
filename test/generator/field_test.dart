import 'package:hl7_v2/src/parser/message.dart';
import 'package:test/test.dart';

void main() {
  group('Function: writeField', () {
    late HL7v2Message generator;

    setUp(() {
      generator = HL7v2Message();
    });

    test('should handle simple fields like MSH.10', () {
      final ret =
          generator.writeField(fieldValue: '12345', fieldName: 'MSH.10');
      expect(ret, equals('12345'));
    });

    test('should handle varies fields like OBX.5', () {
      final field = {
        2: 'PDF',
        3: {
          1: 'FAKE COMPONENT',
        },
        4: {
          2: 'ANOTHER FAKE COMPONENT',
        },
        5: 'I AM A PDF DOCUMENT',
      };
      final ret = generator.writeField(fieldValue: field, fieldName: 'OBX.5');
      expect(
          ret,
          equals(
              '^PDF^FAKE COMPONENT^&ANOTHER FAKE COMPONENT^I AM A PDF DOCUMENT'));
    });

    test('should handle varies fields like OBX.5.2', () {
      final field = {
        2: 'PDF',
        3: {
          1: 'FAKE COMPONENT',
        },
        4: {
          2: 'ANOTHER FAKE COMPONENT',
        },
        5: {
          1: '|O|',
          2: 'I AM A PDF DOCUME\\NT',
        },
      };
      final ret = generator.writeField(fieldValue: field, fieldName: 'OBX.5');
      expect(
          ret,
          equals(
              '^PDF^FAKE COMPONENT^&ANOTHER FAKE COMPONENT^\\F\\O\\F\\&I AM A PDF DOCUME\\E\\NT'));
    });

    test('should handle simple varies fields', () {
      final ret = generator.writeField(fieldValue: 'VALUE', fieldName: 'OBX.5');
      expect(ret, equals('VALUE'));
    });

    test('should handle complex fields like PID.3', () {
      final field = {
        1: 'ID',
        2: 'CHECK DIGIT',
        3: 'CODE',
        4: {
          1: 'namespace',
          2: 'universal',
          3: 'type',
        },
        5: 'typecode',
        6: {
          1: 'namespace',
          3: 'type',
        },
      };
      final ret = generator.writeField(fieldValue: field, fieldName: 'PID.3');
      expect(
          ret,
          equals(
              'ID^CHECK DIGIT^CODE^namespace&universal&type^typecode^namespace&&type'));
    });

    test('should handle a complex field like PID.3 with simple data', () {
      var ret =
          generator.writeField(fieldValue: {1: '12345'}, fieldName: 'PID.3');
      expect(ret, equals('12345'));

      final field = {
        1: '12345',
        4: {
          1: 'MR',
        },
      };
      ret = generator.writeField(fieldValue: field, fieldName: 'PID.3');
      expect(ret, equals('12345^^^MR'));
    });

    test('should handle null values for string fields', () {
      final ret = generator.writeField(fieldValue: null, fieldName: 'MSH.10');
      expect(ret, equals(''));
    });

    test('should handle null values for complex fields', () {
      final ret =
          generator.writeField(fieldValue: {1: null}, fieldName: 'PID.3');
      expect(ret, equals(''));
    });

    test('should handle null values for simple varies fields', () {
      final ret = generator.writeField(fieldValue: null, fieldName: 'OBX.5');
      expect(ret, equals(''));
    });

    test('should handle null values for varies fields', () {
      final field = {
        2: 'PDF|',
        3: {
          1: null,
        },
        4: {
          2: 'ANOTHER FAKE COMPONENT|',
        },
        5: null,
      };
      final ret = generator.writeField(fieldValue: field, fieldName: 'OBX.5');
      expect(ret, equals('^PDF\\F\\^^&ANOTHER FAKE COMPONENT\\F\\^'));
    });

    test('should escape HL7 control characters', () {
      var ret =
          generator.writeField(fieldValue: {1: '12345'}, fieldName: 'PID.3');
      expect(ret, equals('12345'));

      final field = {
        1: '12345\\',
        4: {
          1: 'MR',
        },
      };
      ret = generator.writeField(fieldValue: field, fieldName: 'PID.3');
      expect(ret, equals('12345\\E\\^^^MR'));
    });
  });
}
