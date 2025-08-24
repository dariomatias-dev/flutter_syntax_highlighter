import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class GitHubLightTheme extends SyntaxColorSchema {
  const GitHubLightTheme()
    : super(
        baseColor: const Color(0xFF24292E),
        lineNumberColor: const Color(0xFF6A737D),
        keywordColor: const Color(0xFFD73A49),
        specialKeywordColor: const Color(0xFFD73A49),
        storageModifierColor: const Color(0xFFD73A49),
        typeColor: const Color(0xFF6F42C1),
        functionColor: const Color(0xFF6F42C1),
        literalColor: const Color(0xFF005CC5),
        commentColor: const Color(0xFF6A737D),
        punctuationColor: const Color(0xFF24292E),
        stringColor: const Color(0xFF032F62),
        numberColor: const Color(0xFF005CC5),
        bracket1Color: const Color(0xFF24292E),
        bracket2Color: const Color(0xFFD73A49),
        bracket3Color: const Color(0xFF6F42C1),
        variableColor: const Color(0xFFE36209),
      );
}
