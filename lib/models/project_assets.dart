import 'package:portfolio/common_imports.dart';

class ProjectAssets {
  String title;
  Color color;
  List<String> links = [];

  ProjectAssets({
    this.title = '',
    this.color = Colors.transparent,
    this.links = const [],
  });
}
