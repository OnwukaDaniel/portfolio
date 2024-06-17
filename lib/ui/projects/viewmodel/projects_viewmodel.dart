import 'package:portfolio/imports/common_imports.dart';

class ProjectsViewmodel extends AboutMeViewmodel {
  List<SideBar> sideBarList = [];
  @override
  init() {
    sideBarList = ProjectsRepo.getProjects();
    sideBarInfoList.addAll(sideBarList.first.files);
    notifyListeners();
  }

  @override
  showSideBarInfo(bool input, int index) {
    try {
      sideBarList[index].show = input;
      notifyListeners();
    } catch (e) {}
  }

  setProject(List<SideBarInfo> input){
    sideBarInfoList.clear();
    sideBarInfoList.addAll(input);
    notifyListeners();
  }

  @override
  setDisplayPersonalInfo(SideBarInfo input) {
    displayPersonalInfo = input;
    sideBarInfoList.add(input);
    notifyListeners();
  }

  @override
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
