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
  String image;

  SideBarInfo({
    this.file = '',
    this.info = '',
    this.icon = '',
    this.image = '',
  });
}
