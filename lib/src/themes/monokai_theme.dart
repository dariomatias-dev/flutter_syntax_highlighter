import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class MonokaiTheme extends SyntaxColorSchema {
  const MonokaiTheme()
    : super(
        baseStyle: const Color(0xFFF8F8F2),
        lineNumberStyle: const Color(0xFF8F908A),
        keywordStyle: const Color(0xFFF92672),
        specialKeywordStyle: const Color(0xFF66D9EF),
        storageModifierStyle: const Color(0xFFF92672),
        typeStyle: const Color(0xFF66D9EF),
        functionStyle: const Color(0xFFA6E22E),
        literalStyle: const Color(0xFFAE81FF),
        commentStyle: const Color(0xFF75715E),
        punctuationStyle: const Color(0xFFF8F8F2),
        stringStyle: const Color(0xFFE6DB74),
        numberStyle: const Color(0xFFAE81FF),
        bracket1Style: const Color(0xFFF8F8F2),
        bracket2Style: const Color(0xFFF92672),
        bracket3Style: const Color(0xFF66D9EF),
        variableStyle: const Color(0xFFFD971F),
      );
}
