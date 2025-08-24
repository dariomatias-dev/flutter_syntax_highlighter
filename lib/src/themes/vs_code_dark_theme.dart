import 'package:flutter/material.dart';
import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class VSCodeDarkTheme extends SyntaxColorSchema {
  const VSCodeDarkTheme()
    : super(
        baseColor: const Color(0xFFD4D4D4),
        lineNumberColor: const Color.fromARGB(179, 255, 255, 255),
        keywordColor: const Color(0xFF569CD6),
        specialKeywordColor: const Color(0xFF569CD6),
        storageModifierColor: const Color(0xFF569CD6),
        typeColor: const Color(0xFF4EC9B0),
        functionColor: const Color(0xFFD4D4D4),
        literalColor: const Color(0xFFD4D4D4),
        commentColor: const Color(0xFF6A9955),
        punctuationColor: const Color(0xFFFFFFFF),
        stringColor: const Color(0xFFD69D85),
        numberColor: const Color(0xFFB5CEA8),
        bracket1Color: const Color(0xFFD4D4D4),
        bracket2Color: const Color(0xFF569CD6),
        bracket3Color: const Color(0xFF4EC9B0),
        variableColor: const Color(0xFF9CDCFE),
      );
}
