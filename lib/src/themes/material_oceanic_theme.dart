import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class MaterialOceanicTheme extends SyntaxColorSchema {
  const MaterialOceanicTheme()
    : super(
        baseStyle: const Color(0xFFB0BEC5),
        lineNumberStyle: const Color(0xFF546E7A),
        keywordStyle: const Color(0xFFC792EA),
        specialKeywordStyle: const Color(0xFFC792EA),
        storageModifierStyle: const Color(0xFFC792EA),
        typeStyle: const Color(0xFFFFCB6B),
        functionStyle: const Color(0xFF82AAFF),
        literalStyle: const Color(0xFFF78C6C),
        commentStyle: const Color(0xFF546E7A),
        punctuationStyle: const Color(0xFFB0BEC5),
        stringStyle: const Color(0xFFC3E88D),
        numberStyle: const Color(0xFFF78C6C),
        bracket1Style: const Color(0xFFB0BEC5),
        bracket2Style: const Color(0xFFC792EA),
        bracket3Style: const Color(0xFFFFCB6B),
        variableStyle: const Color(0xFF89DDFF),
      );
}
