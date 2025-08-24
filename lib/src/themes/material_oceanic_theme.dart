import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class MaterialOceanicTheme extends SyntaxColorSchema {
  const MaterialOceanicTheme()
    : super(
        baseColor: const Color(0xFFB0BEC5),
        lineNumberColor: const Color(0xFF546E7A),
        keywordColor: const Color(0xFFC792EA),
        specialKeywordColor: const Color(0xFFC792EA),
        storageModifierColor: const Color(0xFFC792EA),
        typeColor: const Color(0xFFFFCB6B),
        functionColor: const Color(0xFF82AAFF),
        literalColor: const Color(0xFFF78C6C),
        commentColor: const Color(0xFF546E7A),
        punctuationColor: const Color(0xFFB0BEC5),
        stringColor: const Color(0xFFC3E88D),
        numberColor: const Color(0xFFF78C6C),
        bracket1Color: const Color(0xFFB0BEC5),
        bracket2Color: const Color(0xFFC792EA),
        bracket3Color: const Color(0xFFFFCB6B),
        variableColor: const Color(0xFF89DDFF),
      );
}
