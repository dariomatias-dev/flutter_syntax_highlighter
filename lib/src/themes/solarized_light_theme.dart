import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class SolarizedLightTheme extends SyntaxColorSchema {
  const SolarizedLightTheme()
    : super(
        baseStyle: const Color(0xFF657b83),
        lineNumberStyle: const Color(0xFF93a1a1),
        keywordStyle: const Color(0xFF859900),
        specialKeywordStyle: const Color(0xFFcb4b16),
        storageModifierStyle: const Color(0xFF859900),
        typeStyle: const Color(0xFFb58900),
        functionStyle: const Color(0xFF268bd2),
        literalStyle: const Color(0xFFd33682),
        commentStyle: const Color(0xFF93a1a1),
        punctuationStyle: const Color(0xFF657b83),
        stringStyle: const Color(0xFF2aa198),
        numberStyle: const Color(0xFFd33682),
        bracket1Style: const Color(0xFF657b83),
        bracket2Style: const Color(0xFF859900),
        bracket3Style: const Color(0xFFb58900),
        variableStyle: const Color(0xFF268bd2),
      );
}
