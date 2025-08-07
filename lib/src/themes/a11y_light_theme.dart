import 'package:flutter/material.dart';
import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class A11yLightTheme extends SyntaxColorSchema {
  const A11yLightTheme()
    : super(
        baseStyle: const Color(0xFF545454),
        lineNumberStyle: const Color(0xFF6f705e),
        keywordStyle: const Color(0xFFd91e18),
        specialKeywordStyle: const Color(0xFFd91e18),
        storageModifierStyle: const Color(0xFFd91e18),
        typeStyle: const Color(0xFF007faa),
        functionStyle: const Color(0xFF7928a1),
        literalStyle: const Color(0xFFaa5d00),
        commentStyle: const Color(0xFF696969),
        punctuationStyle: const Color(0xFF545454),
        stringStyle: const Color(0xFF6a8759),
        numberStyle: const Color(0xFFaa5d00),
        bracket1Style: const Color(0xFF545454),
        bracket2Style: const Color(0xFFd91e18),
        bracket3Style: const Color(0xFF007faa),
        variableStyle: const Color(0xFF545454),
      );
}
