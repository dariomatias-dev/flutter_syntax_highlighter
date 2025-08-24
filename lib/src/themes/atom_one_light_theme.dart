import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class AtomOneLightTheme extends SyntaxColorSchema {
  const AtomOneLightTheme()
    : super(
        baseColor: const Color(0xFF383a42),
        lineNumberColor: const Color(0xFFa0a1a7),
        keywordColor: const Color(0xFFa626a4),
        specialKeywordColor: const Color(0xFFa626a4),
        storageModifierColor: const Color(0xFFa626a4),
        typeColor: const Color(0xFFc18401),
        functionColor: const Color(0xFF4078f1),
        literalColor: const Color(0xFF0184bc),
        commentColor: const Color(0xFFa0a1a7),
        punctuationColor: const Color(0xFF383a42),
        stringColor: const Color(0xFF50a14f),
        numberColor: const Color(0xFF986801),
        bracket1Color: const Color(0xFF383a42),
        bracket2Color: const Color(0xFFa626a4),
        bracket3Color: const Color(0xFFc18401),
        variableColor: const Color(0xFFe45649),
      );
}
