<br>
<div align="center">
<img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter">
<img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart">
</div>
<br>

# <div align="center">Flutter Syntax Highlighter</div>

<p align="center">
A widget for syntax highlighting of Dart and Flutter code, with support for light and dark themes, line numbers, and code selection.
<br>
<a href="#about-the-project"><strong>Explore the docs »</strong></a>
<br><br>
<a href="https://pub.dev/packages/flutter_syntax_highlighter">View on pub.dev</a>
·
<a href="https://github.com/dariomatias-dev/flutter_syntax_highlighter/issues">Report Bug</a>
·
<a href="https://github.com/dariomatias-dev/flutter_syntax_highlighter/issues">Request Feature</a>
</p>

<div align="center">
<img src="https://img.shields.io/pub/v/flutter_syntax_highlighter.svg" alt="Pub Version">
<img src="https://img.shields.io/pub/likes/flutter_syntax_highlighter" alt="Pub Likes">
<img src="https://img.shields.io/pub/points/flutter_syntax_highlighter" alt="Pub Points">
<img src="https://img.shields.io/pub/popularity/flutter_syntax_highlighter" alt="Pub Popularity">
</div>

---

## Table of Contents

- [About The Project](#about-the-project)
- [Features](#features)
- [Built With](#built-with)
- [Screenshots](#screenshots)
- [Getting Started](#getting-started)
- [Usage](#usage)
  - [Basic Usage](#basic-usage)
  - [Using Custom Themes](#using-custom-themes)
- [Properties](#properties)
- [Contributing](#contributing)
- [License](#license)
- [Author](#author)

---

## About The Project

Flutter Syntax Highlighter is a widget designed to display Dart and Flutter code blocks cleanly and legibly within a Flutter application. It formats the code with appropriate colors and styles, simulating the appearance of a professional code editor.

The package supports multiple themes, both light and dark, and allows for customizations such as displaying line numbers and enabling text selection, making it ideal for tutorials, documentation, or any app that needs to present source code elegantly.

---

## Features

- **Syntax Highlighting:** Automatically formats Dart and Flutter code.
- **Multiple Themes:** Includes a vast collection of popular themes like Dracula, Nord, Atom One, GitHub, and VSCode.
- **Customizable Themes:** Define your own color schemes by extending the `SyntaxColorSchema` class.
- **Light and Dark Mode:** Adapts syntax highlighting based on the application's theme.
- **Line Numbers:** Option to show or hide line numbers next to the code.
- **Code Selection:** Allows users to select and copy text from the code block.
- **Easy to Use:** Simple integration with a single widget.

---

## Built With

- **[Flutter](https://flutter.dev/)** – A UI toolkit by Google for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.  
- **[Dart](https://dart.dev/)** – The programming language used for Flutter, optimized for building fast apps on any platform.

---

## Screenshots

Below you can find previews for all the themes provided by the package:

| Theme                | Preview                                                                                                                                                     |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A11y Light           | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/a11y_light.jpg" width="300" />           |
| A11y Dark            | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/a11y_dark.jpg" width="300" />            |
| Android Studio Light | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/android_studio_light.jpg" width="300" /> |
| Android Studio Dark  | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/android_studio_dark.jpg" width="300" />  |
| Atom One Light       | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/atom_one_light.jpg" width="300" />       |
| Atom One Dark        | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/atom_one_dark.jpg" width="300" />        |
| Cobalt2              | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/cobalt2.jpg" width="300" />              |
| Dark High Contrast   | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/dark_high_contrast.jpg" width="300" />   |
| Dracula              | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/dracula.jpg" width="300" />              |
| GitHub Light         | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/github_light.jpg" width="300" />         |
| GitHub Dark          | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/github_dark.jpg" width="300" />          |
| Light High Contrast  | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/light_high_contrast.jpg" width="300" />  |
| Material Oceanic     | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/material_oceanic.jpg" width="300" />     |
| Monokai              | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/monokai.jpg" width="300" />              |
| Night Owl            | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/night_owl.jpg" width="300" />            |
| Nord                 | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/nord.jpg" width="300" />                 |
| One Dark Pro         | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/one_dark_pro.jpg" width="300" />         |
| Panda Syntax         | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/panda_syntax.jpg" width="300" />         |
| Solarized Light      | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/solarized_light.jpg" width="300" />      |
| Solarized Dark       | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/solarized_dark.jpg" width="300" />       |
| StackOverflow Light  | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/stack_overflow_light.jpg" width="300" /> |
| StackOverflow Dark   | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/stack_overflow_dark.jpg" width="300" />  |
| SynthWave84          | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/synthwave84.jpg" width="300" />          |
| VSCode Light         | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/vs_code_light.jpg" width="300" />        |
| VSCode Dark          | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/vs_code_dark.jpg" width="300" />         |
| Xcode Light          | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/xcode_light.jpg" width="300" />          |
| Xcode Dark           | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/xcode_dark.jpg" width="300" />           |

---

## Getting Started

To install the package, run the following command in your project terminal:

```bash
flutter pub add flutter_syntax_highlighter
```

---

## Usage

### Basic Usage

```dart
import 'package:flutter/material.dart';
import 'package:flutter_syntax_highlighter/flutter_syntax_highlighter.dart';

void main() {
  runApp(const MyApp());
}

const String sampleCode = '''
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Text(
          'Count: $_count',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

''';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;
  bool _showLineNumbers = true;
  bool _enableCodeSelection = true;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  void _toggleLineNumbers() {
    setState(() {
      _showLineNumbers = !_showLineNumbers;
    });
  }

  void _toggleCodeSelection() {
    setState(() {
      _enableCodeSelection = !_enableCodeSelection;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Syntax Highlighter',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Syntax Highlighter'),
          actions: <Widget>[
            IconButton(
              icon: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: _toggleTheme,
              tooltip: 'Toggle Theme',
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SwitchListTile(
                title: const Text('Show Line Numbers'),
                value: _showLineNumbers,
                onChanged: (value) => _toggleLineNumbers(),
              ),
              SwitchListTile(
                title: const Text('Enable Code Selection'),
                value: _enableCodeSelection,
                onChanged: (value) => _toggleCodeSelection(),
              ),
              SizedBox(height: 12.0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: SyntaxHighlighter(
                      code: sampleCode,
                      isDarkMode: _isDarkMode,
                      showLineNumbers: _showLineNumbers,
                      enableCodeSelection: _enableCodeSelection,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Using Custom Themes

```dart
import 'package:flutter/material.dart';
import 'package:flutter_syntax_highlighter/flutter_syntax_highlighter.dart';

void main() {
  runApp(const MyApp());
}

class MyLightSyntaxTheme extends SyntaxColorSchema {
  const MyLightSyntaxTheme()
    : super(
        baseStyle: const Color(0xFF2B2B2B),
        lineNumberStyle: const Color(0xFFAAAAAA),
        keywordStyle: const Color(0xFF8959A8),
        specialKeywordStyle: const Color(0xFFAA5DCD),
        storageModifierStyle: const Color(0xFFAA5DCD),
        typeStyle: const Color(0xFF3E999F),
        functionStyle: const Color(0xFF4271AE),
        literalStyle: const Color(0xFF795E26),
        commentStyle: const Color(0xFF8E908C),
        punctuationStyle: const Color(0xFF2B2B2B),
        stringStyle: const Color(0xFF718C00),
        numberStyle: const Color(0xFF0992D6),
        bracket1Style: const Color(0xFF3E9F5E),
        bracket2Style: const Color(0xFFD67F00),
        bracket3Style: const Color(0xFFD64F4F),
        variableStyle: const Color(0xFF4271AE),
      );
}

class MyDarkSyntaxTheme extends SyntaxColorSchema {
  const MyDarkSyntaxTheme()
      : super(
          baseStyle: const Color(0xFFE0E0E0),
          lineNumberStyle: const Color(0xFF7F8C8D),
          keywordStyle: const Color(0xFF81A2BE),
          specialKeywordStyle: const Color(0xFFB294BB),
          storageModifierStyle: const Color(0xFFB294BB),
          typeStyle: const Color(0xFFF0C674),
          functionStyle: const Color(0xFF8ABEB7),
          literalStyle: const Color(0xFFDE935F),
          commentStyle: const Color(0xFF969896),
          punctuationStyle: const Color(0xFFE0E0E0),
          stringStyle: const Color(0xFFB5BD68),
          numberStyle: const Color(0xFFDE935F),
          bracket1Style: const Color(0xFFA0E8A5),
          bracket2Style: const Color(0xFFD5A0E8),
          bracket3Style: const Color(0xFFE8A0A0),
          variableStyle: const Color(0xFF8ABEB7),
        );
}

const String sampleCode = '''
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Text(
          'Count: \$_count',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

''';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;
  bool _showLineNumbers = true;
  bool _enableCodeSelection = true;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  void _toggleLineNumbers() {
    setState(() {
      _showLineNumbers = !_showLineNumbers;
    });
  }

  void _toggleCodeSelection() {
    setState(() {
      _enableCodeSelection = !_enableCodeSelection;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Syntax Highlighter',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Syntax Highlighter'),
          actions: <Widget>[
            IconButton(
              icon: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: _toggleTheme,
              tooltip: 'Toggle Theme',
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SwitchListTile(
                title: const Text('Show Line Numbers'),
                value: _showLineNumbers,
                onChanged: (value) => _toggleLineNumbers(),
              ),
              SwitchListTile(
                title: const Text('Enable Code Selection'),
                value: _enableCodeSelection,
                onChanged: (value) => _toggleCodeSelection(),
              ),
              SizedBox(height: 12.0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: SyntaxHighlighter(
                      code: sampleCode,
                      isDarkMode: _isDarkMode,
                      darkColorSchema: MyDarkSyntaxTheme(),
                      lightColorSchema: MyLightSyntaxTheme(),
                      showLineNumbers: _showLineNumbers,
                      enableCodeSelection: _enableCodeSelection,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

---

## Properties

| Property            | Type               | Default                        | Description                                           |
| ------------------- | ------------------ | ------------------------------ | ----------------------------------------------------- |
| code                | String             | –                              | The source code to be displayed.                      |
| isDarkMode          | bool               | false                          | Toggles between light and dark mode.                  |
| lightColorSchema    | SyntaxColorSchema? | SyntaxThemes.lightHighContrast | Custom color scheme for light mode.                   |
| darkColorSchema     | SyntaxColorSchema? | SyntaxThemes.darkHighContrast  | Custom color scheme for dark mode.                    |
| fontSize            | double             | 14.0                           | Font size for the code text.                          |
| lineHeight          | double             | 1.35                           | Height of each line of code.                          |
| showLineNumbers     | bool               | true                           | Displays line numbers next to the code.               |
| enableCodeSelection | bool               | true                           | Allows selection of the displayed text.               |
| maxCharCount        | int?               | null                           | Maximum number of characters for the line numbering.  |
| lineNumberOffset    | int                | 1                              | The starting number for line count.                   |

---

## Contributing

1. Fork the project.
2. Create a feature branch:

```bash
git checkout -b feature/AmazingFeature
```

3. Commit changes:

```bash
git commit -m 'Add some AmazingFeature'
```

4. Push to branch:

```bash
git push origin feature/AmazingFeature
```

5. Open a Pull Request.

---

## License

Distributed under the **MIT License**. See the [LICENSE](LICENSE) file for more information.

---

## Author

Developed by **Dário Matias**:

- **Portfolio**: [dariomatias-dev](https://dariomatias-dev.com)
- **GitHub**: [dariomatias-dev](https://github.com/dariomatias-dev)
- **Email**: [matiasdario75@gmail.com](mailto:matiasdario75@gmail.com)
- **Instagram**: [@dariomatias_dev](https://instagram.com/dariomatias_dev)
- **LinkedIn**: [linkedin.com/in/dariomatias-dev](https://linkedin.com/in/dariomatias-dev)
