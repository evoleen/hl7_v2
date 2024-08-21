import 'package:hl7_v2/src/parser/message.dart';
import 'package:test/test.dart';

void main() {
  group('Function: writeMessage', () {
    late HL7v2Message generator;
    late Map<String, dynamic> json;

    setUp(() {
      generator = HL7v2Message();
      json = {
        "MSH": {
          "9": {"1": "SIU", "2": "S12"}
        },
        "SCH": {},
        "PATIENT": [
          {
            "PID": {},
            "PV1": {},
            "DG1": [
              {"1": '1'},
              {"1": '2'}
            ]
          }
        ],
        "RESOURCES": [
          {
            "RGS": {},
            "SERVICE": [],
            "GENERAL_RESOURCE": [],
            "LOCATION_RESOURCE": [
              {
                "AIL": {},
                "NTE": [
                  {"1": '1'},
                  {"2": '2'}
                ]
              }
            ],
            "PERSONNEL_RESOURCE": [
              {"AIP": {}}
            ]
          }
        ]
      };
    });

    tearDown(() {});

    /*
    test('should handle repeating optional segments (NTE)', () {
      json = {
        "MSH": {
          "9": {"1": "ORM", "2": "O01"}
        },
        "PATIENT": {
          "PID": {},
          "NTE": [
            {"1": 1, "3": []},
            {"1": 2, "3": []},
            {"1": 3, "3": []}
          ],
          "PATIENT_VISIT": {"PV1": {}},
          "INSURANCE": [
            {"IN1": {}}
          ],
          "GT1": {}
        },
        "ORDER": [
          {
            "ORC": {},
            "ORDER_DETAIL": {
              "OBRRQDRQ1RXOODSODT_SUPPGRP": {"OBR": {}},
              "NTE": [
                {"1": 1, "3": []},
                {"1": 2, "3": []},
                {"1": 3, "3": []}
              ],
              "DG1": [{}],
              "OBSERVATION": [
                {
                  "OBX": {},
                  "NTE": [
                    {"1": 1, "3": []},
                    {"1": 2, "3": []},
                    {"1": 3, "3": []}
                  ]
                }
              ]
            }
          }
        ]
      };

      final ret = generator.writeMessage(json: json);
      expect(
          ret,
          equals(
              'MSH\rPID\rNTE\rNTE\rNTE\rPV1\rIN1\rGT1\rORC\rOBR\rNTE\rNTE\rNTE\rDG1\rOBX\rNTE\rNTE\rNTE\r'));
    });
    */

    test('should throw an error if a required segment is missing', () {
      json.remove('SCH');

      expect(
          () => generator.write(json: json),
          throwsA(predicate((e) => e
              .toString()
              .contains('Message is missing required segment SCH'))));
    });

    test('should throw an error if a required group is missing', () {
      json.remove('RESOURCES');

      expect(
          () => generator.write(json: json),
          throwsA(predicate((e) => e
              .toString()
              .contains('Message is missing required group RESOURCES'))));
    });

    /*
    test('should handle ACK messages', () {
      final ackJSON = {
        "MSH": {
          "0": "MSH",
          "1": "|",
          "2": "^~\\&",
          "3": {"1": "MIRTH"},
          "5": {"1": "REDOX"},
          "6": {"1": "RDX"},
          "7": {"1": "20150915004731"},
          "9": {"1": "ACK", "2": "S12"},
          "10": "20150915004731",
          "11": {"1": "T"},
          "12": {"1": "2.3"}
        },
        "MSA": {"0": "MSA", "1": "AA", "2": "1"}
      };

      final ret = generator.writeMessage(json: ackJSON);
      expect(ret, equals('MSH\rMSA\r'));
    });
    */
  });
}
