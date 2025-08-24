import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class LightHighContrastTheme extends SyntaxColorSchema {
  const LightHighContrastTheme()
    : super(
        baseColor: const Color(0xFF333333),
        lineNumberColor: const Color(0xFF999999),
        keywordColor: const Color(0xFF0000FF),
        specialKeywordColor: const Color(0xFF0000FF),
        storageModifierColor: const Color(0xFFAF00DB),
        typeColor: const Color(0xFF267F99),
        functionColor: const Color(0xFF795E26),
        literalColor: const Color(0xFF0000FF),
        commentColor: const Color(0xFF008000),
        punctuationColor: const Color(0xFF333333),
        stringColor: const Color(0xFFA31515),
        numberColor: const Color(0xFF098658),
        bracket1Color: const Color(0xFF795E26),
        bracket2Color: const Color(0xFFAF00DB),
        bracket3Color: const Color(0xFF333333),
        variableColor: const Color(0xFF001080),
      );
}
