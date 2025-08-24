import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class GitHubDarkTheme extends SyntaxColorSchema {
  const GitHubDarkTheme()
    : super(
        baseColor: const Color(0xFFC9D1D9),
        lineNumberColor: const Color(0xFF484F58),
        keywordColor: const Color(0xFFFF7B72),
        specialKeywordColor: const Color(0xFFFF7B72),
        storageModifierColor: const Color(0xFFFF7B72),
        typeColor: const Color(0xFFFFA657),
        functionColor: const Color(0xFFD2A8FF),
        literalColor: const Color(0xFF79C0FF),
        commentColor: const Color(0xFF8B949E),
        punctuationColor: const Color(0xFFC9D1D9),
        stringColor: const Color(0xFFA5D6FF),
        numberColor: const Color(0xFF79C0FF),
        bracket1Color: const Color(0xFFC9D1D9),
        bracket2Color: const Color(0xFFFF7B72),
        bracket3Color: const Color(0xFFD2A8FF),
        variableColor: const Color(0xFFFFA657),
      );
}
