class AboutSideBar {
  String displayName;
  String icon;
  bool show;
  List<AboutSideBarInfo> files = [];

  AboutSideBar({
    this.displayName = '',
    this.icon = '',
    this.files = const [],
    this.show = false,
  });
}

class AboutSideBarInfo {
  String file;
  String info;

  AboutSideBarInfo({this.file = '', this.info = ''});
}
