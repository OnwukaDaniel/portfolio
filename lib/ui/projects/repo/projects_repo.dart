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
            technologiesAndTools:
                'Flutter, Stacked, MVVM Clean Architecture, RiverPod, REST API, Push Notification',
            keyFeatures:
                'In-App Wallet, Electricity purchase, Airtime and Data purchase, Cable and Internet Purchase, Intelligent Frequent Pay, Real Time Notification',
            type: ProjectType.mobile,
            technology: 'Flutter',
            client: 'Hesplat Technologies',
            image: 'assets/projects/power_plug_bulb.png',
            playLink:
                'https://play.google.com/store/apps/details?id=ng.powerplug.power_plug',
            appleLink:
                'https://apps.apple.com/ng/app/powerplug-pay-electricity/id6443731074',
            projectAssets: [
              ProjectAssets(
                title: 'HOMEPAGE',
                color: Colors.red,
                links: [
                  'assets/power_plug/screen-20240702-121523.mp4',
                  'assets/power_plug/Screenshot_20240614-051401.jpg',
                  'assets/power_plug/Screenshot_20240703-113456.jpg',
                ],
              ),
              ProjectAssets(
                title: 'BUY ELECTRICITY',
                color: Colors.red,
                links: [
                  'assets/power_plug/screen-20240703-215403.mp4',
                  'assets/power_plug/Screenshot_20240614-051626.jpg',
                  'assets/power_plug/Screenshot_20240703-173725.jpg',
                ],
              ),
              ProjectAssets(
                title: 'BUY AIRTIME',
                color: Colors.red,
                links: [
                  'assets/power_plug/buy_airtime.mp4',
                  'assets/power_plug/buy_airtime1.jpg',
                  'assets/power_plug/buy_airtime2.jpg',
                  'assets/power_plug/buy_airtime3.jpg',
                ],
              ),
              ProjectAssets(
                title: 'OTHERS',
                color: Colors.red,
                links: [
                  'assets/power_plug/rewards_page.jpg',
                  'assets/power_plug/history_page.jpg',
                  'assets/power_plug/security_page.jpg',
                  'assets/power_plug/notification_ppage.jpg',
                ],
              ),
            ],
          ),
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
            rolesAndResponsibility:
                'Frontend Developer, Integrated APIs for food analysis',
            technologiesAndTools:
                'Flutter, Stacked, MVVM Clean Architecture, RiverPod, REST API, Push Notification',
            keyFeatures:
                'In-App Wallet, Electricity purchase, Airtime and Data purchase, Cable and Internet Purchase, Intelligent Frequent Pay, Real Time Notification',
            icon: dartIcon,
            type: ProjectType.mobile,
            technology: 'Flutter',
            client: 'NYC SnaccFood',
            image: 'assets/projects/snacc_food.jpg',
            projectAssets: [
              ProjectAssets(
                title: 'ONBOARDING',
                color: Colors.green,
                links: [
                  'assets/mocks/snacc8.png',
                  'assets/mocks/snacc10.png',
                  'assets/mocks/snacc9.png',
                ],
              ),
              ProjectAssets(
                title: 'HOME PAGE',
                color: Colors.green,
                links: [
                  'assets/mocks/snacc1.png',
                  'assets/mocks/snacc2.png',
                  'assets/mocks/snacc7.png',
                ],
              ),
              ProjectAssets(
                title: 'SET UP PROFILE',
                color: Colors.green,
                links: [
                  'assets/mocks/snacc3.png',
                  'assets/mocks/snacc4.png',
                  'assets/mocks/snacc5.png',
                ],
              ),
            ],
          ),
          SideBarInfo(
            file: 'Sentrified.dart',
            info: 'The Estate Management System is a Flutter-based app designed to streamline estate operations, providing residents with features such as access management via intelligent codes, voting on polls, payment receipt submission, complaint handling, and panic alerts. The app also caters to admin and security roles, ensuring efficient and secure management of estate activities.',
            about: 'The Estate Management System is an innovative Flutter-based application designed to enhance the efficiency and security of estate operations. Residents can seamlessly manage access, participate in polls, submit payment receipts, and raise complaints or panic alerts through the app. Admins benefit from streamlined estate management, while security personnel utilize intelligent codes to control access effectively. This comprehensive solution ensures a well-coordinated and secure environment for all estate members.',
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
