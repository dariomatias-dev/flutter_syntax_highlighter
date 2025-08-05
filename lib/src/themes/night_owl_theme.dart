import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class NightOwlTheme extends SyntaxColorSchema {
  const NightOwlTheme()
    : super(
        baseStyle: const Color(0xFFd6deeb),
        lineNumberStyle: const Color(0xFF637777),
        keywordStyle: const Color(0xFFc792ea),
        specialKeywordStyle: const Color(0xFFffeb95),
        storageModifierStyle: const Color(0xFFc792ea),
        typeStyle: const Color(0xFFffeb95),
        functionStyle: const Color(0xFF82aaff),
        literalStyle: const Color(0xFFffeb95),
        commentStyle: const Color(0xFF637777),
        punctuationStyle: const Color(0xFFd6deeb),
        stringStyle: const Color(0xFFecc48d),
        numberStyle: const Color(0xFFF78C6C),
        bracket1Style: const Color(0xFFd6deeb),
        bracket2Style: const Color(0xFFc792ea),
        bracket3Style: const Color(0xFFffeb95),
        variableStyle: const Color(0xFFaddb67),
      );
}
