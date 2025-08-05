import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class Cobalt2Theme extends SyntaxColorSchema {
  const Cobalt2Theme()
    : super(
        baseStyle: const Color(0xFFFFFFFF),
        lineNumberStyle: const Color(0xFF536E7B),
        keywordStyle: const Color(0xFFFF9D00),
        specialKeywordStyle: const Color(0xFFFF9D00),
        storageModifierStyle: const Color(0xFFFF9D00),
        typeStyle: const Color(0xFFFFC600),
        functionStyle: const Color(0xFFFFC600),
        literalStyle: const Color(0xFFFF628C),
        commentStyle: const Color(0xFF0088FF),
        punctuationStyle: const Color(0xFFFFFFFF),
        stringStyle: const Color(0xFF3AD900),
        numberStyle: const Color(0xFFFF628C),
        bracket1Style: const Color(0xFFFFFFFF),
        bracket2Style: const Color(0xFFFF9D00),
        bracket3Style: const Color(0xFFFFC600),
        variableStyle: const Color(0xFF9EFFFF),
      );
}
