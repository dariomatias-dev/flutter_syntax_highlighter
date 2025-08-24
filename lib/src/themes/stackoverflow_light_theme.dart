import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class StackOverflowLightTheme extends SyntaxColorSchema {
  const StackOverflowLightTheme()
    : super(
        baseColor: const Color(0xFF2f3337),
        lineNumberColor: const Color(0xFF959595),
        keywordColor: const Color(0xFF0077aa),
        specialKeywordColor: const Color(0xFF0077aa),
        storageModifierColor: const Color(0xFF0077aa),
        typeColor: const Color(0xFF0077aa),
        functionColor: const Color(0xFF2f3337),
        literalColor: const Color(0xFFaa0000),
        commentColor: const Color(0xFF959595),
        punctuationColor: const Color(0xFF2f3337),
        stringColor: const Color(0xFFaa0000),
        numberColor: const Color(0xFFaa0000),
        bracket1Color: const Color(0xFF2f3337),
        bracket2Color: const Color(0xFF0077aa),
        bracket3Color: const Color(0xFFaa0000),
        variableColor: const Color(0xFF2f3337),
      );
}
