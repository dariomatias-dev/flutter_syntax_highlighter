import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class SolarizedLightTheme extends SyntaxColorSchema {
  const SolarizedLightTheme()
    : super(
        baseColor: const Color(0xFF657b83),
        lineNumberColor: const Color(0xFF93a1a1),
        keywordColor: const Color(0xFF859900),
        specialKeywordColor: const Color(0xFFcb4b16),
        storageModifierColor: const Color(0xFF859900),
        typeColor: const Color(0xFFb58900),
        functionColor: const Color(0xFF268bd2),
        literalColor: const Color(0xFFd33682),
        commentColor: const Color(0xFF93a1a1),
        punctuationColor: const Color(0xFF657b83),
        stringColor: const Color(0xFF2aa198),
        numberColor: const Color(0xFFd33682),
        bracket1Color: const Color(0xFF657b83),
        bracket2Color: const Color(0xFF859900),
        bracket3Color: const Color(0xFFb58900),
        variableColor: const Color(0xFF268bd2),
      );
}
