import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

class NightOwlTheme extends SyntaxColorSchema {
  const NightOwlTheme()
    : super(
        baseColor: const Color(0xFFd6deeb),
        lineNumberColor: const Color(0xFF637777),
        keywordColor: const Color(0xFFc792ea),
        specialKeywordColor: const Color(0xFFffeb95),
        storageModifierColor: const Color(0xFFc792ea),
        typeColor: const Color(0xFFffeb95),
        functionColor: const Color(0xFF82aaff),
        literalColor: const Color(0xFFffeb95),
        commentColor: const Color(0xFF637777),
        punctuationColor: const Color(0xFFd6deeb),
        stringColor: const Color(0xFFecc48d),
        numberColor: const Color(0xFFF78C6C),
        bracket1Color: const Color(0xFFd6deeb),
        bracket2Color: const Color(0xFFc792ea),
        bracket3Color: const Color(0xFFffeb95),
        variableColor: const Color(0xFFaddb67),
      );
}
