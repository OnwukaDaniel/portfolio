import 'package:portfolio/common_imports.dart';

class AppMessage {
  static showMessage(
    String msg, {
    Color color = Colors.red,
    Color textColor = Colors.white,
    NotificationPosition position = NotificationPosition.bottom,
    Duration duration = const Duration(seconds: 5),
  }) {
    showSimpleNotification(
      contentPadding: EdgeInsets.zero,
      duration: duration,
      elevation: 1,
      Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(msg, style: TextStyle(color: textColor)),
        ),
      ),
      position: position,
      background: color,
    );
  }
}
