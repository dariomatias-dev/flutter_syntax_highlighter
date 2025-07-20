import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/highlighter.dart';
import 'package:flutter_syntax_highlighter/src/syntax_theme.dart';
import 'package:flutter_syntax_highlighter/src/token_type.dart';

/// Displays Dart/Flutter source code with syntax highlighting and optional line numbers and selection.
class SyntaxHighlighter extends StatelessWidget {
  const SyntaxHighlighter({
    super.key,
    required this.code,
    this.isDarkMode = false,
    this.fontSize = 14.0,
    this.lineHeight = 1.35,
    this.showLineNumbers = true,
    this.enableCodeSelection = true,
    this.maxCharCount,
  });

  /// The Dart/Flutter source code to be highlighted.
  final String code;

  /// Whether to use the dark theme.
  final bool isDarkMode;

  /// Font size for the code.
  final double fontSize;

  /// Line height for the code.
  final double lineHeight;

  /// Whether to show line numbers.
  final bool showLineNumbers;

  /// Whether to enable code selection.
  final bool enableCodeSelection;

  /// Maximum number of characters for line numbering.
  final int? maxCharCount;

  double _calculateLineWidth({
    required double fontSize,
    required double lineHeight,
    required int maxLineNumberDigits,
  }) {
    const characterWidthFactor = 0.6;
    const extraSpacing = 8.0;

    final characterWidth = fontSize * characterWidthFactor;
    final numberWidth = characterWidth * maxLineNumberDigits;

    return numberWidth + extraSpacing;
  }

  @override
  Widget build(BuildContext context) {
    final baseTheme = isDarkMode ? SyntaxTheme.dark() : SyntaxTheme.light();
    final theme = baseTheme.copyWithFontSize(fontSize);
    final highlighter = Highlighter(theme);

    final tokens = highlighter.tokenize(code);

    final lineWidgets = <Widget>[];
    var currentLineSpans = <TextSpan>[];
    var lineNumber = 1;

    final maxDigits =
        maxCharCount ?? ('\n'.allMatches(code).length + 1).toString().length;

    final lineWidth = _calculateLineWidth(
      fontSize: fontSize,
      lineHeight: lineHeight,
      maxLineNumberDigits: maxDigits,
    );

    void addLine() {
      lineWidgets.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (showLineNumbers)
              SelectionContainer.disabled(
                child: Container(
                  width: lineWidth,
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    lineNumber.toString(),
                    textAlign: TextAlign.right,
                    style: theme.lineNumberStyle.copyWith(height: lineHeight),
                  ),
                ),
              ),
            Expanded(
              child: Text.rich(
                TextSpan(
                  style: theme.baseStyle.copyWith(height: lineHeight),
                  children: List.of(currentLineSpans),
                ),
              ),
            ),
          ],
        ),
      );

      currentLineSpans.clear();
      lineNumber++;
    }

    for (final token in tokens) {
      if (token.type == TokenType.newline) {
        addLine();
      } else if (token.value.contains('\n')) {
        final lines = token.value.split('\n');
        for (var i = 0; i < lines.length; i++) {
          final line = lines[i];
          if (line.isNotEmpty) {
            currentLineSpans.add(
              TextSpan(text: line, style: highlighter.getStyleForToken(token)),
            );
          }
          if (i < lines.length - 1) {
            addLine();
          }
        }
      } else {
        currentLineSpans.add(
          TextSpan(
            text: token.value,
            style: highlighter.getStyleForToken(token),
          ),
        );
      }
    }

    if (currentLineSpans.isNotEmpty) {
      addLine();
    }

    final codeBlock = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: lineWidgets,
    );

    return enableCodeSelection ? SelectionArea(child: codeBlock) : codeBlock;
  }
}
