import 'package:portfolio/common_imports.dart';

class GameObject {
  static const dot = 10.0;
  Size size;
  Color color;
  double w;
  double h;

  GameObject({
    required this.size,
    this.color = Colors.grey,
    this.w = dot,
    this.h = dot,
  });

  Map<String, dynamic> toJson(){
    return {
      'size': 'Width: ${size.width}; Height: ${size.height}',
      'w': w,
      'h': h,
    };
  }
}
