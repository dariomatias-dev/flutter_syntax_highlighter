import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class MonokaiTheme extends SyntaxColorSchema {
  const MonokaiTheme()
    : super(
        baseColor: const Color(0xFFF8F8F2),
        lineNumberColor: const Color(0xFF8F908A),
        keywordColor: const Color(0xFFF92672),
        specialKeywordColor: const Color(0xFF66D9EF),
        storageModifierColor: const Color(0xFFF92672),
        typeColor: const Color(0xFF66D9EF),
        functionColor: const Color(0xFFA6E22E),
        literalColor: const Color(0xFFAE81FF),
        commentColor: const Color(0xFF75715E),
        punctuationColor: const Color(0xFFF8F8F2),
        stringColor: const Color(0xFFE6DB74),
        numberColor: const Color(0xFFAE81FF),
        bracket1Color: const Color(0xFFF8F8F2),
        bracket2Color: const Color(0xFFF92672),
        bracket3Color: const Color(0xFF66D9EF),
        variableColor: const Color(0xFFFD971F),
      );
}
