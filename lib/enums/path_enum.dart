import 'package:portfolio/common_imports.dart';
import 'package:portfolio/ui/contact/contact.dart';

enum PathEnum{
  home("_home", Home(), Home.id),
  services("_services", HomepageView(), Home.id),
  aboutMe("_about-me", AboutMe(), AboutMe.id),
  portfolio("_portfolio", Projects(), Projects.id),
  contactUs("_contact-us", Contact(), Contact.id);

  const PathEnum(this.name, this.page, this.id);
  final String name;
  final String id;
  final Widget page;
}