import 'package:flutter/material.dart';
import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class A11yLightTheme extends SyntaxColorSchema {
  const A11yLightTheme()
    : super(
        baseColor: const Color(0xFF545454),
        lineNumberColor: const Color(0xFF6f705e),
        keywordColor: const Color(0xFFd91e18),
        specialKeywordColor: const Color(0xFFd91e18),
        storageModifierColor: const Color(0xFFd91e18),
        typeColor: const Color(0xFF007faa),
        functionColor: const Color(0xFF7928a1),
        literalColor: const Color(0xFFaa5d00),
        commentColor: const Color(0xFF696969),
        punctuationColor: const Color(0xFF545454),
        stringColor: const Color(0xFF6a8759),
        numberColor: const Color(0xFFaa5d00),
        bracket1Color: const Color(0xFF545454),
        bracket2Color: const Color(0xFFd91e18),
        bracket3Color: const Color(0xFF007faa),
        variableColor: const Color(0xFF545454),
      );
}
