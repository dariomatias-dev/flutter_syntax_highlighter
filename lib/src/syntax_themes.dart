import 'package:flutter_syntax_highlighter/src/syntax_color_schema.dart';
import 'package:flutter_syntax_highlighter/src/themes/a11y_dark_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/a11y_light_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/androidstudio_dark_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/androidstudio_light_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/atom_one_dark_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/atom_one_light_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/cobalt2_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/dark_high_contrast_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/dracula_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/github_dark_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/github_light_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/light_high_contrast_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/material_oceanic_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/monokai_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/night_owl_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/nord_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/one_dark_pro_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/panda_syntax_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/solarized_dark_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/solarized_light_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/stackoverflow_dark_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/stackoverflow_light_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/synthwave_84_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/vs_code_dark_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/vs_code_light_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/xcode_dark_theme.dart';
import 'package:flutter_syntax_highlighter/src/themes/xcode_light_theme.dart';

class SyntaxThemes {
  SyntaxThemes._();

  static final SyntaxColorSchema a11yDark = const A11yDarkTheme();

  static final SyntaxColorSchema a11yLight = const A11yLightTheme();

  static final SyntaxColorSchema androidstudioDark =
      const AndroidStudioDarkTheme();

  static final SyntaxColorSchema androidstudioLight =
      const AndroidStudioLightTheme();

  static final SyntaxColorSchema atomOneDark = const AtomOneDarkTheme();

  static final SyntaxColorSchema atomOneLight = const AtomOneLightTheme();

  static final SyntaxColorSchema cobalt2 = const Cobalt2Theme();

  static final SyntaxColorSchema darkHighContrast =
      const DarkHighContrastTheme();

  static final SyntaxColorSchema dracula = const DraculaTheme();

  static final SyntaxColorSchema githubDark = const GitHubDarkTheme();

  static final SyntaxColorSchema githubLight = const GitHubLightTheme();

  static final SyntaxColorSchema lightHighContrast =
      const LightHighContrastTheme();

  static final SyntaxColorSchema materialOceanic = const MaterialOceanicTheme();

  static final SyntaxColorSchema monokai = const MonokaiTheme();

  static final SyntaxColorSchema nightOwl = const NightOwlTheme();

  static final SyntaxColorSchema nord = const NordTheme();

  static final SyntaxColorSchema oneDarkPro = const OneDarkProTheme();

  static final SyntaxColorSchema pandaSyntax = const PandaSyntaxTheme();

  static final SyntaxColorSchema solarizedDark = const SolarizedDarkTheme();

  static final SyntaxColorSchema solarizedLight = const SolarizedLightTheme();

  static final SyntaxColorSchema stackoverflowDark =
      const StackOverflowDarkTheme();

  static final SyntaxColorSchema stackoverflowLight =
      const StackOverflowLightTheme();

  static final SyntaxColorSchema synthwave84 = const SynthWave84Theme();

  static final SyntaxColorSchema vsCodeDark = const VSCodeDarkTheme();

  static final SyntaxColorSchema vsCodeLight = const VSCodeLightTheme();

  static final SyntaxColorSchema xcodeDark = const XcodeDarkTheme();

  static final SyntaxColorSchema xcodeLight = const XcodeLightTheme();
}
