import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class OneDarkProTheme extends SyntaxColorSchema {
  const OneDarkProTheme()
    : super(
        baseStyle: const Color(0xFFABB2BF),
        lineNumberStyle: const Color(0xFF5C6370),
        keywordStyle: const Color(0xFFC678DD),
        specialKeywordStyle: const Color(0xFFC678DD),
        storageModifierStyle: const Color(0xFFC678DD),
        typeStyle: const Color(0xFFE5C07B),
        functionStyle: const Color(0xFF61AFEF),
        literalStyle: const Color(0xFFD19A66),
        commentStyle: const Color(0xFF5C6370),
        punctuationStyle: const Color(0xFFABB2BF),
        stringStyle: const Color(0xFF98C379),
        numberStyle: const Color(0xFFD19A66),
        bracket1Style: const Color(0xFFABB2BF),
        bracket2Style: const Color(0xFFC678DD),
        bracket3Style: const Color(0xFFE5C07B),
        variableStyle: const Color(0xFFE06C75),
      );
}
