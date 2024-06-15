import 'package:portfolio/imports/common_imports.dart';

enum PathEnum{
  home("Home"),
  services("Services"),
  aboutMe("About me"),
  portfolio("Portfolio"),
  contactUs("Contact Us");

  const PathEnum(this.name);
  final String name;
}

class PageFromPath{
  static Widget getPage(PathEnum path){
    switch(path) {
      case PathEnum.home:
        return const Home();
      case PathEnum.services:
        return const HomepageView();
      case PathEnum.aboutMe:
        return const AboutMe();
      case PathEnum.portfolio:
        return const HomepageView();
      case PathEnum.contactUs:
        return const HomepageView();
      default:
        return const HomepageView();
    }
  }
}