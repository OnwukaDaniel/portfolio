import 'package:portfolio/common_imports.dart';

extension GapDouble on double{
  Widget get h => SizedBox(height: this);
  Widget get w => SizedBox(width: this);
}

extension GapInt on int{
  Widget get h => SizedBox(height: toDouble());
  Widget get w => SizedBox(width: toDouble());
}

extension ScreenDim on BuildContext{
  double get h => MediaQuery.of(this).size.height;
  double get w => MediaQuery.of(this).size.width;
}

extension AppThemeData on BuildContext{
  Color get cardColor => Theme.of(this).cardColor;
  Color? get cardThemeColor => Theme.of(this).cardTheme.color;
  Color get bgColor => Theme.of(this).scaffoldBackgroundColor;
  Color? get textColor => Theme.of(this).textTheme.bodySmall?.color;
  Color get dividerColor => Theme.of(this).dividerColor;
  Color get hintColor => Theme.of(this).hintColor;
}

extension GetDeviceType on BuildContext {
  DeviceType get device {
    var shortestSide = MediaQuery.of(this).size.shortestSide;
    var width = MediaQuery.of(this).size.width;
    if (shortestSide < 600) return DeviceType.mobile;
    if (width > 1000) return DeviceType.largeDesktop;
    return DeviceType.desktop;
  }
}

extension Logger on String{
  void get log => debugPrint(this);
}