import 'package:hl7_v2/hl7_v2.dart';
import 'package:test/test.dart';

void main() {
  final hl7v2Message = HL7v2Message();
  final schema = hl7v2Message.schema;
  group('module: schema', () {
    for (final messageName in schema['messages'].keys) {
      test(
          'message definition $messageName contains no groups with distinct positional occurrences of the same segment that are not disambiguated',
          () {
        final messageDef = schema['messages'][messageName];
        for (final groupName in messageDef.keys) {
          final jsonKeysUsed = <String>{};
          for (final Map<String, String> element in messageDef[groupName]
              ['elements']) {
            final jsonKey =
                element['jsonKey'] ?? element['group'] ?? element['segment'];
            if (jsonKey == null) {
              // These message definitions seem incomplete...
              print(
                  'Found an element in group $groupName where the json key was undefined in $messageName');
              continue;
            }
            if (jsonKeysUsed.contains(jsonKey)) {
              throw Exception(
                  'Re-used json key $jsonKey within the same group $groupName in message $messageName');
            }
            jsonKeysUsed.add(jsonKey);
          }
        }
      });
    }
  });
}
