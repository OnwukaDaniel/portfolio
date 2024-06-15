import 'package:portfolio/imports/common_imports.dart';

class AboutMeViewmodel extends HomepageViewModel {
  AboutSideBar displayPersonalInfo = AboutSideBar();
  List<AboutSideBar> personalInfo = [
    AboutSideBar(
      displayName: 'bio',
      icon: 'assets/icons/folder1.png',
      files: ['bio.dart'],
      show: true,
    ),
    AboutSideBar(
      displayName: 'interest',
      icon: 'assets/icons/folder2.png',
      files: ['interest.dart'],
      show: false,
    ),
    AboutSideBar(
      displayName: 'education',
      icon: 'assets/icons/folder3.png',
      files: ['high-school.dart', 'university.dart'],
      show: false,
    ),
  ];

  showPersonalInfo(bool input, int index) {
    try {
      personalInfo[index];
      notifyListeners();
    } catch (e) {}
  }
}
