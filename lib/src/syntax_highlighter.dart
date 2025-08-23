import 'package:flutter/material.dart';

import 'package:flutter_syntax_highlighter/src/highlighter.dart';
import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';
import 'package:flutter_syntax_highlighter/src/syntax_themes.dart';
import 'package:flutter_syntax_highlighter/src/token_type.dart';

/// Displays Dart/Flutter source code with syntax highlighting and optional line numbers and selection.
class SyntaxHighlighter extends StatefulWidget {
  const SyntaxHighlighter({
    super.key,
    required this.code,
    this.isDarkMode = false,
    this.darkColorSchema,
    this.lightColorSchema,
    this.fontSize = 14.0,
    this.lineHeight = 1.35,
    this.showLineNumbers = true,
    this.enableCodeSelection = true,
    this.maxCharCount,
    this.lineNumberOffset = 1,
  });

  /// The Dart/Flutter source code to be highlighted.
  final String code;

  /// Whether to use the dark theme.
  final bool isDarkMode;

  /// The syntax theme to use when the brightness is dark.
  final SyntaxColorSchema? darkColorSchema;

  /// The syntax theme to use when the brightness is light.
  final SyntaxColorSchema? lightColorSchema;

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

  /// Initial value for line numbering.
  final int lineNumberOffset;

  @override
  State<SyntaxHighlighter> createState() => _SyntaxHighlighterState();
}

class _SyntaxHighlighterState extends State<SyntaxHighlighter> {
  late List<TextSpan> _lines;
  late Highlighter _highlighter;
  late SyntaxColorSchema _syntaxColorSchema;
  late int _maxDigits;
  late double _lineNumberWidth;

  void _setupAndProcess() {
    _syntaxColorSchema = widget.isDarkMode
        ? (widget.darkColorSchema ?? SyntaxThemes.vsCodeDark)
        : (widget.lightColorSchema ?? SyntaxThemes.vsCodeLight);
    _highlighter = Highlighter(_syntaxColorSchema);

    _maxDigits =
        widget.maxCharCount ??
        (('\n'.allMatches(widget.code).length + widget.lineNumberOffset)
            .toString()
            .length);

    _lineNumberWidth = _calculateLineNumberWidth(
      fontSize: widget.fontSize,
      maxLineNumberDigits: _maxDigits,
    );

    _lines = _processCode();
  }

  List<TextSpan> _processCode() {
    final tokens = _highlighter.tokenize(widget.code);
    final processedLines = <TextSpan>[];
    var currentLineSpans = <TextSpan>[];

    for (final token in tokens) {
      if (token.type == TokenType.newline) {
        processedLines.add(TextSpan(children: List.of(currentLineSpans)));
        currentLineSpans.clear();
      } else if (token.value.contains('\n')) {
        final linesInToken = token.value.split('\n');
        for (var i = 0; i < linesInToken.length; i++) {
          final line = linesInToken[i];
          if (line.isNotEmpty) {
            currentLineSpans.add(
              TextSpan(
                text: line,
                style: TextStyle(
                  color: _highlighter.getStyleForToken(token),
                  fontSize: widget.fontSize,
                ),
              ),
            );
          }
          if (i < linesInToken.length - 1) {
            processedLines.add(TextSpan(children: List.of(currentLineSpans)));
            currentLineSpans.clear();
          }
        }
      } else {
        currentLineSpans.add(
          TextSpan(
            text: token.value,
            style: TextStyle(
              color: _highlighter.getStyleForToken(token),
              fontSize: widget.fontSize,
            ),
          ),
        );
      }
    }

    if (currentLineSpans.isNotEmpty) {
      processedLines.add(TextSpan(children: List.of(currentLineSpans)));
    }

    return processedLines;
  }

  double _calculateLineNumberWidth({
    required double fontSize,
    required int maxLineNumberDigits,
  }) {
    const characterWidthFactor = 0.6;
    const extraSpacing = 8.0;

    final characterWidth = fontSize * characterWidthFactor;
    final numberWidth = characterWidth * maxLineNumberDigits;

    return numberWidth + extraSpacing;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _setupAndProcess();
  }

  @override
  void didUpdateWidget(SyntaxHighlighter oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.code != widget.code ||
        oldWidget.isDarkMode != widget.isDarkMode ||
        oldWidget.darkColorSchema != widget.darkColorSchema ||
        oldWidget.lightColorSchema != widget.lightColorSchema ||
        oldWidget.fontSize != widget.fontSize ||
        oldWidget.lineNumberOffset != widget.lineNumberOffset) {
      _setupAndProcess();
    }
  }

  @override
  Widget build(BuildContext context) {
    final lineWidgets = <Widget>[];

    for (int index = 0; index < _lines.length; index++) {
      final line = _lines[index];
      final lineNumber = widget.lineNumberOffset + index;

      lineWidgets.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (widget.showLineNumbers)
              SelectionContainer.disabled(
                child: Container(
                  width: _lineNumberWidth,
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    lineNumber.toString(),
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: _syntaxColorSchema.lineNumberStyle,
                      height: widget.lineHeight,
                      fontSize: widget.fontSize,
                    ),
                  ),
                ),
              ),
            Expanded(
              child: Text.rich(
                line,
                style: TextStyle(
                  color: _syntaxColorSchema.baseStyle,
                  height: widget.lineHeight,
                ),
              ),
            ),
          ],
        ),
      );
    }

    final codeBlock = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: lineWidgets,
    );

    return widget.enableCodeSelection
        ? SelectionArea(child: codeBlock)
        : codeBlock;
  }
}
