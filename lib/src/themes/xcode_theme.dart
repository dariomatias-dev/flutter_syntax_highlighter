import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class XcodeTheme extends SyntaxColorSchema {
  const XcodeTheme()
    : super(
        baseStyle: const Color(0xFF333333),
        lineNumberStyle: const Color(0xFF7d7d7d),
        keywordStyle: const Color(0xFFA31515),
        specialKeywordStyle: const Color(0xFFA31515),
        storageModifierStyle: const Color(0xFFA31515),
        typeStyle: const Color(0xFF2B91AF),
        functionStyle: const Color(0xFF795E26),
        literalStyle: const Color(0xFF0000FF),
        commentStyle: const Color(0xFF008000),
        punctuationStyle: const Color(0xFF333333),
        stringStyle: const Color(0xFFa31515),
        numberStyle: const Color(0xFF098658),
        bracket1Style: const Color(0xFF333333),
        bracket2Style: const Color(0xFFA31515),
        bracket3Style: const Color(0xFF2B91AF),
        variableStyle: const Color(0xFF333333),
      );
}
