import 'package:portfolio/common_imports.dart';

class GamePaint extends CustomPainter {
  final List<GameObject> gameObject;
  const GamePaint(this.gameObject);

  @override
  void paint(Canvas canvas, Size size) {
    for(GameObject g in gameObject) {
      final paint = Paint()
        ..color = g.c
        ..style = PaintingStyle.fill;

      var rect = Rect.fromLTWH(g.size.width * g.w, g.size.height * g.h, g.w, g.h);
      canvas.drawRect(rect, paint);
    }
  }

  @override
  bool shouldRepaint(covariant GamePaint oldDelegate) {
    return gameObject != oldDelegate.gameObject;
  }
}