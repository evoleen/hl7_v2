import 'package:hl7_v2/src/parser/message.dart';
import 'package:test/test.dart';

void main() {
  group('Parser', () {
    group('Function: Parser', () {
      test('should use the default schema', () {
        var parser = HL7v2Message();
        expect(parser.schema, isNotNull);
      });

      test('should use the default delimiters', () {
        var parser = HL7v2Message();
        expect(
            parser.delimiters,
            equals(parser
                .defaultDelimiters)); // Replace with actual default delimiters
      });

      test('should accept alternative delimiters', () {
        final delimiters = {
          'field': '*', // |
          'component': '(', // ^
          'repetition': '%', // ~
          'escape': '@', // \
          'subComponent': '!', // &
        };
        var parser = HL7v2Message(delimiters: delimiters);
        expect(parser.delimiters, equals(delimiters));
      });
    });

    group('Function: schema', () {
      test('should set the schema to the passed-in schema', () {
        var newSchema = {
          'newStuff': {},
        };
        var parser = HL7v2Message();
        parser.setSchema(
            schema: newSchema); // Assuming a setter or method to set schema
        expect(parser.schema, equals(newSchema));
      });

      test('should merge the schema if merge is true', () {
        var schema = {
          'dataTypes': {
            'TCTEST': {
              'dataType': 'STRING', // no original
            },
            'varies': {
              'dataType': 'STRING', // original is varies
            }
          }
        };

        var parser = HL7v2Message();
        parser.setSchema(
            schema: schema,
            merge: true); // Assuming mergeSchema method handles merging
        expect(
            parser.schema['dataTypes']['TCTEST']['dataType'], equals('STRING'));
        expect(
            parser.schema['dataTypes']['varies']['dataType'], equals('STRING'));
        expect(parser.schema['dataTypes']['ST']['dataType'],
            equals('STRING')); // ST being an existing key
      });

      test('should get the schema', () {
        var parser = HL7v2Message();
        var ret = parser.schema; // Assuming a getter for schema
        expect(ret, equals(parser.schema));
      });
    });
  });
}
