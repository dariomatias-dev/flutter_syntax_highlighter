import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class AndroidStudioDarkTheme extends SyntaxColorSchema {
  const AndroidStudioDarkTheme()
    : super(
        baseColor: const Color(0xFFA9B7C6),
        lineNumberColor: const Color(0xFF606366),
        keywordColor: const Color(0xFFCC7832),
        specialKeywordColor: const Color(0xFFCC7832),
        storageModifierColor: const Color(0xFFCC7832),
        typeColor: const Color(0xFFA9B7C6),
        functionColor: const Color(0xFFFFC66D),
        literalColor: const Color(0xFFCC7832),
        commentColor: const Color(0xFF808080),
        punctuationColor: const Color(0xFFA9B7C6),
        stringColor: const Color(0xFF6A8759),
        numberColor: const Color(0xFF6897BB),
        bracket1Color: const Color(0xFFA9B7C6),
        bracket2Color: const Color(0xFFCC7832),
        bracket3Color: const Color(0xFFFFC66D),
        variableColor: const Color(0xFFA9B7C6),
      );
}
