import 'package:portfolio/common_imports.dart';

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
  String rolesAndResponsibility;
  String technologiesAndTools;
  String keyFeatures;
  DateTime? date;
  String client;
  String playLink;
  List<ProjectAssets> projectAssets;
  String appleLink;
  String downloadLink;
  List<String> teamMembers;

  SideBarInfo({
    this.file = '',
    this.info = '',
    this.appIcon = '',
    this.about = '',
    this.icon = '',
    this.rolesAndResponsibility = '',
    this.technologiesAndTools = '',
    this.keyFeatures = '',
    this.type,
    this.project,
    this.technology ='',
    this.date,
    this.client = '',
    this.image = '',
    this.projectAssets = const [],
    this.playLink = '',
    this.appleLink = '',
    this.downloadLink = '',
    this.teamMembers = const [],
  });
}
