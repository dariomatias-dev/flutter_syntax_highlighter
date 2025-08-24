import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class OneDarkProTheme extends SyntaxColorSchema {
  const OneDarkProTheme()
    : super(
        baseColor: const Color(0xFFABB2BF),
        lineNumberColor: const Color(0xFF5C6370),
        keywordColor: const Color(0xFFC678DD),
        specialKeywordColor: const Color(0xFFC678DD),
        storageModifierColor: const Color(0xFFC678DD),
        typeColor: const Color(0xFFE5C07B),
        functionColor: const Color(0xFF61AFEF),
        literalColor: const Color(0xFFD19A66),
        commentColor: const Color(0xFF5C6370),
        punctuationColor: const Color(0xFFABB2BF),
        stringColor: const Color(0xFF98C379),
        numberColor: const Color(0xFFD19A66),
        bracket1Color: const Color(0xFFABB2BF),
        bracket2Color: const Color(0xFFC678DD),
        bracket3Color: const Color(0xFFE5C07B),
        variableColor: const Color(0xFFE06C75),
      );
}
