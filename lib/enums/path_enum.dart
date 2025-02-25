import 'package:portfolio/common_imports.dart';

enum PathEnum{
  home("_home", Home(), Home.id, Home.path),
  aboutMe("_about-me", AboutMe(), AboutMe.id, AboutMe.path),
  portfolio("_portfolio", Projects(), Projects.id, Projects.path),
  contactUs("_contact-us", Contact(), Contact.id, Contact.path);

  const PathEnum(this.name, this.page, this.id, this.path);
  final String name;
  final String id;
  final Widget page;
  final String path;
}