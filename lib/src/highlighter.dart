import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_theme.dart';
import 'package:flutter_syntax_highlighter/src/syntax_token.dart';
import 'package:flutter_syntax_highlighter/src/token_type.dart';

class Highlighter {
  final SyntaxTheme theme;

  Highlighter(this.theme);

  TextStyle getStyleForToken(SyntaxToken token) {
    switch (token.type) {
      case TokenType.bracket:
        final level = token.level % 3;
        if (level == 0) return theme.bracket1Style;
        if (level == 1) return theme.bracket2Style;
        return theme.bracket3Style;

      case TokenType.keyword:
        return theme.keywordStyle;
      case TokenType.specialKeyword:
        return theme.specialKeywordStyle;
      case TokenType.storageModifier:
        return theme.storageModifierStyle;
      case TokenType.type:
        return theme.typeStyle;
      case TokenType.function:
        return theme.functionStyle;
      case TokenType.comment:
        return theme.commentStyle;
      case TokenType.string:
        return theme.stringStyle;
      case TokenType.number:
        return theme.numberStyle;
      case TokenType.literal:
        return theme.literalStyle;
      case TokenType.variable:
        return theme.variableStyle;
      case TokenType.punctuation:
        return theme.punctuationStyle;
      case TokenType.identifier:
      case TokenType.newline:
        return theme.baseStyle;
    }
  }

  static final Map<RegExp, TokenType> _patterns = {
    RegExp(r'//[^\n]*'): TokenType.comment,
    RegExp(r'/\*[\s\S]*?\*/'): TokenType.comment,
    RegExp(
      r'\b(import|const|void|extends|class|static|final|var|new|this|super|with|enum|assert|export|part|library)\b',
    ): TokenType.specialKeyword,
    RegExp(r'\b(@override|return)\b'): TokenType.storageModifier,
    RegExp(
      r'\b(if|else|for|while|do|switch|case|default|break|continue|as|is|in|throw|try|catch|finally|async|await|yield)\b',
    ): TokenType.keyword,
    RegExp(r'\b(_?[A-Z][a-zA-Z0-9]*|int|double|String|bool)\b'): TokenType.type,
    RegExp(r'\b(setState|build|main|runApp|createState|of)\b'):
        TokenType.function,
    RegExp(r'\b[a-zA-Z_][a-zA-Z0-9_]*(?=\()'): TokenType.function,
    RegExp(r'\b(true|false|null)\b'): TokenType.literal,
    RegExp(r'\b\d+(\.\d+)?\b'): TokenType.number,
    RegExp(r'[\.,;:?]'): TokenType.punctuation,
    RegExp(r'\b[a-zA-Z_][a-zA-Z0-9_]*\b'): TokenType.variable,
  };

  List<SyntaxToken> tokenize(String source) {
    if (!source.endsWith('\n')) {
      source += '\n';
    }

    final tokens = <SyntaxToken>[];
    final bracketStack = <String>[];
    int currentIndex = 0;

    while (currentIndex < source.length) {
      final currentChar = source[currentIndex];

      if (currentChar == "'" || currentChar == '"') {
        final remainingSource = source.substring(currentIndex);
        final quoteType =
            (remainingSource.startsWith("'''") ||
                remainingSource.startsWith('"""'))
            ? source.substring(currentIndex, currentIndex + 3)
            : currentChar;

        tokens.add(SyntaxToken(TokenType.string, quoteType));
        currentIndex += quoteType.length;

        var stringContentBuffer = '';

        while (currentIndex < source.length) {
          if (source.substring(currentIndex).startsWith(quoteType)) {
            if (stringContentBuffer.isNotEmpty) {
              tokens.add(SyntaxToken(TokenType.string, stringContentBuffer));
            }
            tokens.add(SyntaxToken(TokenType.string, quoteType));
            currentIndex += quoteType.length;
            break;
          }

          if (source[currentIndex] == r'\') {
            if (currentIndex + 1 < source.length) {
              stringContentBuffer += source.substring(
                currentIndex,
                currentIndex + 2,
              );
              currentIndex += 2;
              continue;
            }
          }

          if (source[currentIndex] == r'$') {
            if (stringContentBuffer.isNotEmpty) {
              tokens.add(SyntaxToken(TokenType.string, stringContentBuffer));
              stringContentBuffer = '';
            }

            if (currentIndex + 1 < source.length &&
                source[currentIndex + 1] == '{') {
              tokens.add(SyntaxToken(TokenType.punctuation, r'${'));
              currentIndex += 2;

              int braceLevel = 1;
              final expressionStartIndex = currentIndex;
              int expressionEndIndex = -1;

              while (currentIndex < source.length) {
                if (source[currentIndex] == '{') {
                  braceLevel++;
                } else if (source[currentIndex] == '}') {
                  braceLevel--;
                  if (braceLevel == 0) {
                    expressionEndIndex = currentIndex;
                    break;
                  }
                }
                currentIndex++;
              }

              if (expressionEndIndex != -1) {
                final expressionSource = source.substring(
                  expressionStartIndex,
                  expressionEndIndex,
                );
                final expressionHighlighter = Highlighter(theme);
                final expressionTokens = expressionHighlighter.tokenize(
                  expressionSource,
                );
                tokens.addAll(
                  expressionTokens.where((t) => t.type != TokenType.newline),
                );

                tokens.add(SyntaxToken(TokenType.punctuation, '}'));
                currentIndex = expressionEndIndex + 1;
              } else {
                tokens.add(
                  SyntaxToken(
                    TokenType.string,
                    source.substring(expressionStartIndex - 2),
                  ),
                );
                currentIndex = source.length;
              }
            } else {
              final match = RegExp(
                r'[a-zA-Z_][a-zA-Z0-9_]*',
              ).matchAsPrefix(source, currentIndex + 1);
              if (match != null) {
                tokens.add(SyntaxToken(TokenType.punctuation, r'$'));
                tokens.add(SyntaxToken(TokenType.variable, match.group(0)!));
                currentIndex += 1 + match.group(0)!.length;
              } else {
                stringContentBuffer += r'$';
                currentIndex++;
              }
            }
          } else {
            stringContentBuffer += source[currentIndex];
            currentIndex++;
          }
        }
        continue;
      }

      if (currentChar == '\n') {
        tokens.add(SyntaxToken(TokenType.newline, '\n'));
        currentIndex++;
        continue;
      }

      if (_isWhitespace(currentChar)) {
        tokens.add(SyntaxToken(TokenType.identifier, currentChar));
        currentIndex++;
        continue;
      }

      if (_tryMatchBracket(source, currentIndex, bracketStack, tokens)) {
        currentIndex++;
        continue;
      }

      if (_tryMatchPatterns(source, currentIndex, tokens)) {
        final lastToken = tokens.last;
        currentIndex += lastToken.value.length;
        continue;
      }

      tokens.add(SyntaxToken(TokenType.identifier, currentChar));
      currentIndex++;
    }

    return tokens;
  }

  bool _isWhitespace(String char) => RegExp(r'\s').hasMatch(char);

  bool _tryMatchBracket(
    String source,
    int currentIndex,
    List<String> bracketStack,
    List<SyntaxToken> tokens,
  ) {
    final openBracketMatch = RegExp(
      r'[\(\[\{]',
    ).matchAsPrefix(source, currentIndex);
    if (openBracketMatch != null) {
      bracketStack.add(openBracketMatch.group(0)!);
      tokens.add(
        SyntaxToken(
          TokenType.bracket,
          openBracketMatch.group(0)!,
          level: bracketStack.length - 1,
        ),
      );

      return true;
    }

    final closeBracketMatch = RegExp(
      r'[\)\]\}]',
    ).matchAsPrefix(source, currentIndex);
    if (closeBracketMatch != null) {
      if (bracketStack.isNotEmpty) bracketStack.removeLast();
      tokens.add(
        SyntaxToken(
          TokenType.bracket,
          closeBracketMatch.group(0)!,
          level: bracketStack.length,
        ),
      );

      return true;
    }

    return false;
  }

  bool _tryMatchPatterns(
    String source,
    int currentIndex,
    List<SyntaxToken> tokens,
  ) {
    for (final entry in _patterns.entries) {
      final match = entry.key.matchAsPrefix(source, currentIndex);
      if (match != null) {
        tokens.add(SyntaxToken(entry.value, match.group(0)!));

        return true;
      }
    }

    return false;
  }
}
