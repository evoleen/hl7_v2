import 'package:hl7_v2/hl7_v2.dart';
import 'package:test/test.dart';

final _delimiters = {
  'field': '|',
  'component': '^',
  'repetition': '~',
  'escape': '\\',
  'subComponent': '&',
};

void main() {
  group('module: escape', () {
    group('function: escapeString', () {
      test('should escape an RTF examples', () {
        expect(Escape.escapeString(_delimiters, '{\\rtf1\\sste1...'),
            equals('{\\E\\rtf1\\E\\sste1...'));
      });

      test('should escape everything...', () {
        expect(Escape.escapeString(_delimiters, 'MSH|^~\\&|'),
            equals('MSH\\F\\\\S\\\\R\\\\E\\\\T\\\\F\\'));
      });

      test('should handle special delimiters', () {
        var delims = {
          'field': 'f', // |
          'component': 'a', // ^
          'repetition': 'd', // ~
          'escape': 'e', // \
          'subComponent': 's' // &
        };
        expect(Escape.escapeString(delims, 'nicks cool fade'),
            equals('nick\\T\\ cool \\F\\\\S\\\\R\\\\E\\'));
      });
    });

    group('function: unEscapeString', () {
      test('should unescape an RTF examples', () {
        expect(Escape.unEscapeString(_delimiters, '{\\E\\rtf1\\E\\sste1...'),
            equals('{\\rtf1\\sste1...'));
      });

      test('should unescape everything...', () {
        expect(
            Escape.unEscapeString(
                _delimiters, 'MSH\\F\\\\S\\\\R\\\\E\\\\T\\\\F\\'),
            equals('MSH|^~\\&|'));
      });

      test('should unescape custom delimiters', () {
        var delims = {
          'field': 'f', // |
          'component': 'a', // ^
          'repetition': 'd', // ~
          'escape': 'e', // \
          'subComponent': 's' // &
        };
        expect(
            Escape.unEscapeString(
                delims, 'nick\\T\\ cool \\F\\\\S\\\\R\\\\E\\'),
            equals('nicks cool fade'));
      });
    });
  });
}
