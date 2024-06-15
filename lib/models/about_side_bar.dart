class AboutSideBar {
  String displayName;
  String icon;
  bool show;
  List<String> files = [];

  AboutSideBar({
    this.displayName = '',
    this.icon = '',
    this.files = const [],
    this.show = false,
  });
}
