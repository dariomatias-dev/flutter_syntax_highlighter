import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class XcodeDarkTheme extends SyntaxColorSchema {
  const XcodeDarkTheme()
    : super(
        baseColor: const Color(0xFFD1D1D1),
        lineNumberColor: const Color(0xFF6C7986),
        keywordColor: const Color(0xFFFF5284),
        specialKeywordColor: const Color(0xFFFF5284),
        storageModifierColor: const Color(0xFFFF5284),
        typeColor: const Color(0xFF5DD8FF),
        functionColor: const Color(0xFFDDBB87),
        literalColor: const Color(0xFFC699FF),
        commentColor: const Color(0xFF6C7986),
        punctuationColor: const Color(0xFFD1D1D1),
        stringColor: const Color(0xFFFF4F4F),
        numberColor: const Color(0xFFC699FF),
        bracket1Color: const Color(0xFFD1D1D1),
        bracket2Color: const Color(0xFFFF5284),
        bracket3Color: const Color(0xFF5DD8FF),
        variableColor: const Color(0xFF9ED8FF),
      );
}
