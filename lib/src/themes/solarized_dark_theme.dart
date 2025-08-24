import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class SolarizedDarkTheme extends SyntaxColorSchema {
  const SolarizedDarkTheme()
    : super(
        baseColor: const Color(0xFF839496),
        lineNumberColor: const Color(0xFF586e75),
        keywordColor: const Color(0xFF859900),
        specialKeywordColor: const Color(0xFFcb4b16),
        storageModifierColor: const Color(0xFF859900),
        typeColor: const Color(0xFFb58900),
        functionColor: const Color(0xFF268bd2),
        literalColor: const Color(0xFFd33682),
        commentColor: const Color(0xFF586e75),
        punctuationColor: const Color(0xFF839496),
        stringColor: const Color(0xFF2aa198),
        numberColor: const Color(0xFFd33682),
        bracket1Color: const Color(0xFF839496),
        bracket2Color: const Color(0xFF859900),
        bracket3Color: const Color(0xFFb58900),
        variableColor: const Color(0xFF268bd2),
      );
}
