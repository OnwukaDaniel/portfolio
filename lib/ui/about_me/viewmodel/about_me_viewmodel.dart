import 'package:portfolio/imports/common_imports.dart';

class AboutMeViewmodel extends HomepageViewModel {
  AboutSideBar displayPersonalInfo = AboutMeRepo.getPersonalInfo().first;
  int _infoIndex = 0;
  int get infoIndex => _infoIndex;
  var personalInfo = AboutMeRepo.getPersonalInfo();

  showPersonalInfo(bool input, int index) {
    try {
      personalInfo[index].show = input;
      notifyListeners();
    } catch (e) {}
  }

  setDisplayPersonalInfo(AboutSideBar input, int infoIndex) {
    displayPersonalInfo = input;
    _infoIndex = infoIndex;
    notifyListeners();
  }
}
