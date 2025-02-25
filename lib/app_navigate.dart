import 'dart:developer';

import 'package:portfolio/common_imports.dart';

class AppNavigate {
  AppNavigate._();

  static final AppNavigate _instance = AppNavigate._();

  factory AppNavigate() => _instance;

  static ValueNotifier<Set<PathEnum>> pathVn = ValueNotifier({});

  static final Set<PathEnum> _navigationPath = {PathEnum.home};

  static Set<PathEnum> get navigationPath => _navigationPath;

  static justPush(BuildContext context, Widget page){
    Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }

  static replace(BuildContext context, Widget page){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => page));
  }

  static push(BuildContext context, PathEnum path, {dynamic data}) {
    var screen = path.page;
    /*if (paths.contains(path)) {
      if (paths.last != path) {
        var navigateIndex = paths.toList().indexOf(path);
        var newPath = paths.toList().sublist(0, navigateIndex + 1).toSet();
        var pops = paths.length - newPath.length;
        for (int p in List.generate(pops, (e) => e)) {
          if (Navigator.canPop(context)) Navigator.pop(context);
        }
        return resetPath(newPath);
      } else {
        return;
      }
    }*/
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }
}
