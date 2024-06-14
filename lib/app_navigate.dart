import 'package:flutter/cupertino.dart';
import 'package:portfolio/imports/common_imports.dart';

class AppNavigate {
  AppNavigate._();

  static final AppNavigate _instance = AppNavigate._();

  factory AppNavigate() => _instance;

  static ValueNotifier<Set<PathEnum>> pathVn = ValueNotifier({});

  static final Set<PathEnum> _navigationPath = {PathEnum.home};

  static Set<PathEnum> get navigationPath => _navigationPath;

  static push(BuildContext context, PathEnum path) {
    var paths = _navigationPath;
    var screen = PageFromPath.getPage(path);
    if (paths.contains(paths)) {
      if (paths.elementAt(paths.length - 1) != path) {
        // is not last
        var navigateIndex = paths.toList().indexOf(path);
        var newPath = paths.toList().sublist(0, navigateIndex).toSet();
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(builder: (_) => screen),
        );
        return resetPath(newPath);
      } else {
        return;
      }
    }
    Navigator.push(context, CupertinoPageRoute(builder: (_) => screen));
    addToPath(path);
  }

  static addToPath(PathEnum path) {
    _navigationPath.add(path);
    pathVn.value = _navigationPath;
  }

  static resetPath(Set<PathEnum> path) {
    _navigationPath.clear();
    _navigationPath.addAll(path);
    pathVn.value = _navigationPath;
  }
}
