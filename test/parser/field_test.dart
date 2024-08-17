import 'package:hl7_v2/src/parser/message.dart';
import 'package:test/test.dart';

void main() {
  group('Function: parseField', () {
    late HL7v2Message parser; // Assuming V2Parser is the class name

    setUp(() {
      parser = HL7v2Message(); // Initialize the parser before each test
    });

    test('should handle simple fields like MSH.10', () {
      final ret = parser.parseField('12345', 'MSH.10', null);
      expect(ret, equals('12345'));
    });

    test('should handle fields with data type VARIES like OBX.5', () {
      final ret = parser.parseField('1^2&3', 'OBX.5', null);
      expect(ret, equals('1^2&3'));
    });

    test('should handle fields with components and sub components like PID.3',
        () {
      final ret = parser.parseField(
          'ID^CHECK DIGIT^CODE^namespace&universal&type^typecode^namespace&universal&type',
          'PID.3',
          null);
      expect(ret.keys, containsAll(['1', '2', '3', '4', '5', '6']));
      expect(ret['1'], equals('ID'));
      expect(ret['2'], equals('CHECK DIGIT'));
      expect(ret['3'], equals('CODE'));
      expect(ret['4'].keys, containsAll(['1', '2', '3']));
      expect(ret['4']['1'], equals('namespace'));
      expect(ret['4']['2'], equals('universal'));
      expect(ret['4']['3'], equals('type'));
      expect(ret['5'], equals('typecode'));
      expect(ret['6']['1'], equals('namespace'));
      expect(ret['6']['2'], equals('universal'));
      expect(ret['6']['3'], equals('type'));
    });

    test('should handle a component field like PID.3 with simple data', () {
      var ret = parser.parseField('12345', 'PID.3', null);
      expect(ret, contains('1'));
      expect(ret['1'], equals('12345'));

      ret = parser.parseField('12345^^^MR', 'PID.3', null);
      expect(ret.keys, containsAll(['1', '4']));
      expect(ret['1'], equals('12345'));
      expect(ret['4'], contains('1'));
      expect(ret['4']['1'], equals('MR'));
    });

    test(
        'should handle fields with components and sub components and escape sequences',
        () {
      final ret = parser.parseField(
          'ID^CHECK DIGIT^CODE\\F\\^n\\F\\amespace&\\F\\universal&type^typecode^namespace&universal&type',
          'PID.3',
          null);
      expect(ret.keys, containsAll(['1', '2', '3', '4', '5', '6']));
      expect(ret['1'], equals('ID'));
      expect(ret['2'], equals('CHECK DIGIT'));
      expect(ret['3'], equals('CODE|'));
      expect(ret['4'].keys, containsAll(['1', '2', '3']));
      expect(ret['4']['1'], equals('n|amespace'));
      expect(ret['4']['2'], equals('|universal'));
      expect(ret['4']['3'], equals('type'));
      expect(ret['5'], equals('typecode'));
      expect(ret['6']['1'], equals('namespace'));
      expect(ret['6']['2'], equals('universal'));
      expect(ret['6']['3'], equals('type'));
    });
  });
}
