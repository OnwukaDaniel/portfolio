import 'package:portfolio/enums/project_type.dart';
import 'package:portfolio/common_imports.dart';

class ProjectsRepo {
  static String dartIcon = 'assets/icons/dart.png';

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
              icon: dartIcon,
              appIcon: 'assets/icons/powerplug.png',
              about:
                  'Purchase of electricity units with different payment methods: card, bank transfer and wallet.\n- Purchase of airtime, data, internet and cable tv.\n- Enhanced Features: Enables users make any purchase with just one click.',
              project: ProjectsEnum.powerPlug,
              teamMembers: [
                'Japhet Sheba',
                'Boluwatife Okolowankwo',
                'Crusader Hendry',
              ],
              date: DateTime(2020, 8, 1),
              rolesAndResponsibility:
                  'Lead Frontend Developer, Integrated APIs for payments',
              technologiesAndTools: 'Flutter, Stacked, MVVM Clean Architecture, RiverPod, REST API, Push Notification',
              keyFeatures: 'In-App Wallet, Electricity purchase, Airtime and Data purchase, Cable and Internet Purchase, Intelligent Frequent Pay, Real Time Notification',
              type: ProjectType.mobile,
              technology: 'Flutter',
              client: 'Hesplat Technologies',
              image: 'assets/projects/power_plug_bulb.png',
              playLink:
                  'https://play.google.com/store/apps/details?id=ng.powerplug.power_plug',
              appleLink:
                  'https://apps.apple.com/ng/app/powerplug-pay-electricity/id6443731074'),
          SideBarInfo(
            file: 'Snacc Food.dart',
            info:
                'Monitor and regulate your food and calories intake. Analyse meal and get insight.',
            about:
                "Welcome to Snacc Food, your ultimate companion for managing your dietary habits and achieving your nutrition goals. \n\nSnaccFood is designed to help you monitor and regulate your food and calorie intake effortlessly. Whether you're looking to lose weight, gain muscle, or simply maintain a healthy lifestyle, Food and Calorie Tracker provides all the tools you need to succeed.",
            appIcon: 'assets/icons/snacc.png',
            project: ProjectsEnum.snaccFood,
            teamMembers: ['Dhruv Shetty'],
            date: DateTime(2024, 8, 6),
            rolesAndResponsibility: 'Frontend Developer, Integrated APIs for food analysis',
            technologiesAndTools: 'Flutter, Stacked, MVVM Clean Architecture, RiverPod, REST API, Push Notification',
            keyFeatures: 'In-App Wallet, Electricity purchase, Airtime and Data purchase, Cable and Internet Purchase, Intelligent Frequent Pay, Real Time Notification',
            icon: dartIcon,
            type: ProjectType.mobile,
            technology: 'Flutter',
            client: 'NYC SnaccFood',
            image: 'assets/projects/snacc_food.jpg',
          ),
          SideBarInfo(
            file: 'Sentrified.dart',
            info: 'Estate keeper app',
            icon: dartIcon,
            image: 'assets/projects/sentrified.webp',
            project: ProjectsEnum.sentrified,
          ),
          SideBarInfo(
            file: 'TaskPadi.dart',
            info: 'This app was developed to offer service to customers',
            icon: dartIcon,
            image: 'assets/projects/task_padi.webp',
            project: ProjectsEnum.taskPadi,
          ),
          SideBarInfo(
            file: 'Sportifan.dart',
            info: 'Play and Record cricket game',
            icon: dartIcon,
            image: 'assets/projects/snacc_food.jpg',
            project: ProjectsEnum.sportifan,
          ),
          SideBarInfo(
            file: 'Altfit.dart',
            info: 'Fitness app to guild, provide exercise and monitor fitness',
            icon: dartIcon,
            image: 'assets/projects/snacc_food.jpg',
            project: ProjectsEnum.altFit,
          ),
        ],
        show: false,
      ),
      SideBar(
        displayName: 'kotlin-projects',
        icon: 'assets/icons/folder1.png',
        files: [
          SideBarInfo(
            file: 'ABB-Blind-Dating.kt',
            info:
                'In korean language. Connect and meet people who are willing to date.',
            icon: 'assets/icons/kotlin.png',
            image: 'assets/display/abb_blind_dating.png',
            project: ProjectsEnum.abbBlindDating,
          ),
          SideBarInfo(
            file: 'Cronet Solution.kt',
            info:
                'This is a e-commerce app I developed for a business enterprise "Cronet Solution"',
            icon: 'assets/icons/kotlin.png',
            image: 'assets/projects/sentrified.webp',
            project: ProjectsEnum.cronetSolution,
          ),
          SideBarInfo(
            file: 'Note-IO.kt',
            info:
                'Keep notes in a simplified way. Organize your day and create tasks and alarms. ',
            icon: 'assets/icons/kotlin.png',
            image: 'assets/display/note_io.png',
            project: ProjectsEnum.notes,
          ),
        ],
        show: false,
      ),
    ];
  }
}
