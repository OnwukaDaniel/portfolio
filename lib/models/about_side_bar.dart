import 'package:portfolio/enums/project_type.dart';
import 'package:portfolio/enums/projects_enum.dart';

class SideBar {
  String displayName;
  String icon;
  bool show;
  List<SideBarInfo> files = [];

  SideBar({
    this.displayName = '',
    this.icon = '',
    this.files = const [],
    this.show = false,
  });
}

class SideBarInfo {
  String file;
  String info;
  String icon;
  ProjectType? type;
  String appIcon;
  String image;
  String about;
  String technology;
  ProjectsEnum? project;
  DateTime? date;
  String client;
  String playLink;
  String appleLink;
  String downloadLink;
  List<String> teamMembers;

  SideBarInfo({
    this.file = '',
    this.info = '',
    this.appIcon = '',
    this.about = '',
    this.icon = '',
    this.type,
    this.project,
    this.technology ='',
    this.date,
    this.client = '',
    this.image = '',
    this.playLink = '',
    this.appleLink = '',
    this.downloadLink = '',
    this.teamMembers = const [],
  });
}
