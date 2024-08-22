import 'package:portfolio/common_imports.dart';

class GameObject {
  static const dot = 10.0;
  Size size;
  Color c;
  double w;
  double h;

  GameObject({
    required this.size,
    this.c = Colors.grey,
    this.w = dot,
    this.h = dot,
  });
}
