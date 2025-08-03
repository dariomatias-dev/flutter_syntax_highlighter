import 'package:flutter/material.dart';

/// Defines the color and style configuration for syntax highlighting.
///
/// Contains [TextStyle]s for various token types and line numbers.
/// Provides preset light and dark themes and font size customization.
abstract class SyntaxTheme {
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

  /// Default text style for general code.
  final TextStyle baseStyle;

  /// Style for line numbers.
  final TextStyle lineNumberStyle;

  /// Style for keywords (e.g. `if`, `for`).
  final TextStyle keywordStyle;

  /// Style for special keywords (e.g. `return`, `yield`).
  final TextStyle specialKeywordStyle;

  /// Style for storage modifiers (e.g. `const`, `final`).
  final TextStyle storageModifierStyle;

  /// Style for type names (e.g. `int`, `String`).
  final TextStyle typeStyle;

  /// Style for function and method names.
  final TextStyle functionStyle;

  /// Style for literals (e.g. `true`, `null`).
  final TextStyle literalStyle;

  /// Style for comments.
  final TextStyle commentStyle;

  /// Style for punctuation characters.
  final TextStyle punctuationStyle;

  /// Style for string literals.
  final TextStyle stringStyle;

  /// Style for numeric literals.
  final TextStyle numberStyle;

  /// Style for first kind of brackets.
  final TextStyle bracket1Style;

  /// Style for second kind of brackets.
  final TextStyle bracket2Style;

  /// Style for third kind of brackets.
  final TextStyle bracket3Style;

  /// Style for variables.
  final TextStyle variableStyle;

  /// Returns a copy of this theme with all font sizes replaced by [size].
  SyntaxTheme copyWithFontSize(double size);
}
