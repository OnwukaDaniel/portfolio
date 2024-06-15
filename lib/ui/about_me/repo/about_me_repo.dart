import 'package:portfolio/imports/common_imports.dart';

class AboutMeRepo {
  static List<AboutSideBar> getPersonalInfo() {
    return [
      AboutSideBar(
        displayName: 'bio',
        icon: 'assets/icons/folder1.png',
        files: [
          AboutSideBarInfo(
            file: 'bio.dart',
            info: 'Here is the given text with \n replacing newlines and the entire string placed on a single line: dart /** * About me\n * I have 5 years of еxperience in web\n * development lorem ipsum dolor sit amet, \n * consectetur adipiscing elit, sed do eiusmod\n * tempor incididunt ut labore et dolore\n * magna aliqua. Ut enim ad minim veniam,\n * quis nostrud exercitation ullamco laboris\n * nisi ut aliquip ex ea commodo consequat.\n * Duis aute irure dolor in reprehenderit in\n *\n * Duis aute irure dolor in reprehenderit in\n * voluptate velit esse cillum dolore eu fugiat \n * nulla pariatur. Excepteur sint occaecat \n * officia deserunt mollit anim id est laborum.\n */',
          )
        ],
        show: true,
      ),
      AboutSideBar(
        displayName: 'interest',
        icon: 'assets/icons/folder2.png',
        files: [AboutSideBarInfo(file: 'interest.dart')],
        show: false,
      ),
      AboutSideBar(
        displayName: 'education',
        icon: 'assets/icons/folder3.png',
        files: [
          AboutSideBarInfo(file: 'high-school.dart'),
          AboutSideBarInfo(file: 'university.dart'),
        ],
        show: false,
      ),
    ];
  }
}
