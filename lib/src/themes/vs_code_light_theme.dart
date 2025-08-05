import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class VSCodeLightTheme extends SyntaxColorSchema {
  const VSCodeLightTheme()
    : super(
        baseStyle: const Color(0xFF000000),
        lineNumberStyle: const Color(0xFF2b91af),
        keywordStyle: const Color(0xFF0000ff),
        specialKeywordStyle: const Color(0xFF0000ff),
        storageModifierStyle: const Color(0xFF0000ff),
        typeStyle: const Color(0xFF2b91af),
        functionStyle: const Color(0xFF000000),
        literalStyle: const Color(0xFF0000ff),
        commentStyle: const Color(0xFF008000),
        punctuationStyle: const Color(0xFF000000),
        stringStyle: const Color(0xFFa31515),
        numberStyle: const Color(0xFF0000ff),
        bracket1Style: const Color(0xFF000000),
        bracket2Style: const Color(0xFF0000ff),
        bracket3Style: const Color(0xFF2b91af),
        variableStyle: const Color(0xFF000000),
      );
}