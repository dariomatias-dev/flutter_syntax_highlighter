import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class DraculaTheme extends SyntaxColorSchema {
  const DraculaTheme()
    : super(
        baseStyle: const Color(0xFFF8F8F2),
        lineNumberStyle: const Color(0xFF6272A4),
        keywordStyle: const Color(0xFFFF79C6),
        specialKeywordStyle: const Color(0xFFFF79C6),
        storageModifierStyle: const Color(0xFFFF79C6),
        typeStyle: const Color(0xFF8BE9FD),
        functionStyle: const Color(0xFF50FA7B),
        literalStyle: const Color(0xFFBD93F9),
        commentStyle: const Color(0xFF6272A4),
        punctuationStyle: const Color(0xFFF8F8F2),
        stringStyle: const Color(0xFFF1FA8C),
        numberStyle: const Color(0xFFBD93F9),
        bracket1Style: const Color(0xFFF8F8F2),
        bracket2Style: const Color(0xFFFF79C6),
        bracket3Style: const Color(0xFF8BE9FD),
        variableStyle: const Color(0xFFFFB86C),
      );
}
