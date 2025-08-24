import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class NordTheme extends SyntaxColorSchema {
  const NordTheme()
    : super(
        baseColor: const Color(0xFFD8DEE9),
        lineNumberColor: const Color(0xFF4C566A),
        keywordColor: const Color(0xFF81A1C1),
        specialKeywordColor: const Color(0xFF81A1C1),
        storageModifierColor: const Color(0xFF81A1C1),
        typeColor: const Color(0xFF8FBCBB),
        functionColor: const Color(0xFF88C0D0),
        literalColor: const Color(0xFF81A1C1),
        commentColor: const Color(0xFF4C566A),
        punctuationColor: const Color(0xFFECEFF4),
        stringColor: const Color(0xFFA3BE8C),
        numberColor: const Color(0xFFB48EAD),
        bracket1Color: const Color(0xFFD8DEE9),
        bracket2Color: const Color(0xFF81A1C1),
        bracket3Color: const Color(0xFF8FBCBB),
        variableColor: const Color(0xFFD8DEE9),
      );
}
