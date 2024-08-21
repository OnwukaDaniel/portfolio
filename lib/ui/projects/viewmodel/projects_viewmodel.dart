import 'dart:developer';
import 'package:flutter/scheduler.dart';
import 'package:portfolio/common_imports.dart';

class ProjectsViewmodel extends AboutMeViewmodel {
  ScrollController pageScrollController = ScrollController();
  CarouselSliderController carouselController = CarouselSliderController();
  double scrollOffset = 0;
  bool showAll = false;
  List<SideBar> sideBarList = [];
  int topOfSilverBar = 0;
  int _carouselIndex = 0;
  int get carouselIndex => _carouselIndex;

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

  void jump(int index) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      carouselController.animateToPage(
        index,
        duration: const Duration(seconds: 1),
        curve: Curves.bounceIn,
      );
    });
  }

  setCarouselIndex(int index) {
    _carouselIndex = index;
    notifyListeners();
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
    });
  }
}
