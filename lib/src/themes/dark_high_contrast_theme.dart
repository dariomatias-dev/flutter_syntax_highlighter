import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class DarkHighContrastTheme extends SyntaxColorSchema {
  const DarkHighContrastTheme()
    : super(
        baseColor: const Color(0xFFAEDCFF),
        lineNumberColor: const Color(0xFF9E9E9E),
        keywordColor: const Color(0xFF569CD6),
        specialKeywordColor: const Color(0xFF569CD6),
        storageModifierColor: const Color(0xFFD670D6),
        typeColor: const Color(0xFF4EE2D0),
        functionColor: const Color(0xFFE6E69A),
        literalColor: const Color(0xFF55AFFF),
        commentColor: const Color(0xFF70B855),
        punctuationColor: const Color(0xFFE0E0E0),
        stringColor: const Color(0xFFDE9378),
        numberColor: const Color(0xFFB9DBA8),
        bracket1Color: const Color(0xFFE6E69A),
        bracket2Color: const Color(0xFFD670D6),
        bracket3Color: const Color(0xFFAEDCFF),
        variableColor: const Color(0xFF9CDCFE),
      );
}
