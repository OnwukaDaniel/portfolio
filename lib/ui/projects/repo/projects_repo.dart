import 'package:portfolio/common_imports.dart';

class ProjectsRepo {
  static String dartIcon = 'assets/icons/dart.png';
  static String kotlinIcon = 'assets/icons/kotlin.png';

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
            appIcon: 'assets/icons/sentrified.png',
            teamMembers: ['Marvellous Utai', 'Chibuike', 'Toheeb', 'Mr. Bolaji',],
            date: DateTime(2024, 4, 15),
            rolesAndResponsibility: 'Lead Frontend Developer',
            technologiesAndTools:
            'Flutter, Stacked, MVVM Clean Architecture, REST API',
            keyFeatures: 'Access Management, Polling System, Payment Receipt Submission, Complaint Management, Panic Alerts',
            icon: dartIcon,
            type: ProjectType.mobile,
            project: ProjectsEnum.sentrified,
            technology: 'Flutter',
            client: 'Doc2Data',
            image: 'assets/projects/sentrified.jpg',
            projectAssets: [
              ProjectAssets(
                title: 'ONBOARDING',
                color: Colors.blue,
                links: [
                  'assets/mocks/sentrified1.jpg',
                  'assets/mocks/sentrified2.jpg',
                  'assets/mocks/sentrified7.jpg',
                ],
              ),
              ProjectAssets(
                title: 'DASHBOARD and ACCESS',
                color: Colors.blue,
                links: [
                  'assets/mocks/sentrified6.jpg',
                  'assets/mocks/sentrified5.jpg',
                  'assets/mocks/sentrified4.jpg',
                ],
              ),
              ProjectAssets(
                title: 'PANIC NOTIFICATION',
                color: Colors.blue,
                links: [
                  'assets/mocks/sentrified3.jpg',
                ],
              ),
            ],
          ),
          SideBarInfo(
            file: 'Sportifan.dart',
            info: 'The Sportifan Playing and Umpiring App, developed with Flutter, consists of two separate applications: the User App and the Umpiring App. The User App allows users to create match schedules, form teams, and view match highlights and summaries, while the Umpiring App enables umpires to select venues, conduct tosses, configure run zones, manage gameplay, and record comprehensive game statistics.',
            about: 'The Cricket Playing and Recording App is a versatile Flutter-based solution designed to enhance the organization and management of cricket matches. It comprises two distinct applications: the User App and the Umpiring App. The User App allows users to create match schedules, form teams, and view match highlights and summaries. The Umpiring App empowers umpires to select venues, conduct tosses, configure run zones, manage the actual gameplay, and record detailed game statistics, ensuring a seamless cricket experience for all participants.',
            appIcon: 'assets/icons/sportifan.png',
            teamMembers: ['Mayur Manu', 'Niranjan-Dorage', 'Nandish N S',],
            date: DateTime(2024, 2, 15),
            rolesAndResponsibility: 'Frontend Developer, Tester',
            technologiesAndTools:
            'Flutter, Stacked, MVVM Clean Architecture, Firebase, Youtube API',
            keyFeatures: 'Create Match Schedule, Create Teams, View Match Highlights, View Match Summary, Select Venue to Play, Conduct Toss to Determine Heads or Tails, Configure Cricket Run Zones, Manage Actual Playing of the Match, Save All Game Data and Stats',
            icon: dartIcon,
            type: ProjectType.mobile,
            project: ProjectsEnum.sportifan,
            technology: 'Flutter',
            client: 'Sportifan',
            image: 'assets/projects/sportifan.png',
            projectAssets: [
              ProjectAssets(
                title: 'ONBOARDING - User App',
                color: Colors.green,
                links: [
                  'assets/mocks/sportifan1.png',
                  'assets/mocks/sportifan2.png',
                ],
              ),
              ProjectAssets(
                title: 'In-App',
                color: Colors.green,
                links: [
                  'assets/mocks/sportifan3.png',
                  'assets/mocks/sportifan4.png',
                  'assets/mocks/sportifan6.png',
                ],
              ),
              ProjectAssets(
                title: 'PLAYING AND RECORDING MATCH',
                color: Colors.green,
                links: [
                  'assets/mocks/sportifan7.png',
                  'assets/mocks/sportifan8.png',
                  'assets/mocks/sportifan9.png',
                  'assets/mocks/sportifan10.png',
                ],
              ),
              ProjectAssets(
                title: 'INNING and MATCH SUMMARY',
                color: Colors.green,
                links: [
                  'assets/mocks/sportifan11.png',
                  'assets/mocks/sportifan12.png',
                ],
              ),
            ],
          ),
          SideBarInfo(
            file: 'Altfit.dart',
            info: 'The Fitness App, developed with Flutter, provides users with instructional videos and workout guides for cardio, flexibility, and weight training sessions. It also allows users to track their fitness progress by keeping streaks, logging workout history, and monitoring calories burnt.',
            about: 'The Fitness App is a comprehensive Flutter-based application designed to help users achieve their fitness goals through structured guidance and tracking. It offers instructional videos for various types of workouts, including cardio, flexibility, and weight training sessions. Users can maintain workout streaks, log their workout history, and monitor calories burnt to track their progress effectively. This app provides a robust platform for users to stay motivated and on track with their fitness journey.',
            appIcon: 'assets/icons/altfit.png',
            teamMembers: ['Mayur Manu', '+ 21 more',],
            date: DateTime(2024, 3, 15),
            rolesAndResponsibility: 'Frontend Developer',
            technologiesAndTools:
            'Flutter, Stacked, MVVM Clean Architecture, Amplify, AWS',
            keyFeatures: 'Access to instructional videos for various workouts, Cardio, Flexibility, Weight Training, Keep streaks, Monitor calories burnt, Log workout history',
            icon: dartIcon,
            type: ProjectType.mobile,
            project: ProjectsEnum.altFit,
            technology: 'Flutter',
            client: 'Altfit',
            image: 'assets/projects/altfit.png',
            projectAssets: [
              ProjectAssets(
                title: 'ONBOARDING',
                color: Colors.blue,
                links: [
                  'assets/mocks/altfit4.png',
                  'assets/mocks/altfit3.png',
                  'assets/mocks/altfit18.png',
                ],
              ),
              ProjectAssets(
                title: 'CREATE WORKOUT PROFILE',
                color: Colors.blue,
                links: [
                  'assets/mocks/altfit1.png',
                  'assets/mocks/altfit2.png',
                ],
              ),
              ProjectAssets(
                title: 'In-App',
                color: Colors.blue,
                links: [
                  'assets/mocks/altfit5.png',
                  'assets/mocks/altfit10.png',
                  'assets/mocks/altfit9.png',
                  'assets/mocks/altfit11.png',
                ],
              ),
              ProjectAssets(
                title: 'WEIGHT TRAINING SESSION',
                color: Colors.blue,
                links: [
                  'assets/mocks/altfit7.png',
                  'assets/mocks/altfit8.png',
                  'assets/mocks/altfit17.png',
                ],
              ),
              ProjectAssets(
                title: 'CARDIO TRAINING',
                color: Colors.blue,
                links: [
                  'assets/mocks/altfit12.png',
                  'assets/mocks/altfit13.png',
                  'assets/mocks/altfit14.png',
                ],
              ),
              ProjectAssets(
                title: 'FLEXIBILITY TRAINING',
                color: Colors.blue,
                links: [
                  'assets/mocks/altfit16.png',
                  'assets/mocks/altfit15.png',
                  'assets/mocks/altfit17.png',
                ],
              ),
            ],
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
            info: 'ABB Blind-Dating App, built with Kotlin, allows users to sign up, create profiles, and connect with others through a swipe-based interface and in-app chat powered by Firebase. It features email verification for security and offers a fully translated experience in Korean.',
            about: "ABB Blind-Dating is a Kotlin-based platform designed to help users connect with potential matches through a swipe-based interface and secure in-app chat powered by Firebase. Users can easily sign up, create profiles, and verify their accounts via email to ensure a safe and authentic experience. The app is fully translated into Korean, making it accessible to a broader audience. With its intuitive design and robust features, the app provides a seamless and engaging dating experience.",
            appIcon: 'assets/icons/abb_dating.png',
            teamMembers: ['Solo project'],
            date: DateTime(2022, 6, 22),
            rolesAndResponsibility: 'Frontend Developer',
            technologiesAndTools: 'Firebase RealtimeDB, Firebase Storage, Firebase Auth',
            keyFeatures: 'User Sign-Up and Profile Creation, Swipe to Like or Dislike Profiles, In-App Chat Powered by Firebase, Email Verification for Security, Full App Translation to Korean',
            icon: kotlinIcon,
            project: ProjectsEnum.abbBlindDating,
            technology: 'Android (Kotlin)',
            client: 'Korean Client',
            image: 'assets/display/abb_blind_dating.png',
            projectAssets: [
              ProjectAssets(
                title: 'SIGN IN and SIGN UP',
                color: Colors.blue,
                links: [
                  'assets/mocks/abb7.png',
                  'assets/mocks/abb8.png',
                  'assets/mocks/abb9.png',
                ],
              ),
              ProjectAssets(
                title: 'HOME and DISCOVER',
                color: Colors.blue,
                links: [
                  'assets/mocks/abb1.png',
                  'assets/mocks/abb2.png',
                  'assets/mocks/abb3.png',
                ],
              ),
              ProjectAssets(
                title: 'Chat',
                color: Colors.blue,
                links: [
                  'assets/mocks/abb6.png',
                  'assets/mocks/abb4.png',
                  'assets/mocks/abb10.png',
                ],
              ),
            ],
          ),
          /*SideBarInfo(
            file: 'Note-IO.kt',
            info:
                'Keep notes in a simplified way. Organize your day and create tasks and alarms. ',
            icon: 'assets/icons/kotlin.png',
            image: 'assets/display/note_io.png',
            project: ProjectsEnum.notes,
          ),*/
        ],
        show: false,
      ),
    ];
  }
}
