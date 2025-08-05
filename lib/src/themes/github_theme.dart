import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class GitHubTheme extends SyntaxColorSchema {
  const GitHubTheme()
    : super(
        baseStyle: const Color(0xFF24292E),
        lineNumberStyle: const Color(0xFF6A737D),
        keywordStyle: const Color(0xFFD73A49),
        specialKeywordStyle: const Color(0xFFD73A49),
        storageModifierStyle: const Color(0xFFD73A49),
        typeStyle: const Color(0xFF6F42C1),
        functionStyle: const Color(0xFF6F42C1),
        literalStyle: const Color(0xFF005CC5),
        commentStyle: const Color(0xFF6A737D),
        punctuationStyle: const Color(0xFF24292E),
        stringStyle: const Color(0xFF032F62),
        numberStyle: const Color(0xFF005CC5),
        bracket1Style: const Color(0xFF24292E),
        bracket2Style: const Color(0xFFD73A49),
        bracket3Style: const Color(0xFF6F42C1),
        variableStyle: const Color(0xFFE36209),
      );
}
