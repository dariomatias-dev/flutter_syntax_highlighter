import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class XcodeDarkTheme extends SyntaxColorSchema {
  const XcodeDarkTheme()
    : super(
        baseStyle: const Color(0xFFD1D1D1),
        lineNumberStyle: const Color(0xFF6C7986),
        keywordStyle: const Color(0xFFFF5284),
        specialKeywordStyle: const Color(0xFFFF5284),
        storageModifierStyle: const Color(0xFFFF5284),
        typeStyle: const Color(0xFF5DD8FF),
        functionStyle: const Color(0xFFDDBB87),
        literalStyle: const Color(0xFFC699FF),
        commentStyle: const Color(0xFF6C7986),
        punctuationStyle: const Color(0xFFD1D1D1),
        stringStyle: const Color(0xFFFF4F4F),
        numberStyle: const Color(0xFFC699FF),
        bracket1Style: const Color(0xFFD1D1D1),
        bracket2Style: const Color(0xFFFF5284),
        bracket3Style: const Color(0xFF5DD8FF),
        variableStyle: const Color(0xFF9ED8FF),
      );
}
