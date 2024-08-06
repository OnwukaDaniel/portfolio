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