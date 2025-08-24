import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class DraculaTheme extends SyntaxColorSchema {
  const DraculaTheme()
    : super(
        baseColor: const Color(0xFFF8F8F2),
        lineNumberColor: const Color(0xFF6272A4),
        keywordColor: const Color(0xFFFF79C6),
        specialKeywordColor: const Color(0xFFFF79C6),
        storageModifierColor: const Color(0xFFFF79C6),
        typeColor: const Color(0xFF8BE9FD),
        functionColor: const Color(0xFF50FA7B),
        literalColor: const Color(0xFFBD93F9),
        commentColor: const Color(0xFF6272A4),
        punctuationColor: const Color(0xFFF8F8F2),
        stringColor: const Color(0xFFF1FA8C),
        numberColor: const Color(0xFFBD93F9),
        bracket1Color: const Color(0xFFF8F8F2),
        bracket2Color: const Color(0xFFFF79C6),
        bracket3Color: const Color(0xFF8BE9FD),
        variableColor: const Color(0xFFFFB86C),
      );
}
