import 'package:flutter/material.dart';

class SyntaxTheme {
  const SyntaxTheme({
    required this.baseStyle,
    required this.lineNumberStyle,
    required this.keywordStyle,
    required this.specialKeywordStyle,
    required this.storageModifierStyle,
    required this.typeStyle,
    required this.functionStyle,
    required this.literalStyle,
    required this.commentStyle,
    required this.punctuationStyle,
    required this.stringStyle,
    required this.numberStyle,
    required this.bracket1Style,
    required this.bracket2Style,
    required this.bracket3Style,
    required this.variableStyle,
  });

  final TextStyle baseStyle;
  final TextStyle lineNumberStyle;
  final TextStyle keywordStyle;
  final TextStyle specialKeywordStyle;
  final TextStyle storageModifierStyle;
  final TextStyle typeStyle;
  final TextStyle functionStyle;
  final TextStyle literalStyle;
  final TextStyle commentStyle;
  final TextStyle punctuationStyle;
  final TextStyle stringStyle;
  final TextStyle numberStyle;
  final TextStyle bracket1Style;
  final TextStyle bracket2Style;
  final TextStyle bracket3Style;
  final TextStyle variableStyle;

  SyntaxTheme copyWithFontSize(double size) {
    return SyntaxTheme(
      baseStyle: baseStyle.copyWith(fontSize: size),
      lineNumberStyle: lineNumberStyle.copyWith(fontSize: size),
      keywordStyle: keywordStyle.copyWith(fontSize: size),
      specialKeywordStyle: specialKeywordStyle.copyWith(fontSize: size),
      storageModifierStyle: storageModifierStyle.copyWith(fontSize: size),
      typeStyle: typeStyle.copyWith(fontSize: size),
      functionStyle: functionStyle.copyWith(fontSize: size),
      literalStyle: literalStyle.copyWith(fontSize: size),
      commentStyle: commentStyle.copyWith(fontSize: size),
      punctuationStyle: punctuationStyle.copyWith(fontSize: size),
      stringStyle: stringStyle.copyWith(fontSize: size),
      numberStyle: numberStyle.copyWith(fontSize: size),
      bracket1Style: bracket1Style.copyWith(fontSize: size),
      bracket2Style: bracket2Style.copyWith(fontSize: size),
      bracket3Style: bracket3Style.copyWith(fontSize: size),
      variableStyle: variableStyle.copyWith(fontSize: size),
    );
  }

  static SyntaxTheme dark() {
    return const SyntaxTheme(
      baseStyle: TextStyle(color: Color(0xFFAEDCFF)),
      lineNumberStyle: TextStyle(color: Color(0xFF9E9E9E)),
      keywordStyle: TextStyle(color: Color(0xFF55AFFF)),
      specialKeywordStyle: TextStyle(color: Color(0xFF569CD6)),
      storageModifierStyle: TextStyle(color: Color(0xFFD670D6)),
      typeStyle: TextStyle(color: Color(0xFF4EE2D0)),
      functionStyle: TextStyle(color: Color(0xFFE6E69A)),
      literalStyle: TextStyle(color: Color(0xFF55AFFF)),
      commentStyle: TextStyle(color: Color(0xFF70B855)),
      punctuationStyle: TextStyle(color: Color(0xFFE0E0E0)),
      stringStyle: TextStyle(color: Color(0xFFDE9378)),
      numberStyle: TextStyle(color: Color(0xFFB9DBA8)),
      bracket1Style: TextStyle(color: Color(0xFFE6E69A)),
      bracket2Style: TextStyle(color: Color(0xFFD670D6)),
      bracket3Style: TextStyle(color: Color(0xFFAEDCFF)),
      variableStyle: TextStyle(color: Color(0xFF9CDCFE)),
    );
  }

  static SyntaxTheme light() {
    return const SyntaxTheme(
      baseStyle: TextStyle(color: Color(0xFF333333)),
      lineNumberStyle: TextStyle(color: Color(0xFF999999)),
      keywordStyle: TextStyle(color: Color(0xFF0000FF)),
      specialKeywordStyle: TextStyle(color: Color(0xFF0000FF)),
      storageModifierStyle: TextStyle(color: Color(0xFFAF00DB)),
      typeStyle: TextStyle(color: Color(0xFF267F99)),
      functionStyle: TextStyle(color: Color(0xFF795E26)),
      literalStyle: TextStyle(color: Color(0xFF0000FF)),
      commentStyle: TextStyle(color: Color(0xFF008000)),
      punctuationStyle: TextStyle(color: Color(0xFF333333)),
      stringStyle: TextStyle(color: Color(0xFFA31515)),
      numberStyle: TextStyle(color: Color(0xFF098658)),
      bracket1Style: TextStyle(color: Color(0xFF795E26)),
      bracket2Style: TextStyle(color: Color(0xFFAF00DB)),
      bracket3Style: TextStyle(color: Color(0xFF333333)),
      variableStyle: TextStyle(color: Color(0xFF001080)),
    );
  }
}
