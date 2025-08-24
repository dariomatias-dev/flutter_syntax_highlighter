import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class PandaSyntaxTheme extends SyntaxColorSchema {
  const PandaSyntaxTheme()
    : super(
        baseColor: const Color(0xFFE6E6E6),
        lineNumberColor: const Color(0xFF676B79),
        keywordColor: const Color(0xFFFF75B5),
        specialKeywordColor: const Color(0xFFFF75B5),
        storageModifierColor: const Color(0xFFFF75B5),
        typeColor: const Color(0xFF19F9D8),
        functionColor: const Color(0xFFFFB86C),
        literalColor: const Color(0xFFFF9AC1),
        commentColor: const Color(0xFF676B79),
        punctuationColor: const Color(0xFFE6E6E6),
        stringColor: const Color(0xFFFFB86C),
        numberColor: const Color(0xFFFF9AC1),
        bracket1Color: const Color(0xFFE6E6E6),
        bracket2Color: const Color(0xFFFF75B5),
        bracket3Color: const Color(0xFF19F9D8),
        variableColor: const Color(0xFFB084EB),
      );
}
