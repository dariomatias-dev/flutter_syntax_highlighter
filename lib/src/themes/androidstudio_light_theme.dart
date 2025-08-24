import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class AndroidStudioLightTheme extends SyntaxColorSchema {
  const AndroidStudioLightTheme()
    : super(
        baseColor: const Color(0xFF212121),
        lineNumberColor: const Color(0xFF9E9E9E),
        keywordColor: const Color(0xFFC26200),
        specialKeywordColor: const Color(0xFFC26200),
        storageModifierColor: const Color(0xFFC26200),
        typeColor: const Color(0xFF795548),
        functionColor: const Color(0xFF795548),
        literalColor: const Color(0xFFC26200),
        commentColor: const Color(0xFF808080),
        punctuationColor: const Color(0xFF212121),
        stringColor: const Color(0xFF388E3C),
        numberColor: const Color(0xFF0D47A1),
        bracket1Color: const Color(0xFF212121),
        bracket2Color: const Color(0xFFC26200),
        bracket3Color: const Color(0xFF795548),
        variableColor: const Color(0xFF212121),
      );
}
