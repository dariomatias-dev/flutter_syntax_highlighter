import 'package:flutter/material.dart';
import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class A11yDarkTheme extends SyntaxColorSchema {
  const A11yDarkTheme()
    : super(
        baseStyle: const Color(0xFFfefefe),
        lineNumberStyle: const Color(0xFF6f705e),
        keywordStyle: const Color(0xFFd91e18),
        specialKeywordStyle: const Color(0xFFd91e18),
        storageModifierStyle: const Color(0xFFd91e18),
        typeStyle: const Color(0xFFaa5d00),
        functionStyle: const Color(0xFF7928a1),
        literalStyle: const Color(0xFFaa5d00),
        commentStyle: const Color(0xFF696969),
        punctuationStyle: const Color(0xFFfefefe),
        stringStyle: const Color(0xFF2b7600),
        numberStyle: const Color(0xFFaa5d00),
        bracket1Style: const Color(0xFFfefefe),
        bracket2Style: const Color(0xFFd91e18),
        bracket3Style: const Color(0xFFaa5d00),
        variableStyle: const Color(0xFFfefefe),
      );
}
