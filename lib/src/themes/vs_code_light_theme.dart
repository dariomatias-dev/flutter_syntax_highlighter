import 'package:flutter/material.dart';
import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class VSCodeLightTheme extends SyntaxColorSchema {
  const VSCodeLightTheme()
    : super(
        baseStyle: const Color(0xFF000000),
        lineNumberStyle: const Color.fromARGB(179, 0, 0, 0),
        keywordStyle: const Color(0xFF0000FF),
        specialKeywordStyle: const Color(0xFF0000FF),
        storageModifierStyle: const Color(0xFF0000FF),
        typeStyle: const Color(0xFF267F99),
        functionStyle: const Color(0xFF000000),
        literalStyle: const Color(0xFF000000),
        commentStyle: const Color(0xFF008000),
        punctuationStyle: const Color(0xFF000000),
        stringStyle: const Color(0xFFA31515),
        numberStyle: const Color(0xFF098658),
        bracket1Style: const Color(0xFF000000),
        bracket2Style: const Color(0xFF0000FF),
        bracket3Style: const Color(0xFF267F99),
        variableStyle: const Color(0xFF0070C1),
      );
}
