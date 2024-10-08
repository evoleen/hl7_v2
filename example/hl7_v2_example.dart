import 'package:hl7_v2/hl7_v2.dart';

Future<void> main() async {
  final hl7Message = HL7v2Message();

  //
  // The code below is an example how to generate the Dart code out of the
  // original JSON schema. You can make use of the original schema by
  // using loadSchema()
  //
  // final schema = hl7Message.loadSchema(schemaBaseDirectory: './schema');
  // await hl7Message.writeDartJsonSchema(
  //     schema: schema, schemaBaseDirectory: './schema');

  print(hl7Message.parse(
      '''MSH|^~&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB, INC.|GOOD HEALTHHOSPITAL|201808181126|SECURITY|ADT^A01^ADT_A01|MSG00001|P|2.7|
EVN|A01|201808181123||
PID|1||PATID1234^5^M11^ADT1^MR^GOOD HEALTHHOSPITAL~123456789^^^USSSA^SS||EVERYMAN^ADAM^A^III||19610615|M||C|2222 HOMESTREET^^GREENSBORO^NC^27401-1020|GL|(555) 555-2004|(555)555-2004||S||PATID12345001^2^M10^ADT1^AN^A|444333333|987654^NC|
NK1|1|NUCLEAR^NELDA^W|SPO^SPOUSE||||NK^NEXT OF KIN
PV1|1|I|2000^2012^01||||004777^ATTEND^AARON^A|||SUR||||ADM|A0|'''));
}
