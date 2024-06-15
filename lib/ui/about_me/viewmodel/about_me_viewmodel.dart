import 'package:portfolio/imports/common_imports.dart';

class AboutMeViewmodel extends HomepageViewModel {
  AboutSideBarInfo displayPersonalInfo = AboutSideBarInfo();
  Set<AboutSideBarInfo> aboutDisplayInfoList = {};
  var personalInfo = AboutMeRepo.getPersonalInfo();

  init() {
    displayPersonalInfo = personalInfo.first.files.first;
    aboutDisplayInfoList.add(displayPersonalInfo);
    notifyListeners();
  }

  showPersonalInfo(bool input, int index) {
    try {
      personalInfo[index].show = input;
      notifyListeners();
    } catch (e) {}
  }

  setDisplayPersonalInfo(AboutSideBarInfo input) {
    displayPersonalInfo = input;
    aboutDisplayInfoList.add(input);
    notifyListeners();
  }

  removePersonalInfo(AboutSideBarInfo input) {
    aboutDisplayInfoList.remove(input);
    if (aboutDisplayInfoList.isNotEmpty) {
      if (!aboutDisplayInfoList.contains(displayPersonalInfo)) {
        return setDisplayPersonalInfo(aboutDisplayInfoList.last);
      }
    } else {
      displayPersonalInfo = AboutSideBarInfo();
    }
    notifyListeners();
  }
}
