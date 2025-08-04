import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';

import 'package:flutter_syntax_highlighter/src/themes/dark_high_contrast_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/light_high_contrast_theme.dart';

class SyntaxThemes {
  SyntaxThemes._();

  static final SyntaxColorSchema lightHighContrast =
      const LightHighContrastTheme();

  static final SyntaxColorSchema darkHighContrast =
      const DarkHighContrastTheme();
}
