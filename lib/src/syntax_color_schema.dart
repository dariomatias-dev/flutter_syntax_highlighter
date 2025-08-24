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
///           baseColor: const Color(0xFFFFFFFF),
///           commentColor: const Color(0xFF9E9E9E),
///           keywordColor: const Color(0xFF82AAFF),
///           // ... other colors
///         );
/// }
/// ```
abstract class SyntaxColorSchema {
  const SyntaxColorSchema({
    required this.baseColor,
    required this.lineNumberColor,
    required this.keywordColor,
    required this.specialKeywordColor,
    required this.storageModifierColor,
    required this.typeColor,
    required this.functionColor,
    required this.literalColor,
    required this.commentColor,
    required this.punctuationColor,
    required this.stringColor,
    required this.numberColor,
    required this.bracket1Color,
    required this.bracket2Color,
    required this.bracket3Color,
    required this.variableColor,
  });

  /// Base color applied to code fragments that do not have a specific color.
  final Color baseColor;

  /// Color assigned to line numbers displayed in the side gutter.
  final Color lineNumberColor;

  /// Color for language keywords (e.g., `if`, `for`, `while`, `class`, `void`).
  final Color keywordColor;

  /// Color for special keywords that modify control flow.
  ///
  /// Examples: `return`, `await`, `yield`, `break`.
  /// Can match [keywordColor] if the theme does not differentiate.
  final Color specialKeywordColor;

  /// Color applied to storage modifiers (e.g., `const`, `final`, `static`).
  final Color storageModifierColor;

  /// Color for type names, including native types and user-defined classes
  /// (e.g., `int`, `String`, `List`, `MyClass`).
  final Color typeColor;

  /// Color used for function and method names.
  final Color functionColor;

  /// Color for language literals (e.g., `true`, `false`, `null`).
  final Color literalColor;

  /// Color applied to code comments.
  final Color commentColor;

  /// Color for punctuation characters (e.g., comma, semicolon, colon).
  final Color punctuationColor;

  /// Color applied to string literals (e.g., `"Hello, World!"`).
  final Color stringColor;

  /// Color used for numeric literals (e.g., `123`, `0.5`, `0xFF`).
  final Color numberColor;

  /// Color for the first type of brackets.
  final Color bracket1Color;

  /// Color for the second type of brackets.
  final Color bracket2Color;

  /// Color for the third type of brackets.
  final Color bracket3Color;

  /// Color applied to variables, including local variables, parameters,
  /// and class attributes.
  final Color variableColor;
}
