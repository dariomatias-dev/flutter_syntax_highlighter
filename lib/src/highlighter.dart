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
      case TokenType.identifier:
      case TokenType.newline:
        return theme.baseStyle;
    }
  }

  List<SyntaxToken> tokenize(String source) {
    if (!source.endsWith('\n')) {
      source += '\n';
    }

    final tokens = <SyntaxToken>[];
    final bracketStack = <String>[];
    int currentIndex = 0;

    final patterns = <Pattern, TokenType>{
      RegExp(r'\b(import|const|void)\b'): TokenType.specialKeyword,
      RegExp(r'\b(@override|return)\b'): TokenType.storageModifier,
      RegExp(
        r'\b(extends|class|final|var|new|this|super|if|else|for|while|do|switch|case|default|break|continue|as|is|in|throw|try|catch|finally|async|await|yield|export|part|of|library|with|enum|assert)\b',
      ): TokenType.keyword,
      RegExp(r'\b(_?[A-Z][a-zA-Z0-9]*|int|double|String|bool)\b'):
          TokenType.type,
      RegExp(r'\b(setState|build|main|runApp|createState)\b'):
          TokenType.function,
      RegExp(r'\b(true|false|null)\b'): TokenType.literal,
      RegExp(r'//[^\n]*'): TokenType.comment,
      RegExp(r"/\*[\s\S]*?\*/"): TokenType.comment,
      RegExp(r"'.*?'"): TokenType.string,
      RegExp(r'".*?"'): TokenType.string,
      RegExp(r'\b\d+(\.\d+)?\b'): TokenType.number,
      RegExp(r'[\.,;]'): TokenType.punctuation,
      RegExp(r'\b[a-zA-Z_][a-zA-Z0-9_]*\b'): TokenType.variable,
    };

    while (currentIndex < source.length) {
      bool matchFound = false;

      if (source[currentIndex] == '\n') {
        tokens.add(SyntaxToken(TokenType.newline, '\n'));
        currentIndex++;
        continue;
      }

      if (RegExp(r'\s').hasMatch(source[currentIndex])) {
        tokens.add(SyntaxToken(TokenType.identifier, source[currentIndex]));
        currentIndex++;
        continue;
      }

      final openBracketMatch = RegExp(
        r'[\(\[\{]',
      ).matchAsPrefix(source, currentIndex);
      if (openBracketMatch != null) {
        final bracket = openBracketMatch.group(0)!;
        final level = bracketStack.length;
        bracketStack.add(bracket);
        tokens.add(SyntaxToken(TokenType.bracket, bracket, level: level));
        currentIndex += bracket.length;
        continue;
      }

      final closeBracketMatch = RegExp(
        r'[\)\]\}]',
      ).matchAsPrefix(source, currentIndex);
      if (closeBracketMatch != null) {
        final bracket = closeBracketMatch.group(0)!;
        if (bracketStack.isNotEmpty) bracketStack.removeLast();

        final level = bracketStack.length;
        tokens.add(SyntaxToken(TokenType.bracket, bracket, level: level));
        currentIndex += bracket.length;
        continue;
      }

      for (final entry in patterns.entries) {
        final match = entry.key.matchAsPrefix(source, currentIndex);
        if (match != null) {
          tokens.add(SyntaxToken(entry.value, match.group(0)!));
          currentIndex += match.group(0)!.length;
          matchFound = true;
          break;
        }
      }

      if (!matchFound) {
        tokens.add(SyntaxToken(TokenType.identifier, source[currentIndex]));
        currentIndex++;
      }
    }

    return tokens;
  }
}
