import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class StackOverflowDarkTheme extends SyntaxColorSchema {
  const StackOverflowDarkTheme()
    : super(
        baseColor: const Color(0xFFf7f7f7),
        lineNumberColor: const Color(0xFF9e9e9e),
        keywordColor: const Color(0xFF00aeff),
        specialKeywordColor: const Color(0xFF00aeff),
        storageModifierColor: const Color(0xFF00aeff),
        typeColor: const Color(0xFF00aeff),
        functionColor: const Color(0xFFf7f7f7),
        literalColor: const Color(0xFFd62f2f),
        commentColor: const Color(0xFF9e9e9e),
        punctuationColor: const Color(0xFFf7f7f7),
        stringColor: const Color(0xFFff8f00),
        numberColor: const Color(0xFFd62f2f),
        bracket1Color: const Color(0xFFf7f7f7),
        bracket2Color: const Color(0xFF00aeff),
        bracket3Color: const Color(0xFFd62f2f),
        variableColor: const Color(0xFFf7f7f7),
      );
}
