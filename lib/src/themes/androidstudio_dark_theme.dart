import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class AndroidStudioDarkTheme extends SyntaxColorSchema {
  const AndroidStudioDarkTheme()
    : super(
        baseStyle: const Color(0xFFA9B7C6),
        lineNumberStyle: const Color(0xFF606366),
        keywordStyle: const Color(0xFFCC7832),
        specialKeywordStyle: const Color(0xFFCC7832),
        storageModifierStyle: const Color(0xFFCC7832),
        typeStyle: const Color(0xFFA9B7C6),
        functionStyle: const Color(0xFFFFC66D),
        literalStyle: const Color(0xFFCC7832),
        commentStyle: const Color(0xFF808080),
        punctuationStyle: const Color(0xFFA9B7C6),
        stringStyle: const Color(0xFF6A8759),
        numberStyle: const Color(0xFF6897BB),
        bracket1Style: const Color(0xFFA9B7C6),
        bracket2Style: const Color(0xFFCC7832),
        bracket3Style: const Color(0xFFFFC66D),
        variableStyle: const Color(0xFFA9B7C6),
      );
}
