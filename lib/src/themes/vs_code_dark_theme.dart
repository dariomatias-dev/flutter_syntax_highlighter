import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class VSCodeDarkTheme extends SyntaxColorSchema {
  const VSCodeDarkTheme()
    : super(
        baseStyle: const Color(0xFFDCDCDC),
        lineNumberStyle: const Color(0xFF858585),
        keywordStyle: const Color(0xFF569CD6),
        specialKeywordStyle: const Color(0xFFC586C0),
        storageModifierStyle: const Color(0xFF569CD6),
        typeStyle: const Color(0xFF4EC9B0),
        functionStyle: const Color(0xFFDCDCAA),
        literalStyle: const Color(0xFF569CD6),
        commentStyle: const Color(0xFF6A9955),
        punctuationStyle: const Color(0xFFDCDCDC),
        stringStyle: const Color(0xFFCE9178),
        numberStyle: const Color(0xFFB5CEA8),
        bracket1Style: const Color(0xFFDCDCDC),
        bracket2Style: const Color(0xFF569CD6),
        bracket3Style: const Color(0xFF4EC9B0),
        variableStyle: const Color(0xFF9CDCFE),
      );
}
