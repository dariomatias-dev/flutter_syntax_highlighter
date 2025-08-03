import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_theme.dart';

class LightHighContrastTheme extends SyntaxTheme {
  const LightHighContrastTheme()
    : super(
        baseStyle: const TextStyle(color: Color(0xFF333333)),
        lineNumberStyle: const TextStyle(color: Color(0xFF999999)),
        keywordStyle: const TextStyle(color: Color(0xFF0000FF)),
        specialKeywordStyle: const TextStyle(color: Color(0xFF0000FF)),
        storageModifierStyle: const TextStyle(color: Color(0xFFAF00DB)),
        typeStyle: const TextStyle(color: Color(0xFF267F99)),
        functionStyle: const TextStyle(color: Color(0xFF795E26)),
        literalStyle: const TextStyle(color: Color(0xFF0000FF)),
        commentStyle: const TextStyle(color: Color(0xFF008000)),
        punctuationStyle: const TextStyle(color: Color(0xFF333333)),
        stringStyle: const TextStyle(color: Color(0xFFA31515)),
        numberStyle: const TextStyle(color: Color(0xFF098658)),
        bracket1Style: const TextStyle(color: Color(0xFF795E26)),
        bracket2Style: const TextStyle(color: Color(0xFFAF00DB)),
        bracket3Style: const TextStyle(color: Color(0xFF333333)),
        variableStyle: const TextStyle(color: Color(0xFF001080)),
      );

  @override
  SyntaxTheme copyWithFontSize(double size) {
    return const LightHighContrastTheme();
  }
}