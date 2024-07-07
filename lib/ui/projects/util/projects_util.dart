import 'dart:ui';

import 'package:portfolio/imports/common_imports.dart';

class ProjectsUtil {
  static dialog(BuildContext context, Widget widget, String asset) {
    double w = 200;
    double h = 480;

    showDialog(
      context: context,
      builder: (_) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Wrap(
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              SingleChildScrollView(
                child: Container(
                  width: w * 1.8,
                  height: h * 1.6,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Hero(tag: asset, child: widget),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}