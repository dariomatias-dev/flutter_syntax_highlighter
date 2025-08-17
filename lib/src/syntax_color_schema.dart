import 'package:flutter/material.dart';

/// Defines the contract for all syntax highlighting color schemes.
///
/// This abstract class provides a structured way to create complete
/// code highlighting themes, allowing the definition of a specific [Color]
/// for each token type.
///
/// To create a custom theme, extend this class and implement all
/// the required properties.
///
/// ### Example
/// ```dart
/// class MyCustomTheme extends SyntaxColorSchema {
///   const MyCustomTheme()
///       : super(
///           baseStyle: const Color(0xFFFFFFFF),
///           commentStyle: const Color(0xFF9E9E9E),
///           keywordStyle: const Color(0xFF82AAFF),
///           // ... other colors
///         );
/// }
/// ```
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

  /// Base text color applied to code fragments without a specific style.
  /// Typically used for plain text, operators, and whitespace.
  final Color baseStyle;

  /// Color assigned to line numbers displayed in the side gutter.
  final Color lineNumberStyle;

  /// Color for language keywords (e.g., `if`, `for`, `while`, `class`, `void`).
  final Color keywordStyle;

  /// Color for special keywords that modify control flow.
  ///
  /// Examples: `return`, `await`, `yield`, `break`.
  /// Can match [keywordStyle] if the theme does not differentiate.
  final Color specialKeywordStyle;

  /// Color applied to storage modifiers (e.g., `const`, `final`, `static`).
  final Color storageModifierStyle;

  /// Color for type names, including native types and user-defined classes
  /// (e.g., `int`, `String`, `List`, `MyClass`).
  final Color typeStyle;

  /// Color used for function and method names.
  final Color functionStyle;

  /// Color for language literals (e.g., `true`, `false`, `null`).
  final Color literalStyle;

  /// Color applied to code comments.
  final Color commentStyle;

  /// Color for punctuation characters (e.g., comma, semicolon, colon).
  final Color punctuationStyle;

  /// Color applied to string literals (e.g., `"Hello, World!"`).
  final Color stringStyle;

  /// Color used for numeric literals (e.g., `123`, `0.5`, `0xFF`).
  final Color numberStyle;

  /// Color for the first type of brackets.
  final Color bracket1Style;

  /// Color for the second type of brackets.
  final Color bracket2Style;

  /// Color for the third type of brackets.
  final Color bracket3Style;

  /// Color applied to variables, including local variables, parameters,
  /// and class attributes.
  final Color variableStyle;
}
