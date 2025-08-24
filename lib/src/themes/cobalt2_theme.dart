import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class Cobalt2Theme extends SyntaxColorSchema {
  const Cobalt2Theme()
    : super(
        baseColor: const Color(0xFFFFFFFF),
        lineNumberColor: const Color(0xFF536E7B),
        keywordColor: const Color(0xFFFF9D00),
        specialKeywordColor: const Color(0xFFFF9D00),
        storageModifierColor: const Color(0xFFFF9D00),
        typeColor: const Color(0xFFFFC600),
        functionColor: const Color(0xFFFFC600),
        literalColor: const Color(0xFFFF628C),
        commentColor: const Color(0xFF0088FF),
        punctuationColor: const Color(0xFFFFFFFF),
        stringColor: const Color(0xFF3AD900),
        numberColor: const Color(0xFFFF628C),
        bracket1Color: const Color(0xFFFFFFFF),
        bracket2Color: const Color(0xFFFF9D00),
        bracket3Color: const Color(0xFFFFC600),
        variableColor: const Color(0xFF9EFFFF),
      );
}
