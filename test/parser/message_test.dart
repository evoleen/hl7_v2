import 'package:hl7_v2/src/parser/message.dart';
import 'package:test/test.dart';

void main() {
  group('Function: parse', () {
    late HL7v2Message parser;
    late String hl7;
    late String msh;
    late dynamic
        ret; // ret can be a Map or any other type depending on the function's return type

    setUp(() {
      parser = HL7v2Message();
    });

    tearDown(() {
      // If we were using any mocks or overrides, we'd restore them here
    });

    setUp(() {
      msh =
          'MSH|^~\\&|REMR|RHS||MED2000|200803060953||SIU^S12|20080306953450|P|2.3||||||||\r';
      hl7 = '${msh}SCH|||\rPID|||\rPV1|||\rRGS|||\rRGS|||\r';

      // Assuming we want to mock or override parseSegment, but since Dart doesn't have sinon,
      // use an appropriate method to mock or stub if necessary.
      // Here we skip mocking for simplicity, but you can use packages like `mockito` for mocking.
    });

    test('should handle char(10), char(13) and char(10) and char(13)', () {
      var replaced = hl7.replaceAll('\r', '\n');
      ret = parser.parse(replaced);
      expect(ret is Error, isFalse);

      replaced = hl7.replaceAll('\r', '\r\n');
      ret = parser.parse(replaced);
      expect(ret is Error, isFalse);
    });

    test('should return null and throw an error if we fail to read MSH', () {
      hl7 = 'adsf';
      expect(
          () => parser.parse(hl7),
          throwsA(predicate((e) => e
              .toString()
              .contains('Could not read MSH segment of HL7 v2 message.'))));
    });

    test('should create a key for simple segments', () {
      ret = parser.parse(hl7);
      expect(ret.keys, containsAll(['MSH', 'SCH']));
      expect(ret, isNot(contains('PID')));
      expect(ret, isNot(contains('PV1')));
    });

    test('should create group keys for groups', () {
      ret = parser.parse(hl7);
      expect(ret.keys, containsAll(['PATIENT', 'RESOURCES']));
    });

    test('should handle repeating segments', () {
      hl7 = '${msh}SCH|||\rNTE|||\rNTE|||\rPID|||\rPV1|||\rRGS|||\r';
      ret = parser.parse(hl7);
      expect(ret, contains('NTE'));
      expect(ret['NTE'] is List, isTrue);
    });

    test('should handle repeating segments in groups', () {
      hl7 = '${msh}SCH|||\rPID|||\rPV1|||\rDG1|||\rDG1|||\rRGS|||\rRGS|||\r';
      ret = parser.parse(hl7);
      expect(ret['PATIENT'][0], contains('DG1'));
      expect(ret['PATIENT'][0]['DG1'] is List, isTrue);
    });

    test('should handle repeating groups', () {
      ret = parser.parse(hl7);
      expect(ret['PATIENT'] is List, isTrue);
      expect(ret['PATIENT'].length, equals(1));
      expect(ret['RESOURCES'].length, equals(2));
      expect(ret['RESOURCES'][0], contains('RGS'));
      expect(ret['RESOURCES'][1], contains('RGS'));
    });

    test('should throw an error if a required segment is missing', () {
      hl7 = '${msh}PID|||\rPV1|||\rRGS|||\r';
      expect(
          () => parser.parse(hl7),
          throwsA(predicate((e) => e
              .toString()
              .contains('Message is missing required segment SCH.'))));
    });

    test('should throw an error if a required group is missing', () {
      hl7 = '${msh}SCH|||\rPID|||\rPV1|||\r';
      expect(
          () => parser.parse(hl7),
          throwsA(predicate((e) => e
              .toString()
              .contains('Message is missing required group RESOURCES.'))));
    });

    test('should skip segments that are not in the definition', () {
      hl7 = '${msh}SCH|||\rNOT|||\rNTE|||\rNTE|||\rPID|||\rPV1|||\rRGS|||\r';
      ret = parser.parse(hl7);
      expect(ret, isNot(contains('NOT')));
    });

    test('should handle char(10), char(13) and char(10) and char(13)', () {
      var replaced = hl7.replaceAll('\r', '\n');
      ret = parser.parse(replaced);
      expect(ret.keys, containsAll(['MSH', 'SCH', 'PATIENT', 'RESOURCES']));

      replaced = hl7.replaceAll('\r', '\r\n');
      ret = parser.parse(replaced);
      expect(ret.keys, containsAll(['MSH', 'SCH', 'PATIENT', 'RESOURCES']));
    });

    test('should handle groups with choice segments', () {
      msh =
          'MSH|^~\\&|REMR|RHS||MED2000|200803060953||ORM^O01|20080306953450|P|2.3||||||||\r';
      hl7 =
          '${msh}PID|||\rPV1|||\rIN1|||\rIN1|||\rGT1|||\rORC|||\rOBR|||\rDG1|||\rOBX|||\rOBX|||\rOBX|||\r';

      ret = parser.parse(hl7);
      expect(ret['ORDER'][0]['ORDER_DETAIL']['OBRRQDRQ1RXOODSODT_SUPPGRP'],
          contains('OBR'));

      hl7 = hl7.replaceAll('OBR', 'RQD');
      ret = parser.parse(hl7);
      expect(ret['ORDER'][0]['ORDER_DETAIL']['OBRRQDRQ1RXOODSODT_SUPPGRP'],
          contains('RQD'));
    });

    test(
        'should handle messages with missing optional segments in repeating groups',
        () {
      msh =
          'MSH|^~\\&|REMR|RHS||MED2000|200803060953||ORU^R01|20080306953450|P|2.3||||||||\r';
      hl7 = '${msh}PID|||\rORC|||\rOBR|||\rOBX|||\r';

      ret = parser.parse(hl7);
      expect(
          ret['PATIENT_RESULT'][0]['ORDER_OBSERVATION'][0]['OBSERVATION']
              .length,
          equals(1));
    });

    test('should handle messages with repeating segments at the end', () {
      msh =
          'MSH|^~\\&|REMR|RHS||MED2000|200803060953||ORM^O01|20080306953450|P|2.3||||||||\r';
      hl7 = '${msh}PID\rNTE\rPV1\rIN1\rIN1\rGT1\rORC\rOBR\rNTE\rDG1\rOBX\rNTE';

      ret = parser.parse(hl7);
      expect(ret['ORDER'][0]['ORDER_DETAIL']['OBSERVATION'][0]['NTE'].length,
          equals(1));

      hl7 =
          '${msh}PID\rNTE\rPV1\rIN1\rIN1\rGT1\rORC\rOBR\rNTE\rDG1\rOBX\rNTE\rNTE\rOBX\rNTE';

      ret = parser.parse(hl7);
      expect(ret['ORDER'][0]['ORDER_DETAIL']['OBSERVATION'][0]['NTE'].length,
          equals(2));
      expect(ret['ORDER'][0]['ORDER_DETAIL']['OBSERVATION'][1]['NTE'].length,
          equals(1));
    });

    test('should handle ACK messages with no event type', () {
      hl7 =
          'MSH|^~\\&|MIRTH||REDOX|RDX|20150915004731||ACK|20150915004731|P|2.3\rMSA|AA|1';
      ret = parser.parse(hl7);
      expect(ret.keys, containsAll(['MSH', 'MSA']));
    });

    test('should handle ACK messages with an event type', () {
      hl7 =
          'MSH|^~\\&|MIRTH||REDOX|RDX|20150915004731||ACK^S12|20150915004731|P|2.3\rMSA|AA|1';
      ret = parser.parse(hl7);
      expect(ret.keys, containsAll(['MSH', 'MSA']));
    });
  });
}
