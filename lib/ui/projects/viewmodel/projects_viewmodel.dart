import 'dart:developer';
import 'package:portfolio/imports/common_imports.dart';

class ProjectsViewmodel extends AboutMeViewmodel {
  ScrollController pageScrollController = ScrollController();
  double scrollOffset = 0;
  bool showAll = false;
  List<SideBar> sideBarList = [];
  int topOfSilverBar = 0;

  @override
  init() {
    sideBarList = ProjectsRepo.getProjects();
    setShowAll(true);
    notifyListeners();
  }

  @override
  showSideBarInfo(bool input, int index) {
    try {
      sideBarList[index].show = input;
      notifyListeners();
    } catch (e) {}
  }

  setProject(List<SideBarInfo> input) {
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

  setShowAll(bool input) {
    showAll = input;
    List<SideBarInfo> list = [];
    for (SideBar s in sideBarList) {
      list.addAll(s.files);
    }
    if (showAll) sideBarInfoList.clear();
    if (showAll) sideBarInfoList.addAll(list);
    notifyListeners();
  }

  silverBarStretched() {
    pageScrollController.addListener((){
      scrollOffset = pageScrollController.offset;
      notifyListeners();
      log('Stretched ********** ${pageScrollController.offset}');
    });
  }
}
