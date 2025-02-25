import 'package:portfolio/common_imports.dart';

class AppBarService {
  static Widget _appBar = const SizedBox();
  static Widget get appBar => _appBar;

  //ValueNotifier<Widget> appBarVn =

  static setAppBar(Widget input) {
    _appBar = input;
  }
}
