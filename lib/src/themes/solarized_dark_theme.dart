import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class SolarizedDarkTheme extends SyntaxColorSchema {
  const SolarizedDarkTheme()
    : super(
        baseStyle: const Color(0xFF839496),
        lineNumberStyle: const Color(0xFF586e75),
        keywordStyle: const Color(0xFF859900),
        specialKeywordStyle: const Color(0xFFcb4b16),
        storageModifierStyle: const Color(0xFF859900),
        typeStyle: const Color(0xFFb58900),
        functionStyle: const Color(0xFF268bd2),
        literalStyle: const Color(0xFFd33682),
        commentStyle: const Color(0xFF586e75),
        punctuationStyle: const Color(0xFF839496),
        stringStyle: const Color(0xFF2aa198),
        numberStyle: const Color(0xFFd33682),
        bracket1Style: const Color(0xFF839496),
        bracket2Style: const Color(0xFF859900),
        bracket3Style: const Color(0xFFb58900),
        variableStyle: const Color(0xFF268bd2),
      );
}
