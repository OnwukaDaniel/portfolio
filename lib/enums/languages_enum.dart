import 'package:flutter/foundation.dart';

enum LanguagesEnum{
  dart("dart"),
  python("python"),
  java("java"),
  kotlin("kotlin"),
  csharp("csharp");

  const LanguagesEnum(this.name);
  final String name;
}