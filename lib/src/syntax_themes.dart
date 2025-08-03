import 'package:flutter_syntax_highlighter/src/syntax_theme.dart';

import 'package:flutter_syntax_highlighter/src/themes/dark_high_contrast_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/light_high_contrast_theme.dart';

class SyntaxThemes {
  SyntaxThemes._();

  static final SyntaxTheme lightHighContrastTheme = const LightHighContrastTheme();

  static final SyntaxTheme darkHighContrast = const DarkHighContrastTheme();
}
