import 'package:flutter_syntax_highlighter/src/token_type.dart';

/// Represents a token with its type, textual value, and optional nesting level.
///
/// Used during syntax highlighting to classify parts of source code.
class SyntaxToken {
  SyntaxToken(this.type, this.value, {this.level = 0});

  /// The type of this token.
  final TokenType type;

  /// The level of nesting or scope of the token.
  final String value;

  /// The level of nesting or scope of the token.
  final int level;
}
