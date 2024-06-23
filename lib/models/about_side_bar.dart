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
  String appIcon;
  String image;
  List<String> keyFeatures;

  SideBarInfo({
    this.file = '',
    this.info = '',
    this.appIcon = '',
    this.icon = '',
    this.image = '',
    this.keyFeatures = const [],
  });
}
