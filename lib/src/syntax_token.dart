import 'package:flutter_syntax_highlighter/src/token_type.dart';

class SyntaxToken {
  SyntaxToken(this.type, this.value, {this.level = 0});

  final TokenType type;
  final String value;
  final int level;
}
