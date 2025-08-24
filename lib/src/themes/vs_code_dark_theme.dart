import 'package:flutter/material.dart';
import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class VSCodeDarkTheme extends SyntaxColorSchema {
  const VSCodeDarkTheme()
    : super(
        baseStyle: const Color(0xFFD4D4D4),
        lineNumberStyle: const Color.fromARGB(179, 255, 255, 255),
        keywordStyle: const Color(0xFF569CD6),
        specialKeywordStyle: const Color(0xFF569CD6),
        storageModifierStyle: const Color(0xFF569CD6),
        typeStyle: const Color(0xFF4EC9B0),
        functionStyle: const Color(0xFFD4D4D4),
        literalStyle: const Color(0xFFD4D4D4),
        commentStyle: const Color(0xFF6A9955),
        punctuationStyle: const Color(0xFFFFFFFF),
        stringStyle: const Color(0xFFD69D85),
        numberStyle: const Color(0xFFB5CEA8),
        bracket1Style: const Color(0xFFD4D4D4),
        bracket2Style: const Color(0xFF569CD6),
        bracket3Style: const Color(0xFF4EC9B0),
        variableStyle: const Color(0xFF9CDCFE),
      );
}
