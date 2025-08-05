import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class StackOverflowLightTheme extends SyntaxColorSchema {
  const StackOverflowLightTheme()
    : super(
        baseStyle: const Color(0xFF2f3337),
        lineNumberStyle: const Color(0xFF959595),
        keywordStyle: const Color(0xFF0077aa),
        specialKeywordStyle: const Color(0xFF0077aa),
        storageModifierStyle: const Color(0xFF0077aa),
        typeStyle: const Color(0xFF0077aa),
        functionStyle: const Color(0xFF2f3337),
        literalStyle: const Color(0xFFaa0000),
        commentStyle: const Color(0xFF959595),
        punctuationStyle: const Color(0xFF2f3337),
        stringStyle: const Color(0xFFaa0000),
        numberStyle: const Color(0xFFaa0000),
        bracket1Style: const Color(0xFF2f3337),
        bracket2Style: const Color(0xFF0077aa),
        bracket3Style: const Color(0xFFaa0000),
        variableStyle: const Color(0xFF2f3337),
      );
}
