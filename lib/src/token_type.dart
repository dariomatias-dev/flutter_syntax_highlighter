/// Represents the type of a token used in syntax highlighting.
enum TokenType {
  /// A regular identifier (e.g. variable or function name).
  identifier,

  /// A language keyword (e.g. `if`, `else`, `class`).
  keyword,

  /// A special control keyword (e.g. `return`, `throw`, `yield`).
  specialKeyword,

  /// A modifier that affects storage or visibility (e.g. `const`, `final`, `static`).
  storageModifier,

  /// A type identifier (e.g. `int`, `String`, custom class names).
  type,

  /// A function or method name.
  function,

  /// A literal value (e.g. `true`, `false`, `null`).
  literal,

  /// A comment (e.g. `//`, `/* */`, `///`).
  comment,

  /// A punctuation character (e.g. `;`, `,`, `.`).
  punctuation,

  /// A string literal (e.g. `'text'`, `"value"`).
  string,

  /// A numeric literal (e.g. `42`, `3.14`).
  number,

  /// A bracket character (e.g. `{}`, `[]`, `()`).
  bracket,

  /// A line break or newline character (`\n`).
  newline,

  /// A variable name.
  variable,
}
