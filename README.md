# Flutter Syntax Highlighter

[![pub package](https://img.shields.io/pub/v/flutter_syntax_highlighter.svg)](https://pub.dev/packages/flutter_syntax_highlighter)
[![likes](https://img.shields.io/pub/likes/flutter_syntax_highlighter)](https://pub.dev/packages/flutter_syntax_highlighter/score)
[![points](https://img.shields.io/pub/points/flutter_syntax_highlighter)](https://pub.dev/packages/flutter_syntax_highlighter/score)
[![popularity](https://img.shields.io/pub/popularity/flutter_syntax_highlighter)](https://pub.dev/packages/flutter_syntax_highlighter/score)

A widget for syntax highlighting of Dart and Flutter code, with support for light and dark themes, line numbers, and code selection.

### Screenshots – All Available Themes

Below you can find previews for all the themes provided by the package:

| Theme                | Preview                                                                                                                                                    |
| -------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A11y Light           | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/a11y_light.jpg" width="300" />          |
| A11y Dark            | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/a11y_dark.jpg" width="300" />           |
| Android Studio Light | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/android_studio_light.jpg" width="300" /> |
| Android Studio Dark  | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/android_studio_dark.jpg" width="300" />  |
| Atom One Light       | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/atom_one_light.jpg" width="300" />      |
| Atom One Dark        | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/atom_one_dark.jpg" width="300" />       |
| Cobalt2              | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/cobalt2.jpg" width="300" />             |
| Dark High Contrast   | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/dark_high_contrast.jpg" width="300" />  |
| Dracula              | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/dracula.jpg" width="300" />             |
| GitHub Light         | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/github_light.jpg" width="300" />        |
| GitHub Dark          | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/github_dark.jpg" width="300" />         |
| Light High Contrast  | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/light_high_contrast.jpg" width="300" /> |
| Material Oceanic     | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/material_oceanic.jpg" width="300" />    |
| Monokai              | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/monokai.jpg" width="300" />             |
| Night Owl            | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/night_owl.jpg" width="300" />           |
| Nord                 | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/nord.jpg" width="300" />                |
| One Dark Pro         | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/one_dark_pro.jpg" width="300" />        |
| Panda Syntax         | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/panda_syntax.jpg" width="300" />        |
| Solarized Light      | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/solarized_light.jpg" width="300" />     |
| Solarized Dark       | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/solarized_dark.jpg" width="300" />      |
| StackOverflow Light  | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/stack_overflow_light.jpg" width="300" /> |
| StackOverflow Dark   | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/stack_overflow_dark.jpg" width="300" />  |
| SynthWave84          | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/synthwave84.jpg" width="300" />         |
| VSCode Light         | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/vs_code_light.jpg" width="300" />        |
| VSCode Dark          | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/vs_code_dark.jpg" width="300" />         |
| Xcode Light          | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/xcode_light.jpg" width="300" />         |
| Xcode Dark           | <img src="https://raw.githubusercontent.com/dariomatias-dev/flutter_syntax_highlighter/refs/heads/main/screenshots/xcode_dark.jpg" width="300" />          |

## Installation

Run this command:

```bash
flutter pub add flutter_syntax_highlighter
```

## Usage Example

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

## Properties

| Property              | Type     | Description                                 |
| --------------------- | -------- | ------------------------------------------- |
| `code`                | `String` | Source code to be displayed.                |
| `isDarkMode`          | `bool`   | Enables dark theme for syntax highlighting. |
| `showLineNumbers`     | `bool`   | Displays line numbers next to the code.     |
| `enableCodeSelection` | `bool`   | Allows selection of the displayed text.     |

## License

This project is licensed under the [MIT License](LICENSE).

# Author

This Flutter package was developed by [Dário Matias](https://github.com/dariomatias-dev).

# Donations

Help maintain the project with donations.

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/dariomatias)
