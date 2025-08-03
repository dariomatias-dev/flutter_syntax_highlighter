import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_theme.dart';

class DarkHighContrastTheme extends SyntaxTheme {
  const DarkHighContrastTheme()
    : super(
        baseStyle: const TextStyle(color: Color(0xFFAEDCFF)),
        lineNumberStyle: const TextStyle(color: Color(0xFF9E9E9E)),
        keywordStyle: const TextStyle(color: Color(0xFF569CD6)),
        specialKeywordStyle: const TextStyle(color: Color(0xFF569CD6)),
        storageModifierStyle: const TextStyle(color: Color(0xFFD670D6)),
        typeStyle: const TextStyle(color: Color(0xFF4EE2D0)),
        functionStyle: const TextStyle(color: Color(0xFFE6E69A)),
        literalStyle: const TextStyle(color: Color(0xFF55AFFF)),
        commentStyle: const TextStyle(color: Color(0xFF70B855)),
        punctuationStyle: const TextStyle(color: Color(0xFFE0E0E0)),
        stringStyle: const TextStyle(color: Color(0xFFDE9378)),
        numberStyle: const TextStyle(color: Color(0xFFB9DBA8)),
        bracket1Style: const TextStyle(color: Color(0xFFE6E69A)),
        bracket2Style: const TextStyle(color: Color(0xFFD670D6)),
        bracket3Style: const TextStyle(color: Color(0xFFAEDCFF)),
        variableStyle: const TextStyle(color: Color(0xFF9CDCFE)),
      );

  @override
  SyntaxTheme copyWithFontSize(double size) {
    return const DarkHighContrastTheme();
  }
}
