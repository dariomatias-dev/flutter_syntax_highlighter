import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class A11yDarkTheme extends SyntaxColorSchema {
  const A11yDarkTheme()
    : super(
        baseStyle: const Color(0xFFf8f8f2),
        lineNumberStyle: const Color(0xFF6f705e),
        keywordStyle: const Color(0xFFff79c6),
        specialKeywordStyle: const Color(0xFFff79c6),
        storageModifierStyle: const Color(0xFFff79c6),
        typeStyle: const Color(0xFF8be9fd),
        functionStyle: const Color(0xFF50fa7b),
        literalStyle: const Color(0xFFbd93f9),
        commentStyle: const Color(0xFF6272a4),
        punctuationStyle: const Color(0xFFf8f8f2),
        stringStyle: const Color(0xFFf1fa8c),
        numberStyle: const Color(0xFFbd93f9),
        bracket1Style: const Color(0xFFf8f8f2),
        bracket2Style: const Color(0xffff79c6),
        bracket3Style: const Color(0xFF8be9fd),
        variableStyle: const Color(0xFFf8f8f2),
      );
}
