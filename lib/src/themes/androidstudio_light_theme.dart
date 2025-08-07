import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class AndroidStudioLightTheme extends SyntaxColorSchema {
  const AndroidStudioLightTheme()
    : super(
        baseStyle: const Color(0xFF212121),
        lineNumberStyle: const Color(0xFF9E9E9E),
        keywordStyle: const Color(0xFFC26200),
        specialKeywordStyle: const Color(0xFFC26200),
        storageModifierStyle: const Color(0xFFC26200),
        typeStyle: const Color(0xFF795548),
        functionStyle: const Color(0xFF795548),
        literalStyle: const Color(0xFFC26200),
        commentStyle: const Color(0xFF808080),
        punctuationStyle: const Color(0xFF212121),
        stringStyle: const Color(0xFF388E3C),
        numberStyle: const Color(0xFF0D47A1),
        bracket1Style: const Color(0xFF212121),
        bracket2Style: const Color(0xFFC26200),
        bracket3Style: const Color(0xFF795548),
        variableStyle: const Color(0xFF212121),
      );
}
