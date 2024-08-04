import 'package:portfolio/common_imports.dart';

extension GapDouble on double{
  Widget get h => SizedBox(height: this);
  Widget get w => SizedBox(width: this);
}

extension GapInt on int{
  Widget get h => SizedBox(height: toDouble());
  Widget get w => SizedBox(width: toDouble());
}