import 'package:portfolio/imports/common_imports.dart';

class ProjectsRepo {
  static List<SideBar> getProjects() {
    return [
      SideBar(
        displayName: 'Dart-projects',
        icon: 'assets/icons/folder1.png',
        files: [
          SideBarInfo(
            file: 'PowerPlug.dart',
            info:
                'Facilitate electricity bill payments across all electricity providers in Nigeria',
            icon: 'assets/icons/dart.png',
            image: 'assets/projects/power_plug_bulb.png'
          ),
          SideBarInfo(
            file: 'Snacc Food.dart',
            info: 'Monitor and regulate your food and calories intake. Analyse meal and get insight',
            icon: 'assets/icons/dart.png',
            image: 'assets/projects/snacc_food.jpg',
          ),
          SideBarInfo(
            file: 'Sentrified.dart',
            info: 'Estate keeper app',
            icon: 'assets/icons/dart.png',
            image: 'assets/projects/sentrified.jpg',
          ),
          SideBarInfo(
            file: 'TaskPadi.dart',
            info: 'This app was developed to offer service to customers',
            icon: 'assets/icons/dart.png',
            image: 'assets/projects/task_padi.webp',
          ),
          SideBarInfo(
            file: 'Sportifan.dart',
            info: 'Play and Record cricket game',
            icon: 'assets/icons/dart.png',
            image: 'assets/projects/snacc_food.jpg',
          ),
          SideBarInfo(
            file: 'Altfit.dart',
            info: 'Fitness app to guild, provide exercise and monitor fitness',
            icon: 'assets/icons/dart.png',
            image: 'assets/projects/snacc_food.jpg',
          ),
          //A crypto price tracking app,
          SideBarInfo(
            file: 'CryptoTrage.dart',
            info: 'A crypto price tracking app with arbitrage opportunities',
            icon: 'assets/icons/dart.png',
            image: 'assets/projects/snacc_food.jpg',
          ),
        ],
        show: false,
      ),
    ];
  }
}
