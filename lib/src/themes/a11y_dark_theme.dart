import 'package:flutter/material.dart';
import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class A11yDarkTheme extends SyntaxColorSchema {
  const A11yDarkTheme()
    : super(
        baseColor: const Color(0xFFfefefe),
        lineNumberColor: const Color(0xFF6f705e),
        keywordColor: const Color(0xFFd91e18),
        specialKeywordColor: const Color(0xFFd91e18),
        storageModifierColor: const Color(0xFFd91e18),
        typeColor: const Color(0xFFaa5d00),
        functionColor: const Color(0xFF7928a1),
        literalColor: const Color(0xFFaa5d00),
        commentColor: const Color(0xFF696969),
        punctuationColor: const Color(0xFFfefefe),
        stringColor: const Color(0xFF2b7600),
        numberColor: const Color(0xFFaa5d00),
        bracket1Color: const Color(0xFFfefefe),
        bracket2Color: const Color(0xFFd91e18),
        bracket3Color: const Color(0xFFaa5d00),
        variableColor: const Color(0xFFfefefe),
      );
}
