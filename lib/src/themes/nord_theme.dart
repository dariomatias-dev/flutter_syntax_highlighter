import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class NordTheme extends SyntaxColorSchema {
  const NordTheme()
    : super(
        baseStyle: const Color(0xFFD8DEE9),
        lineNumberStyle: const Color(0xFF4C566A),
        keywordStyle: const Color(0xFF81A1C1),
        specialKeywordStyle: const Color(0xFF81A1C1),
        storageModifierStyle: const Color(0xFF81A1C1),
        typeStyle: const Color(0xFF8FBCBB),
        functionStyle: const Color(0xFF88C0D0),
        literalStyle: const Color(0xFF81A1C1),
        commentStyle: const Color(0xFF4C566A),
        punctuationStyle: const Color(0xFFECEFF4),
        stringStyle: const Color(0xFFA3BE8C),
        numberStyle: const Color(0xFFB48EAD),
        bracket1Style: const Color(0xFFD8DEE9),
        bracket2Style: const Color(0xFF81A1C1),
        bracket3Style: const Color(0xFF8FBCBB),
        variableStyle: const Color(0xFFD8DEE9),
      );
}
