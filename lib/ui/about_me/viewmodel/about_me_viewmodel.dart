import 'package:portfolio/imports/common_imports.dart';

class AboutMeViewmodel extends HomepageViewModel {
  SideBarInfo displayPersonalInfo = SideBarInfo();
  Set<SideBarInfo> sideBarInfoList = {};
  var personalInfo = AboutMeRepo.getPersonalInfo();

  init() {
    displayPersonalInfo = personalInfo.first.files.first;
    sideBarInfoList.add(displayPersonalInfo);
    notifyListeners();
  }

  showSideBarInfo(bool input, int index) {
    try {
      personalInfo[index].show = input;
      notifyListeners();
    } catch (e) {}
  }

  setDisplayPersonalInfo(SideBarInfo input) {
    displayPersonalInfo = input;
    sideBarInfoList.add(input);
    notifyListeners();
  }

  removePersonalInfo(SideBarInfo input) {
    sideBarInfoList.remove(input);
    if (sideBarInfoList.isNotEmpty) {
      if (!sideBarInfoList.contains(displayPersonalInfo)) {
        return setDisplayPersonalInfo(sideBarInfoList.last);
      }
    } else {
      displayPersonalInfo = SideBarInfo();
    }
    notifyListeners();
  }
}
