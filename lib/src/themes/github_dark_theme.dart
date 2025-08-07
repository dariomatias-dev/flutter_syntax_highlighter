import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class GitHubDarkTheme extends SyntaxColorSchema {
  const GitHubDarkTheme()
    : super(
        baseStyle: const Color(0xFFC9D1D9),
        lineNumberStyle: const Color(0xFF484F58),
        keywordStyle: const Color(0xFFFF7B72),
        specialKeywordStyle: const Color(0xFFFF7B72),
        storageModifierStyle: const Color(0xFFFF7B72),
        typeStyle: const Color(0xFFFFA657),
        functionStyle: const Color(0xFFD2A8FF),
        literalStyle: const Color(0xFF79C0FF),
        commentStyle: const Color(0xFF8B949E),
        punctuationStyle: const Color(0xFFC9D1D9),
        stringStyle: const Color(0xFFA5D6FF),
        numberStyle: const Color(0xFF79C0FF),
        bracket1Style: const Color(0xFFC9D1D9),
        bracket2Style: const Color(0xFFFF7B72),
        bracket3Style: const Color(0xFFD2A8FF),
        variableStyle: const Color(0xFFFFA657),
      );
}
