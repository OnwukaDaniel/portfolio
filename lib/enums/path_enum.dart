import 'package:portfolio/common_imports.dart';
import 'package:portfolio/ui/projects/project_info.dart';

enum PathEnum{
  home("_home"),
  services("_services"),
  aboutMe("_about-me"),
  portfolio("_portfolio"),
  contactUs("_contact-us"),
  projectInfo("_project-info");

  const PathEnum(this.name);
  final String name;
}

class PageFromPath{
  static Widget getPage(PathEnum path, dynamic data){
    switch(path) {
      case PathEnum.home:
        return const Home();
      case PathEnum.services:
        return const HomepageView();
      case PathEnum.aboutMe:
        return const AboutMe();
      case PathEnum.portfolio:
        return const Projects();
      case PathEnum.contactUs:
        return const HomepageView();
      case PathEnum.projectInfo:
        return ProjectInfo(data as SideBarInfo);
      default:
        return const HomepageView();
    }
  }
}