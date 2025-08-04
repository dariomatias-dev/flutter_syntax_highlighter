import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class DarkHighContrastTheme extends SyntaxColorSchema {
  const DarkHighContrastTheme()
    : super(
        baseStyle: const Color(0xFFAEDCFF),
        lineNumberStyle: const Color(0xFF9E9E9E),
        keywordStyle: const Color(0xFF569CD6),
        specialKeywordStyle: const Color(0xFF569CD6),
        storageModifierStyle: const Color(0xFFD670D6),
        typeStyle: const Color(0xFF4EE2D0),
        functionStyle: const Color(0xFFE6E69A),
        literalStyle: const Color(0xFF55AFFF),
        commentStyle: const Color(0xFF70B855),
        punctuationStyle: const Color(0xFFE0E0E0),
        stringStyle: const Color(0xFFDE9378),
        numberStyle: const Color(0xFFB9DBA8),
        bracket1Style: const Color(0xFFE6E69A),
        bracket2Style: const Color(0xFFD670D6),
        bracket3Style: const Color(0xFFAEDCFF),
        variableStyle: const Color(0xFF9CDCFE),
      );
}
