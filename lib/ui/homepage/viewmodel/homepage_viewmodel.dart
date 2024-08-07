import 'package:portfolio/common_imports.dart';

class HomepageViewModel extends BaseViewModel {
  AppBarActionEnum _selectedAppBarAction = AppBarActionEnum.home;

  AppBarActionEnum get selectedAppBarAction => _selectedAppBarAction;

  Color _selectedAppBarColor = Colors.transparent;

  Color get selectedAppBarColor => _selectedAppBarColor;

  Color _selectedAppBarTextColor = Colors.transparent;

  Color get selectedAppBarTextColor => _selectedAppBarTextColor;

  void setAppBarColor(BuildContext context, AppBarActionEnum appBarActionEnum) {
    _selectedAppBarColor = Colors.transparent;
    _selectedAppBarTextColor = ColorUtils.textColor(context); 
    notifyListeners();
  }

  void setAppBarAction(AppBarActionEnum appBarActionEnum) {
    _selectedAppBarAction = appBarActionEnum;
    notifyListeners();
  }
}
