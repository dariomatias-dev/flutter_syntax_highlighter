import 'package:flutter/material.dart';
import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class VSCodeLightTheme extends SyntaxColorSchema {
  const VSCodeLightTheme()
    : super(
        baseColor: const Color(0xFF000000),
        lineNumberColor: const Color.fromARGB(179, 0, 0, 0),
        keywordColor: const Color(0xFF0000FF),
        specialKeywordColor: const Color(0xFF0000FF),
        storageModifierColor: const Color(0xFF0000FF),
        typeColor: const Color(0xFF267F99),
        functionColor: const Color(0xFF000000),
        literalColor: const Color(0xFF000000),
        commentColor: const Color(0xFF008000),
        punctuationColor: const Color(0xFF000000),
        stringColor: const Color(0xFFA31515),
        numberColor: const Color(0xFF098658),
        bracket1Color: const Color(0xFF000000),
        bracket2Color: const Color(0xFF0000FF),
        bracket3Color: const Color(0xFF267F99),
        variableColor: const Color(0xFF0070C1),
      );
}
