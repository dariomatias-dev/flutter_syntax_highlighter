import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class PandaSyntaxTheme extends SyntaxColorSchema {
  const PandaSyntaxTheme()
    : super(
        baseStyle: const Color(0xFFE6E6E6),
        lineNumberStyle: const Color(0xFF676B79),
        keywordStyle: const Color(0xFFFF75B5),
        specialKeywordStyle: const Color(0xFFFF75B5),
        storageModifierStyle: const Color(0xFFFF75B5),
        typeStyle: const Color(0xFF19F9D8),
        functionStyle: const Color(0xFFFFB86C),
        literalStyle: const Color(0xFFFF9AC1),
        commentStyle: const Color(0xFF676B79),
        punctuationStyle: const Color(0xFFE6E6E6),
        stringStyle: const Color(0xFFFFB86C),
        numberStyle: const Color(0xFFFF9AC1),
        bracket1Style: const Color(0xFFE6E6E6),
        bracket2Style: const Color(0xFFFF75B5),
        bracket3Style: const Color(0xFF19F9D8),
        variableStyle: const Color(0xFFB084EB),
      );
}
