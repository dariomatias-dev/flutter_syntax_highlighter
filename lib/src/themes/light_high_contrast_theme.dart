import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class LightHighContrastTheme extends SyntaxColorSchema {
  const LightHighContrastTheme()
    : super(
        baseStyle: const Color(0xFF333333),
        lineNumberStyle: const Color(0xFF999999),
        keywordStyle: const Color(0xFF0000FF),
        specialKeywordStyle: const Color(0xFF0000FF),
        storageModifierStyle: const Color(0xFFAF00DB),
        typeStyle: const Color(0xFF267F99),
        functionStyle: const Color(0xFF795E26),
        literalStyle: const Color(0xFF0000FF),
        commentStyle: const Color(0xFF008000),
        punctuationStyle: const Color(0xFF333333),
        stringStyle: const Color(0xFFA31515),
        numberStyle: const Color(0xFF098658),
        bracket1Style: const Color(0xFF795E26),
        bracket2Style: const Color(0xFFAF00DB),
        bracket3Style: const Color(0xFF333333),
        variableStyle: const Color(0xFF001080),
      );
}
