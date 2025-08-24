import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class XcodeLightTheme extends SyntaxColorSchema {
  const XcodeLightTheme()
    : super(
        baseColor: const Color(0xFF333333),
        lineNumberColor: const Color(0xFF7d7d7d),
        keywordColor: const Color(0xFFA31515),
        specialKeywordColor: const Color(0xFFA31515),
        storageModifierColor: const Color(0xFFA31515),
        typeColor: const Color(0xFF2B91AF),
        functionColor: const Color(0xFF795E26),
        literalColor: const Color(0xFF0000FF),
        commentColor: const Color(0xFF008000),
        punctuationColor: const Color(0xFF333333),
        stringColor: const Color(0xFFa31515),
        numberColor: const Color(0xFF098658),
        bracket1Color: const Color(0xFF333333),
        bracket2Color: const Color(0xFFA31515),
        bracket3Color: const Color(0xFF2B91AF),
        variableColor: const Color(0xFF333333),
      );
}
