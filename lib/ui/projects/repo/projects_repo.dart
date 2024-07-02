import 'package:portfolio/enums/project_type.dart';
import 'package:portfolio/imports/common_imports.dart';

class ProjectsRepo {
  static List<SideBar> getProjects() {
    return [
      SideBar(
        displayName: 'dart-projects',
        icon: 'assets/icons/folder1.png',
        files: [
          SideBarInfo(
            file: 'PowerPlug.dart',
            info:
                'Facilitate electricity bill payments across all electricity providers in Nigeria, including BEDC, KAEDO, KADO, IBDC, JED, AEDC, EKEDC, IKEDC, and PHEDC.',
            icon: 'assets/icons/dart.png',
            appIcon: 'assets/icons/powerplug.png',
            about: 'Purchase of electricity units with different payment methods: card, bank transfer and wallet.\n- Purchase of airtime, data, internet and cable tv.\n- Enhanced Features: Enables users make any purchase with just one click.',
            project: ProjectsEnum.powerPlug,
            teamMembers: [
              'Japhet Sheba',
              'Boluwatife Okolowankwo',
              'Crusader Hendry',
            ],
            date: DateTime(2020, 8, 1),
            type: ProjectType.mobile,
            technology: 'Flutter',
            client: 'Hesplat Technologies',
            image: 'assets/projects/power_plug_bulb.png',
          ),
          SideBarInfo(
            file: 'Snacc Food.dart',
            info:
                'Monitor and regulate your food and calories intake. Analyse meal and get insight',
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
      SideBar(
        displayName: 'kotlin-projects',
        icon: 'assets/icons/folder1.png',
        files: [
          SideBarInfo(
            file: 'HowFar.kt',
            info:
                'Super app. Create connection with family and friends, co-workers. Browse video content, chat, video and audio call and earn creating content ',
            icon: 'assets/icons/kotlin.png',
            image: 'assets/icons/kotlin.png',
          ),
          SideBarInfo(
            file: 'ABB-Blind-Dating.kt',
            info:
                'In korean language. Connect and meet people who are willing to date.',
            icon: 'assets/icons/kotlin.png',
            image: 'assets/display/abb_blind_dating.png',
          ),
          SideBarInfo(
            file: 'Cronet Solution.kt',
            info:
                'This is a e-commerce app I developed for a business enterprise "Cronet Solution"',
            icon: 'assets/icons/kotlin.png',
            image: 'assets/projects/sentrified.jpg',
          ),
          SideBarInfo(
            file: 'Note-IO.kt',
            info:
                'Keep notes in a simplified way. Organize your day and create tasks and alarms. ',
            icon: 'assets/icons/kotlin.png',
            image: 'assets/display/note_io.png',
          ),
        ],
        show: false,
      ),
    ];
  }
}
