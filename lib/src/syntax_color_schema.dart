import 'package:flutter/material.dart';

/// Defines the color configuration for syntax highlighting.
///
/// Contains [Color]s for various token types and line numbers.
abstract class SyntaxColorSchema {
  const SyntaxColorSchema({
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

  /// Default color for general code.
  final Color baseStyle;

  /// Color for line numbers.
  final Color lineNumberStyle;

  /// Color for keywords (e.g. `if`, `for`).
  final Color keywordStyle;

  /// Color for special keywords (e.g. `return`, `yield`).
  final Color specialKeywordStyle;

  /// Color for storage modifiers (e.g. `const`, `final`).
  final Color storageModifierStyle;

  /// Color for type names (e.g. `int`, `String`).
  final Color typeStyle;

  /// Color for function and method names.
  final Color functionStyle;

  /// Color for literals (e.g. `true`, `null`).
  final Color literalStyle;

  /// Color for comments.
  final Color commentStyle;

  /// Color for punctuation characters.
  final Color punctuationStyle;

  /// Color for string literals.
  final Color stringStyle;

  /// Color for numeric literals.
  final Color numberStyle;

  /// Color for first kind of brackets.
  final Color bracket1Style;

  /// Color for second kind of brackets.
  final Color bracket2Style;

  /// Color for third kind of brackets.
  final Color bracket3Style;

  /// Color for variables.
  final Color variableStyle;
}
