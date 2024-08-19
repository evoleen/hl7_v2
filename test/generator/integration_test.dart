import 'package:hl7_v2/src/parser/message.dart';
import 'package:test/test.dart';

void main() {
  final json = {
    "MSH": {
      "0": "MSH",
      "1": "|",
      "2": "^~&",
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
      "0": "EVN",
      "1": "P03",
      "6": {"1": "200909261607"}
    },
    "PID": {
      "0": "PID",
      "3": [
        {
          "1": "11401562",
          "2": "",
          "3": "",
          "4": {"1": "1013"},
          "5": "MRN"
        }
      ],
      "5": [
        {
          "1": {"1": "HALL"},
          "2": "MARCUS",
          "3": "A"
        }
      ],
      "7": {"1": "19341230"},
      "8": "F",
      "11": [
        {
          "1": {"1": "1234 Some Street"},
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
      "0": "PV1",
      "3": {"1": "NW4"},
      "7": [
        {
          "1": "2331",
          "2": {"1": "SEEGER, THOMAS"},
          "3": "A",
          "9": {"1": "1003"},
          "13": "PRN"
        }
      ],
      "19": {"1": "86210313010"},
      "44": {"1": "20150501"}
    },
    "FINANCIAL": [
      {
        "FT1": {
          "0": "FT1",
          "1": "1",
          "2": "691234",
          "4": {
            "1": {"1": "20090923"},
            "2": {"1": "20090923"}
          },
          "6": "CG",
          "7": {"1": "84460", "3": "PROC"},
          "10": "1",
          "11": {
            "1": {"1": "125.10"}
          },
          "13": {"1": "MED", "3": "SRCA"},
          "19": [
            {"1": "123.12", "3": "I9"}
          ],
          "20": [
            {
              "1": "2331",
              "2": {"1": "SEEGER"},
              "3": "THOMAS",
              "9": {"1": "NPI"},
              "10": "1003",
              "14": {"1": "PRN"}
            }
          ],
          "21": [
            {
              "1": "2335",
              "2": {"1": "COOPER"},
              "3": "GEORGE",
              "9": {"1": "NPI"},
              "10": "1003",
              "14": {"1": "PRN"}
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

  final outputHL7 =
      'MSH|^~\\&|HMS03|NCA|EPIC|NCA|200909261522||DFT^P03|152210|T|2.5|||||||||\r'
      'EVN|P03|||||200909261607|\r'
      'PID|||11401562^^^1013^MRN||HALL^MARCUS^A||19341230|F|||1234 Some Street^^Davis^CA^95616||800123456|||||SSC313010|05138985||||||||||||||||||||\r'
      'PV1|||NW4||||2331^SEEGER, THOMAS^A^^^^^^1003^^^^PRN||||||||||||86210313010|||||||||||||||||||||||||20150501||||||||\r'
      'FT1|1|691234||20090923^20090923||CG|84460^^PROC|||1|125.10||MED^^SRCA||||||123.12^^I9|2331^SEEGER^THOMAS^A^^^^^NPI^1003^^^^PRN|2335^COOPER^GEORGE^A^^^^^NPI^1003^^^^PRN||1024123||99213^Office Visit^ICD9|MOD1~MOD2|||61519-1234-12-01^NDC Description||\r';

  final ack =
      'MSH|^~\\&|MIRTH||REDOX|RDX|20150915004731||ACK^S12|20150915004731|T|2.3|||||||||\r'
      'MSA|AA|1||||\r';

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

  group('Generate an HL7 message', () {
    late HL7v2Message generator;

    setUp(() {
      generator = HL7v2Message(); // Assuming you have a class like this
    });

    test('should write an HL7 message', () {
      final hl7 = generator.writeMessage(json: json);
      expect(hl7, equals(outputHL7));
    });

    test('should write an ACK message', () {
      final hl7 = generator.writeMessage(json: ackJSON);
      expect(hl7, equals(ack));
    });

    test('should write using alternate delimiters', () {
      final generator = HL7v2Message(
        delimiters: {
          'field': '*',
          'component': '@',
          'repetition': '+',
          'subComponent': r'$',
          'escape': r'\\',
        },
      );
      final modifiedOutputHL7 = outputHL7
          .replaceAll('|', '*')
          .replaceAll('^', '@')
          .replaceAll('~', '+')
          .replaceAll('&', r'$');

      final Map<String, dynamic> json2 = Map.from(json);
      json2["MSH"]["1"] = '*';
      json2["MSH"]["2"] = '@+\\\$';

      final hl7 = generator.writeMessage(json: json2);
      expect(hl7, equals(modifiedOutputHL7));
    });

    test(
        'should write segments of the same type that occur in multiple places in the same group in the appropriate places',
        () {
      final jsonCopy = Map<String, dynamic>.from(json);
      final hl7 = generator.writeMessage(json: jsonCopy);

      final header = hl7
          .allMatches(r'MSH\|\^~\\&\|EPIC\|AcmeHeath\|\|\|20190131140825')
          .length;
      expect(header, equals(1));

      final rol1 = hl7
          .allMatches(r'ROL\|1\|UP\|GENERAL\|1194750331\^ROSENBERG\^DANIEL')
          .length;
      expect(rol1, equals(1));

      final rol2 =
          hl7.allMatches(r'ROL\|2\|UP\|NP\|1255688719\^NGUY\^SCOTT').length;
      expect(rol2, equals(1));
    });

    test(
        'should write segments correctly when an array is supplied and a single segment is expected',
        () {
      final json2 = Map<String, dynamic>.from(json);
      json2["EVN"] = [json2["EVN"], json2["EVN"]];
      final hl7 = generator.writeMessage(json: json2);

      final evn = hl7
          .allMatches(r'EVN\|A13\|20190131140825\|\|ADT\|20190131140825')
          .length;
      expect(evn, equals(1));

      final secondEvn = hl7
          .allMatches(r'EVN\|A14\|20190131140825\|\|ADT\|20190131140825')
          .length;
      expect(secondEvn, equals(0));
    });
  });
}
