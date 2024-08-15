class Escape {
  // The HL7 v2 escape characters
  static const String field = r'\F\'; // \F\
  static const String component = r'\S\'; // \S\
  static const String repetition = r'\R\'; // \R\
  static const String escape = r'\E\'; // \E\
  static const String subComponent = r'\T\'; // \T\

  /// Escapes the special characters in a string based on the HL7 delimiters
  static String? escapeString(Map<String, String> delimiters, String? str) {
    if (str == null || str.isEmpty) {
      return str;
    }

    return str
        .split(delimiters['escape']!)
        .join(escape) // Replace the escape character first
        .split(delimiters['field']!)
        .join(field)
        .split(delimiters['component']!)
        .join(component)
        .split(delimiters['repetition']!)
        .join(repetition)
        .split(delimiters['subComponent']!)
        .join(subComponent);
  }

  /// Unescapes the special characters in a string based on the HL7 delimiters
  static String? unEscapeString(Map<String, String> delimiters, String? str) {
    if (str == null || str.isEmpty) {
      return str;
    }

    return str
        .split(field)
        .join(delimiters['field']!)
        .split(component)
        .join(delimiters['component']!)
        .split(repetition)
        .join(delimiters['repetition']!)
        .split(subComponent)
        .join(delimiters['subComponent']!)
        .split(escape)
        .join(delimiters['escape']!); // Replace the escape character last
  }
}
