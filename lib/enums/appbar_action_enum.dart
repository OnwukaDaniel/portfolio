import 'package:flutter/foundation.dart';

enum AppBarActionEnum{
  home("Home"),
  services("Services"),
  aboutMe("About me"),
  portfolio("Portfolio"),
  contactUs("Contact Us");

  const AppBarActionEnum(this.name);
  final String name;
}