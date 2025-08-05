import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class StackOverflowDarkTheme extends SyntaxColorSchema {
  const StackOverflowDarkTheme()
    : super(
        baseStyle: const Color(0xFFf7f7f7),
        lineNumberStyle: const Color(0xFF9e9e9e),
        keywordStyle: const Color(0xFF00aeff),
        specialKeywordStyle: const Color(0xFF00aeff),
        storageModifierStyle: const Color(0xFF00aeff),
        typeStyle: const Color(0xFF00aeff),
        functionStyle: const Color(0xFFf7f7f7),
        literalStyle: const Color(0xFFd62f2f),
        commentStyle: const Color(0xFF9e9e9e),
        punctuationStyle: const Color(0xFFf7f7f7),
        stringStyle: const Color(0xFFff8f00),
        numberStyle: const Color(0xFFd62f2f),
        bracket1Style: const Color(0xFFf7f7f7),
        bracket2Style: const Color(0xFF00aeff),
        bracket3Style: const Color(0xFFd62f2f),
        variableStyle: const Color(0xFFf7f7f7),
      );
}
