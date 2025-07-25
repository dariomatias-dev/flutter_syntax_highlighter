import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/syntax_theme.dart';
import 'package:flutter_syntax_highlighter/src/syntax_token.dart';
import 'package:flutter_syntax_highlighter/src/token_type.dart';

/// A syntax highlighter that tokenizes and styles source code.
///
/// This class parses a source code string into a list of styled tokens
/// for syntax highlighting purposes.
class Highlighter {
  /// The theme that defines the styles for different token types.
  final SyntaxTheme theme;

  late final RegExp _combinedPattern;

  /// A map of token types to their corresponding regular expression patterns.
  /// The order is critical for matching, from most specific to most general.
  static final Map<TokenType, String> _patterns = {
    TokenType.comment: r'//[^\n]*|/\*[\s\S]*?\*/',
    TokenType.specialKeyword:
        r'\b(import|const|void|extends|class|static|final|var|late|new|this|required|super|with|enum|assert|export|part|library)\b',
    TokenType.storageModifier:
        r'\b(@override|return|if|else|for|while|do|switch|case|default|break|continue|throw|try|catch|finally|async|await|yield)\b',
    TokenType.keyword: r'\b(as|is|in)\b',
    TokenType.type: r'\b(_?[A-Z][a-zA-Z0-9]*|int|double|String|bool)\b',
    TokenType.function: r'\b[a-zA-Z_][a-zA-Z0-9_]*(?=\()',
    TokenType.literal: r'\b(true|false|null)\b',
    TokenType.number: r'\b\d+(\.\d+)?\b',
    TokenType.punctuation: r'[\.,;:?]',
    TokenType.bracket: r'[\(\)\[\]\{\}]',
    TokenType.variable: r'\b[a-zA-Z_][a-zA-Z0-9_]*',
    TokenType.newline: r'\n',
    TokenType.identifier: r'\s',
  };

  /// Creates a new [Highlighter] instance.
  ///
  /// The [theme] provides the [TextStyle] for each token type.
  Highlighter(this.theme) {
    _combinedPattern = RegExp(
      _patterns.entries
          .map((entry) => '(?<${entry.key.name}>${entry.value})')
          .join('|'),
      dotAll: true,
    );
  }

  /// Gets the [TextStyle] for a given [SyntaxToken] based on the theme.
  ///
  /// The style is determined by the token's [TokenType]. For brackets,
  /// the nesting level is used to cycle through three different styles.
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

  /// Tokenizes a string of source code into a list of [SyntaxToken]s.
  ///
  /// The tokenization process parses the input string, identifying syntax
  /// elements like keywords, strings, comments, and brackets, and converts
  /// them into a list of tokens.
  List<SyntaxToken> tokenize(String source) {
    final tokens = <SyntaxToken>[];
    final bracketStack = <String>[];
    int currentIndex = 0;

    while (currentIndex < source.length) {
      final currentChar = source[currentIndex];

      // Special case for strings, which is too complex for the main regex.
      if (currentChar == "'" || currentChar == '"') {
        currentIndex = _handleString(source, currentIndex, tokens);
        continue;
      }

      final match =
          _combinedPattern.matchAsPrefix(source, currentIndex) as RegExpMatch?;

      if (match != null) {
        final matchedValue = match.group(0)!;
        TokenType? matchedType;

        for (final entry in _patterns.entries) {
          if (match.namedGroup(entry.key.name) != null) {
            matchedType = entry.key;
            break;
          }
        }

        _addToken(
          matchedType ?? TokenType.identifier,
          matchedValue,
          tokens,
          bracketStack,
        );
        currentIndex += matchedValue.length;
      } else {
        // Fallback for any character not matched by the main regex.
        _addToken(
          TokenType.identifier,
          source[currentIndex],
          tokens,
          bracketStack,
        );
        currentIndex++;
      }
    }

    if (!source.endsWith('\n')) {
      tokens.add(SyntaxToken(TokenType.newline, '\n'));
    }

    return tokens;
  }

  /// Adds a token to the list, managing the bracket stack for nesting levels.
  void _addToken(
    TokenType type,
    String value,
    List<SyntaxToken> tokens,
    List<String> bracketStack,
  ) {
    if (type == TokenType.bracket) {
      if ('({['.contains(value)) {
        tokens.add(SyntaxToken(type, value, level: bracketStack.length));
        bracketStack.add(value);
      } else {
        if (bracketStack.isNotEmpty) bracketStack.removeLast();
        tokens.add(SyntaxToken(type, value, level: bracketStack.length));
      }
    } else {
      tokens.add(SyntaxToken(type, value));
    }
  }

  /// Handles parsing of string literals, including interpolation.
  /// Returns the new `currentIndex` after the string has been processed.
  int _handleString(String source, int currentIndex, List<SyntaxToken> tokens) {
    final quoteType =
        (source.substring(currentIndex).startsWith("'''") ||
            source.substring(currentIndex).startsWith('"""'))
        ? source.substring(currentIndex, currentIndex + 3)
        : source[currentIndex];

    tokens.add(SyntaxToken(TokenType.string, quoteType));
    int i = currentIndex + quoteType.length;
    final stringContent = StringBuffer();

    while (i < source.length) {
      if (source.substring(i).startsWith(quoteType)) {
        if (stringContent.isNotEmpty) {
          tokens.add(SyntaxToken(TokenType.string, stringContent.toString()));
        }
        tokens.add(SyntaxToken(TokenType.string, quoteType));
        return i + quoteType.length;
      }

      if (source[i] == r'\') {
        if (i + 1 < source.length) {
          stringContent.write(source.substring(i, i + 2));
          i += 2;
          continue;
        }
      }

      if (source[i] == r'$') {
        if (stringContent.isNotEmpty) {
          tokens.add(SyntaxToken(TokenType.string, stringContent.toString()));
          stringContent.clear();
        }

        if (i + 1 < source.length && source[i + 1] == '{') {
          // Handle nested interpolation: ${...}
          tokens.add(SyntaxToken(TokenType.punctuation, r'${'));
          i += 2;

          int braceLevel = 1;
          final expressionStart = i;
          while (i < source.length) {
            if (source[i] == '{') braceLevel++;
            if (source[i] == '}') braceLevel--;
            if (braceLevel == 0) break;
            i++;
          }

          if (i < source.length) {
            final expressionSource = source.substring(expressionStart, i);
            // Recursively tokenize the inner expression.
            final innerTokens = tokenize(
              expressionSource,
            ).where((t) => t.type != TokenType.newline);
            tokens.addAll(innerTokens);
            tokens.add(SyntaxToken(TokenType.punctuation, '}'));
            i++;
          } else {
            // Unmatched opening brace, treat as a normal string.
            tokens.add(
              SyntaxToken(
                TokenType.string,
                source.substring(expressionStart - 2),
              ),
            );
            return source.length;
          }
        } else {
          // Handle simple variable interpolation: $variable
          final match = RegExp(
            r'[a-zA-Z_][a-zA-Z0-9_]*',
          ).matchAsPrefix(source, i + 1);
          if (match != null) {
            tokens.add(SyntaxToken(TokenType.punctuation, r'$'));
            tokens.add(SyntaxToken(TokenType.variable, match.group(0)!));
            i += 1 + match.group(0)!.length;
          } else {
            stringContent.write(r'$');
            i++;
          }
        }
      } else {
        stringContent.write(source[i]);
        i++;
      }
    }

    // Unclosed string
    if (stringContent.isNotEmpty) {
      tokens.add(SyntaxToken(TokenType.string, stringContent.toString()));
    }

    return i;
  }
}
