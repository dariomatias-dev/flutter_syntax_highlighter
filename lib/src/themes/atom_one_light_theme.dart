import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class AtomOneLightTheme extends SyntaxColorSchema {
  const AtomOneLightTheme()
    : super(
        baseStyle: const Color(0xFF383a42),
        lineNumberStyle: const Color(0xFFa0a1a7),
        keywordStyle: const Color(0xFFa626a4),
        specialKeywordStyle: const Color(0xFFa626a4),
        storageModifierStyle: const Color(0xFFa626a4),
        typeStyle: const Color(0xFFc18401),
        functionStyle: const Color(0xFF4078f1),
        literalStyle: const Color(0xFF0184bc),
        commentStyle: const Color(0xFFa0a1a7),
        punctuationStyle: const Color(0xFF383a42),
        stringStyle: const Color(0xFF50a14f),
        numberStyle: const Color(0xFF986801),
        bracket1Style: const Color(0xFF383a42),
        bracket2Style: const Color(0xFFa626a4),
        bracket3Style: const Color(0xFFc18401),
        variableStyle: const Color(0xFFe45649),
      );
}
