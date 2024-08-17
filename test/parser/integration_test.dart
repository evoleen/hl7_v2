import 'package:hl7_v2/src/parser/message.dart';
import 'package:test/test.dart';
import 'dart:convert';

void main() {
  group('Parse an HL7 message', () {
    late HL7v2Message parser;
    Map<String, dynamic> outputJSON = {
      "MSH": {
        "1": "|",
        "2": "^~\\&",
        "3": {"1": "HMS03"},
        "4": {"1": "NCA"},
        "5": {"1": "EPIC"},
        "6": {"1": "NCA"},
        "7": {"1": "200909261522"},
        "9": {"1": "DFT", "2": "P03"},
        "10": "152210",
        "11": {"1": "T"},
        "12": {"1": "2.5"}
      },
      "EVN": {
        "1": "P03",
        "6": {"1": "200909261607"}
      },
      "PID": {
        "3": [
          {
            "1": "11401562",
            "2": "",
            "3": "",
            "4": {"1": "1013", "2": null, "3": null},
            "5": "MRN"
          }
        ],
        "5": [
          {
            "1": {"1": "HALL", "2": null, "3": null, "4": null, "5": null},
            "2": "MARCUS",
            "3": "A"
          }
        ],
        "7": {"1": "19341230"},
        "8": "F",
        "11": [
          {
            "1": {"1": "1234 Some Street", "2": null, "3": null},
            "2": "",
            "3": "Davis",
            "4": "CA",
            "5": "95616"
          }
        ],
        "13": [
          {"1": "800123456"}
        ],
        "18": {"1": "SSC313010"},
        "19": "05138985"
      },
      "PV1": {
        "3": {"1": "NW4"},
        "7": [
          {
            "1": "2331",
            "2": {
              "1": "SEEGER, THOMAS",
              "2": null,
              "3": null,
              "4": null,
              "5": null
            },
            "3": "A",
            "4": "",
            "5": "",
            "6": "",
            "7": "",
            "8": "",
            "9": {"1": "1003", "2": null, "3": null},
            "10": "",
            "11": "",
            "12": "",
            "13": "PRN"
          }
        ],
        "19": {"1": "86210313010"},
        "44": {"1": "20150501"}
      },
      "FINANCIAL": [
        {
          "FT1": {
            "1": "1",
            "2": "691234",
            "4": {
              "1": {"1": "20090923", "2": null},
              "2": {"1": "20090923", "2": null}
            },
            "6": "CG",
            "7": {"1": "84460", "2": "", "3": "PROC"},
            "10": "1",
            "11": {
              "1": {"1": "125.10", "2": null}
            },
            "13": {"1": "MED", "2": "", "3": "SRCA"},
            "19": [
              {"1": "123.12", "2": "", "3": "I9"}
            ],
            "20": [
              {
                "1": "2331",
                "2": {
                  "1": "SEEGER",
                  "2": null,
                  "3": null,
                  "4": null,
                  "5": null
                },
                "3": "THOMAS",
                "4": "A",
                "5": "",
                "6": "",
                "7": "",
                "8": "",
                "9": {"1": "NPI", "2": null, "3": null},
                "10": "1003",
                "11": "",
                "12": "",
                "13": "",
                "14": {"1": "PRN", "2": null, "3": null}
              }
            ],
            "21": [
              {
                "1": "2335",
                "2": {
                  "1": "COOPER",
                  "2": null,
                  "3": null,
                  "4": null,
                  "5": null
                },
                "3": "GEORGE",
                "4": "A",
                "5": "",
                "6": "",
                "7": "",
                "8": "",
                "9": {"1": "NPI", "2": null, "3": null},
                "10": "1003",
                "11": "",
                "12": "",
                "13": "",
                "14": {"1": "PRN", "2": null, "3": null}
              }
            ],
            "23": {"1": "1024123"},
            "25": {"1": "99213", "2": "Office Visit", "3": "ICD9"},
            "26": [
              {"1": "MOD1"},
              {"1": "MOD2"}
            ],
            "29": {"1": "61519-1234-12-01", "2": "NDC Description"}
          }
        }
      ]
    };

    Map<String, dynamic> ackJSON = {
      "MSH": {
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
      "MSA": {"1": "AA", "2": "1"}
    };

    final hl7 =
        '''MSH|^~\\&|HMS03|NCA|EPIC|NCA|200909261522||DFT^P03|152210|T|2.5|||||||||
EVN|P03|||||200909261607|
PID|||11401562^^^1013^MRN||HALL^MARCUS^A||19341230|F|||1234 Some Street^^Davis^CA^95616||800123456|||||SSC313010|05138985||||||||||||||||||||
PV1|||NW4||||2331^SEEGER, THOMAS^A^^^^^^1003^^^^PRN||||||||||||86210313010|||||||||||||||||||||||||20150501||||||||
FT1|1|691234||20090923^20090923||CG|84460^^PROC|||1|125.10||MED^^SRCA||||||123.12^^I9|2331^SEEGER^THOMAS^A^^^^^NPI^1003^^^^PRN|2335^COOPER^GEORGE^A^^^^^NPI^1003^^^^PRN||1024123||99213^Office Visit^ICD9|MOD1~MOD2|||61519-1234-12-01^NDC Description||''';

    setUp(() {
      parser = HL7v2Message();
    });

    test('should parse an HL7 message', () {
      var json = parser.parse(hl7);
      expect(json, equals(outputJSON));
    });

    test('should parse an ACK message', () {
      String ack =
          '''MSH|^~\\&|MIRTH||REDOX|RDX|20150915004731||ACK^S12|20150915004731|T|2.3
MSA|AA|1''';

      var json = parser.parse(ack);
      expect(json, equals(ackJSON));
    });

    test('should handle non-standard delimiters', () {
      final modifiedhl7 = hl7
          .replaceAll('|', '*')
          .replaceAll('^', '@')
          .replaceAll('~', '+')
          .replaceAll('&', r'$');

      var json = parser.parse(modifiedhl7);

      var expected = Map<String, dynamic>.from(outputJSON);
      expected['MSH']['1'] = '*';
      expected['MSH']['2'] = '@+\\\$';

      expect(json, equals(expected));
    });

    test(
        'should handle the same segment in different places in the same parent group',
        () {
      final hl7 = '''
        MSH|^~\\&|EPIC|AcmeHeath|||20190131140825|JFARNHAM|ADT^A13|17715|T|2.3
        EVN|A13|20190131140825||ADT|JFARNHAM^FARNHAM^JACOB^^^^^^SW^^^^^RRCE|20181231110700
        PID|||740001776^^^AMRN^AMRN~1003132339^^^EID^EID||OPTIMEOBTEST^WAHH||19881228|F|||111 TEST ST^^TEMPLE^TX^76501^USA^P^^BELL|BELL|(254)555-5555^P^PH^^^254^5555555~^NET^Internet^devpatient.male@example.io
        PD1|||Acme Health^^1034001|130991^CHANG^SARAH^ANNE^^^^^EPIC^^^^PROVID
        ROL|1|UP|GENERAL|1194750331^ROSENBERG^DANIEL^^^^^^EPIC^^^^PNPI~20255^ROSENBERG^DANIEL^^^^^^OR STAR SER^^^^OR STAR SER~1188^ROSENBERG^DANIEL^^^^^^CL CENT SER^^^^CL CENT SER~1000220^ROSENBERG^DANIEL^^^^^^PROVPID^^^^PPID|20190925||||GENERAL||1321 NE 99TH AVE. STE 200^^PORTLAND^OR^97220^|(503)215-4250^^W^^^503^2154250
        PV1||INPATIENT|WHHPP^2101^01^TEH^R^^^^^^DEPID|EL|||01164^BEAIRD^MARK^ALAN^^^^^EPIC^^^^PROVID|||Obstetrics||||Phys/Clinic|||01164^BEAIRD^MARK^ALAN^^^^^EPIC^^^^PROVID||90000000083|||||||||||||||||||||||||20181228101200|||16429.19
        PV2|||||||||20181231|3
        ROL|2|UP|NP|1255688719^NGUY^SCOTT^^^^^^EPIC^^^^PNPI~54004^NGUY^SCOTT^^^^^^OR STAR SER^^^^OR STAR SER~1204658^NGUY^SCOTT^^^^^^PROVPID^^^^PPID|20191001102337||||||15640 NW LAIDLAW RD, STE 102^^PORTLAND^^^USA|(503)764-0100^^W^^^503^7640100~(503)536-4260^^FAX^^^503^5364260
        DG1||AB|Z34.93^Encounter for supervision of normal pregnancy, unspecified, third trimester^ABF|Encounter for supervision of normal pregnancy, unspecified, third trimester||^1
      '''
          .replaceAll('\n        ', '\r')
          .trim();

      var ret = parser.parse(hl7);
      var retAsString = jsonEncode(
          ret); // Convert the output JSON to a string for easy assertion

      expect(retAsString, contains('ROSENBERG'),
          reason:
              'Expected output JSON to include the last name "ROSENBERG" which only appears in the ROL after PD1');
      expect(retAsString, contains('NGUY'),
          reason:
              'Expected output JSON to include the last name "NGUY" which only appears in the ROL after PV2');
      expect(retAsString,
          contains('Encounter for supervision of normal pregnancy'),
          reason:
              'Expected output JSON to include the phrase "Encounter for supervision of normal pregnancy" which only appears in the DG1 after the second ROL');
    });
  });
}
