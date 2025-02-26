import 'package:portfolio/common_imports.dart';

class ProjectsRepo {
  static String dartIcon = 'assets/icons/dart.png';
  static String kotlinIcon = 'assets/icons/kotlin.webp';

  static List<SideBar> getProjects() {
    return [
      SideBar(
        displayName: 'dart-projects',
        icon: 'assets/icons/folder1.png',
        files: [
          SideBarInfo(
            file: 'NBRLY.dart',
            info: "NBRLY is for people who want to connect right now. Whether you're grabbing a coffee or a drink",
            icon: dartIcon,
            appIcon: 'assets/icons/nbrly_logo.webp',
            about:
                "NBRLY helps you find someone nearby to hang out with in real time. It's perfect for making friends, catching up with "
                "new faces, or just enjoying a quick chat over a drink. NBRLY isn’t about planning ahead or scheduling meetups for "
                "later—it's about living in the moment and meeting new people fast."
                "\nHow NBRLY gets you connecting quickly."
                "\nNBRLY makes it easy to go from chatting to meeting up in no time! Here’s how it works:"
                "\nInstant connections: Only see people who are free right now and nearby. No waiting, no planning, just meet."
                "\nQuick chats, quick meetups: Conversations expire after an hour to encourage in-person meetups ASAP."
                "\nNot a dating app: NBRLY is about friendship and community—just good vibes and good drinks."
                "\nKeep it simple: First meetups are great at a cafe or bar, and we suggest everyone cover their own tab",
            project: ProjectsEnum.nbrly,
            teamMembers: ['Adnan Mohan', 'Nandish'],
            date: DateTime(2024, 10, 1),
            rolesAndResponsibility: 'Frontend Developer',
            technologiesAndTools:
                'Flutter, Stacked, MVVM Clean Architecture, Map, Geolocation, Firebase Firestore, Firebase Storabe, Firebase Authentication, Bloc, Push Notification',
            keyFeatures:
                'In-App Wallet, Electricity purchase, Airtime and Data purchase, Cable and Internet Purchase, Intelligent Frequent Pay, Real Time Notification',
            type: ProjectType.mobile,
            technology: 'Flutter',
            client: 'Hesplat Technologies',
            image:
                'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fcover%2Fnbrly_display.png?alt=media&token=2bc5961f-c620-4047-a48e-8e41172b2883',
            playLink:
                'https://play.google.com/store/apps/details?id=com.pyramiddeveloper.nbrly&pcampaignid=web_share',
            appleLink:
                'https://apps.apple.com/ng/app/nbrly/id6737793831',
            projectAssets: [
              ProjectAssets(
                title: 'HOMEPAGE',
                color: Colors.red,
                links: [
                  //'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fscreen-20240702-121523.mp4?alt=media&token=424a304a-fa2a-4ec6-a9f0-b5bb038b29f0',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2FScreenshot_20240614-051401.jpg?alt=media&token=739227cc-e95b-4692-bf14-c73815b438de',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2FScreenshot_20240703-113456.jpg?alt=media&token=873eac6a-0966-4524-8e46-04a2d55b6ed0',
                ],
              ),
              ProjectAssets(
                title: 'BUY ELECTRICITY',
                color: Colors.red,
                links: [
                  //'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fscreen-20240703-215403.mp4?alt=media&token=3e783371-140e-4862-9383-17348c7a867d',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2FScreenshot_20240614-051626.jpg?alt=media&token=3a22d153-ba26-4424-b57e-6623cab75c83',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2FScreenshot_20240703-173725.jpg?alt=media&token=2c272cba-591f-4682-b9d7-a0aed6036a67',
                ],
              ),
              ProjectAssets(
                title: 'BUY AIRTIME',
                color: Colors.red,
                links: [
                  //'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fbuy_airtime.mp4?alt=media&token=74e6f44b-5359-40c5-9152-279005044b47',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fbuy_airtime1.jpg?alt=media&token=1bbce4b9-27d8-479e-a464-125e3bc73627',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fbuy_airtime2.jpg?alt=media&token=d94461e1-fd47-4f78-b6ce-66dc1d2e4abf',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fbuy_airtime3.jpg?alt=media&token=306b58e4-0a73-4ad5-8e05-3d4b6a7ddbf0',
                ],
              ),
              ProjectAssets(
                title: 'OTHERS',
                color: Colors.red,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Frewards_page.jpg?alt=media&token=0ff8dfb4-925e-4888-b8aa-9e79939a4cd8',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fhistory_page.jpg?alt=media&token=fbadf855-e3f3-4707-835d-1488ea7c6350',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsecurity_page.jpg?alt=media&token=fa250c06-ccd1-43d9-88b1-672b60365287',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fnotification_ppage.jpg?alt=media&token=f72dc7b3-1336-43d6-be26-9b0b5724b3c6',
                ],
              ),
            ],
          ),
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
            image:
                'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fcover%2Fpower_plug_display.png?alt=media&token=a0b3675d-681f-4301-a47b-9c80eb9b877d',
            playLink:
                'https://play.google.com/store/apps/details?id=ng.powerplug.power_plug',
            appleLink:
                'https://apps.apple.com/ng/app/powerplug-pay-electricity/id6443731074',
            projectAssets: [
              ProjectAssets(
                title: 'HOMEPAGE',
                color: Colors.red,
                links: [
                  //'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fscreen-20240702-121523.mp4?alt=media&token=424a304a-fa2a-4ec6-a9f0-b5bb038b29f0',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2FScreenshot_20240614-051401.jpg?alt=media&token=739227cc-e95b-4692-bf14-c73815b438de',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2FScreenshot_20240703-113456.jpg?alt=media&token=873eac6a-0966-4524-8e46-04a2d55b6ed0',
                ],
              ),
              ProjectAssets(
                title: 'BUY ELECTRICITY',
                color: Colors.red,
                links: [
                  //'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fscreen-20240703-215403.mp4?alt=media&token=3e783371-140e-4862-9383-17348c7a867d',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2FScreenshot_20240614-051626.jpg?alt=media&token=3a22d153-ba26-4424-b57e-6623cab75c83',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2FScreenshot_20240703-173725.jpg?alt=media&token=2c272cba-591f-4682-b9d7-a0aed6036a67',
                ],
              ),
              ProjectAssets(
                title: 'BUY AIRTIME',
                color: Colors.red,
                links: [
                  //'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fbuy_airtime.mp4?alt=media&token=74e6f44b-5359-40c5-9152-279005044b47',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fbuy_airtime1.jpg?alt=media&token=1bbce4b9-27d8-479e-a464-125e3bc73627',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fbuy_airtime2.jpg?alt=media&token=d94461e1-fd47-4f78-b6ce-66dc1d2e4abf',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fbuy_airtime3.jpg?alt=media&token=306b58e4-0a73-4ad5-8e05-3d4b6a7ddbf0',
                ],
              ),
              ProjectAssets(
                title: 'OTHERS',
                color: Colors.red,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Frewards_page.jpg?alt=media&token=0ff8dfb4-925e-4888-b8aa-9e79939a4cd8',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fhistory_page.jpg?alt=media&token=fbadf855-e3f3-4707-835d-1488ea7c6350',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsecurity_page.jpg?alt=media&token=fa250c06-ccd1-43d9-88b1-672b60365287',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fnotification_ppage.jpg?alt=media&token=f72dc7b3-1336-43d6-be26-9b0b5724b3c6',
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
            appIcon: 'assets/icons/snacc.webp',
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
            image:
                'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fcover%2Fsnacc_display.png?alt=media&token=54a9c3a7-30d7-4b9e-98c5-24ba743d7a84',
            projectAssets: [
              ProjectAssets(
                title: 'ONBOARDING',
                color: Colors.green,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsnacc8.webp?alt=media&token=088385dc-041f-4148-aa1d-bd58232b8327',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsnacc10.webp?alt=media&token=42c9d736-9834-4ad1-adfa-0ae2c304bd81',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsnacc9.webp?alt=media&token=7422733c-6697-40c0-9b72-4d6a79fb464c',
                ],
              ),
              ProjectAssets(
                title: 'HOME PAGE',
                color: Colors.green,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsnacc1.png?alt=media&token=a3f79217-97b3-487e-811c-3661cc33d351',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsnacc2.webp?alt=media&token=0fd16001-360a-4d0f-ac8e-5cbc8dd87927',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsnacc7.png?alt=media&token=cfac170b-d625-477f-bce5-dc919902b3ce',
                ],
              ),
              ProjectAssets(
                title: 'SET UP PROFILE',
                color: Colors.green,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsnacc3.png?alt=media&token=d4803dd0-b97a-4e16-80aa-4a429a631f2d',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsnacc4.png?alt=media&token=90182be6-ef62-4c65-894b-0c9043360267',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsnacc5.png?alt=media&token=3e1a6cbf-a956-4a82-8335-1255cc5051f3',
                ],
              ),
            ],
          ),
          SideBarInfo(
            file: 'Sentrified.dart',
            info:
                'The Estate Management System is a Flutter-based app designed to streamline estate operations, providing residents with features such as access management via intelligent codes, voting on polls, payment receipt submission, complaint handling, and panic alerts. The app also caters to admin and security roles, ensuring efficient and secure management of estate activities.',
            about:
                'The Estate Management System is an innovative Flutter-based application designed to enhance the efficiency and security of estate operations. Residents can seamlessly manage access, participate in polls, submit payment receipts, and raise complaints or panic alerts through the app. Admins benefit from streamlined estate management, while security personnel utilize intelligent codes to control access effectively. This comprehensive solution ensures a well-coordinated and secure environment for all estate members.',
            appIcon: 'assets/icons/sentrified.webp',
            teamMembers: [
              'Marvellous Utai',
              'Chibuike',
              'Toheeb',
              'Mr. Bolaji',
            ],
            date: DateTime(2024, 4, 15),
            rolesAndResponsibility: 'Lead Frontend Developer',
            technologiesAndTools:
                'Flutter, Stacked, MVVM Clean Architecture, REST API',
            keyFeatures:
                'Access Management, Polling System, Payment Receipt Submission, Complaint Management, Panic Alerts',
            icon: dartIcon,
            type: ProjectType.mobile,
            project: ProjectsEnum.sentrified,
            technology: 'Flutter',
            client: 'Doc2Data',
            image:
                'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fcover%2FSentified%20logo.png?alt=media&token=8fc976e0-1338-484d-b266-3c9c3797379b',
            projectAssets: [
              ProjectAssets(
                title: 'ONBOARDING',
                color: Colors.blue,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsentrified1.jpg?alt=media&token=0de5b6c2-a347-4cd4-932d-35434f2dbc0d',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsentrified2.webp?alt=media&token=6bc6b111-f10d-4713-8b5c-197fcfda8d33',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsentrified7.webp?alt=media&token=0e0197bc-c5b6-45a7-94db-6b7d5e5bfd04',
                ],
              ),
              ProjectAssets(
                title: 'DASHBOARD and ACCESS',
                color: Colors.blue,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsentrified6.jpg?alt=media&token=beb72e87-2f65-4485-a4ae-6fd1bb0f3564',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsentrified5.jpg?alt=media&token=2b6d31d4-541a-4d09-8b92-cc7c4e9ae745',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsentrified4.jpg?alt=media&token=659cdfaf-bee3-4e08-9c92-d2bc90b10288',
                ],
              ),
              ProjectAssets(
                title: 'PANIC NOTIFICATION',
                color: Colors.blue,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsentrified3.jpg?alt=media&token=6ff9ca7b-4bf2-424b-ad30-dd4a1a968265',
                ],
              ),
            ],
          ),
          SideBarInfo(
            file: 'Sportifan.dart',
            info:
                'The Sportifan Playing and Umpiring App, developed with Flutter, consists of two separate applications: the User App and the Umpiring App. The User App allows users to create match schedules, form teams, and view match highlights and summaries, while the Umpiring App enables umpires to select venues, conduct tosses, configure run zones, manage gameplay, and record comprehensive game statistics.',
            about:
                'The Cricket Playing and Recording App is a versatile Flutter-based solution designed to enhance the organization and management of cricket matches. It comprises two distinct applications: the User App and the Umpiring App. The User App allows users to create match schedules, form teams, and view match highlights and summaries. The Umpiring App empowers umpires to select venues, conduct tosses, configure run zones, manage the actual gameplay, and record detailed game statistics, ensuring a seamless cricket experience for all participants.',
            appIcon: 'assets/icons/ssportifan_icon.png',
            teamMembers: [
              'Mayur Manu',
              'Niranjan-Dorage',
              'Nandish N S',
            ],
            date: DateTime(2024, 2, 15),
            rolesAndResponsibility: 'Frontend Developer, Tester',
            technologiesAndTools:
                'Flutter, Stacked, MVVM Clean Architecture, Firebase, Youtube API',
            keyFeatures:
                'Create Match Schedule, Create Teams, View Match Highlights, View Match Summary, Select Venue to Play, Conduct Toss to Determine Heads or Tails, Configure Cricket Run Zones, Manage Actual Playing of the Match, Save All Game Data and Stats',
            icon: dartIcon,
            type: ProjectType.mobile,
            project: ProjectsEnum.sportifan,
            technology: 'Flutter',
            client: 'Sportifan',
            image:
                'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fcover%2Fsportifan.webp?alt=media&token=21e4c337-1b68-46d0-bd96-e0916421f146',
            projectAssets: [
              ProjectAssets(
                title: 'ONBOARDING - User App',
                color: Colors.green,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsportifan1.webp?alt=media&token=9a92fc6d-58fb-467a-9a2c-8f859abb5ae2',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsportifan2.webp?alt=media&token=79e49f1d-bca1-4e46-bfc4-334f2599dced',
                ],
              ),
              ProjectAssets(
                title: 'In-App',
                color: Colors.green,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsportifan3.webp?alt=media&token=589ff42e-cbfe-4c53-b190-eb3889f4d721',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsportifan4.png?alt=media&token=b568948e-778b-45a7-a272-c7cc10f24c34',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsportifan6.webp?alt=media&token=07708c65-9017-4571-87e0-d2d482746b52',
                ],
              ),
              ProjectAssets(
                title: 'PLAYING AND RECORDING MATCH',
                color: Colors.green,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsportifan7.png?alt=media&token=185cc624-b978-4c2f-86fe-aa2185787b33',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsportifan8.png?alt=media&token=a79df650-2555-4496-86bc-06b3f13a5a2e',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsportifan9.png?alt=media&token=bfe977c1-ed4c-4eee-93fc-1677caeb2ab3',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsportifan10.png?alt=media&token=65b4602f-3580-4ca4-b521-a757457111a7',
                ],
              ),
              ProjectAssets(
                title: 'INNING and MATCH SUMMARY',
                color: Colors.green,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsportifan1.webp?alt=media&token=9a92fc6d-58fb-467a-9a2c-8f859abb5ae2',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fsportifan12.png?alt=media&token=04a61ce2-ed64-401d-9a42-2c66a8447c32',
                ],
              ),
            ],
          ),
          SideBarInfo(
            file: 'Altfit.dart',
            info:
                'The Fitness App, developed with Flutter, provides users with instructional videos and workout guides for cardio, flexibility, and weight training sessions. It also allows users to track their fitness progress by keeping streaks, logging workout history, and monitoring calories burnt.',
            about:
                'The Fitness App is a comprehensive Flutter-based application designed to help users achieve their fitness goals through structured guidance and tracking. It offers instructional videos for various types of workouts, including cardio, flexibility, and weight training sessions. Users can maintain workout streaks, log their workout history, and monitor calories burnt to track their progress effectively. This app provides a robust platform for users to stay motivated and on track with their fitness journey.',
            appIcon: 'assets/icons/altfit_icon.png',
            teamMembers: [
              'Mayur Manu',
              '+ 21 more',
            ],
            date: DateTime(2024, 3, 15),
            rolesAndResponsibility: 'Frontend Developer',
            technologiesAndTools:
                'Flutter, Stacked, MVVM Clean Architecture, Amplify, AWS',
            keyFeatures:
                'Access to instructional videos for various workouts, Cardio, Flexibility, Weight Training, Keep streaks, Monitor calories burnt, Log workout history',
            icon: dartIcon,
            type: ProjectType.mobile,
            project: ProjectsEnum.altFit,
            technology: 'Flutter',
            client: 'Altfit',
            image:
                'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fcover%2Faltfit.webp?alt=media&token=d6dac6ef-683c-4830-aed2-8b477156b94f',
            projectAssets: [
              ProjectAssets(
                title: 'ONBOARDING',
                color: Colors.blue,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit14.png?alt=media&token=1d556ba6-0a75-4af3-8e02-ca9902962462',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit3.webp?alt=media&token=0cd6ddae-1580-448a-81d7-009daed855f2',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit18.webp?alt=media&token=40e9dde2-9758-44af-b898-b7f3e3834099',
                ],
              ),
              ProjectAssets(
                title: 'CREATE WORKOUT PROFILE',
                color: Colors.blue,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit1.webp?alt=media&token=13b7784d-93a8-43c1-b35b-0971c41fc118',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit2.webp?alt=media&token=9d067f6d-2539-462f-aba8-4b28dc0f1c44',
                ],
              ),
              ProjectAssets(
                title: 'In-App',
                color: Colors.blue,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit5.png?alt=media&token=909bec5c-8755-4ead-b175-25c2dd3fe485',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit10.png?alt=media&token=cbc9d512-6378-4f7b-9049-37b5b6fa25ee',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit9.png?alt=media&token=c6f9986a-a321-4d01-a7e3-6bfd7b4445fb',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit11.png?alt=media&token=7994f93f-e62f-49e5-9dc2-2d57dc55b4a7',
                ],
              ),
              ProjectAssets(
                title: 'WEIGHT TRAINING SESSION',
                color: Colors.blue,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit17.png?alt=media&token=769c5c57-575c-44ba-ae02-0da8a3176f84',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit8.png?alt=media&token=71c2ec7f-ccb0-407a-a6b4-825ba67a63b1',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit17.png?alt=media&token=769c5c57-575c-44ba-ae02-0da8a3176f84',
                ],
              ),
              ProjectAssets(
                title: 'CARDIO TRAINING',
                color: Colors.blue,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit12.png?alt=media&token=c3238fdb-0c4b-4f61-8c7a-b915b38ec17e',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit13.png?alt=media&token=e6c32cc9-104e-4f0c-87f9-73c7ec77b645',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit14.png?alt=media&token=1d556ba6-0a75-4af3-8e02-ca9902962462',
                ],
              ),
              ProjectAssets(
                title: 'FLEXIBILITY TRAINING',
                color: Colors.blue,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit16.png?alt=media&token=c2d323a8-d6df-4c25-90b6-edad52d6be29',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit15.png?alt=media&token=fae30a4d-be2b-4217-8f54-eae9f8054cb9',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit17.png?alt=media&token=769c5c57-575c-44ba-ae02-0da8a3176f84',
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
            info:
                'ABB Blind-Dating App, built with Kotlin, allows users to sign up, create profiles, and connect with others through a swipe-based interface and in-app chat powered by Firebase. It features email verification for security and offers a fully translated experience in Korean.',
            about:
                "ABB Blind-Dating is a Kotlin-based platform designed to help users connect with potential matches through a swipe-based interface and secure in-app chat powered by Firebase. Users can easily sign up, create profiles, and verify their accounts via email to ensure a safe and authentic experience. The app is fully translated into Korean, making it accessible to a broader audience. With its intuitive design and robust features, the app provides a seamless and engaging dating experience.",
            appIcon: 'assets/icons/abb_dating.png',
            teamMembers: ['Solo project'],
            date: DateTime(2022, 6, 22),
            rolesAndResponsibility: 'Frontend Developer',
            technologiesAndTools:
                'Firebase RealtimeDB, Firebase Storage, Firebase Auth',
            keyFeatures:
                'User Sign-Up and Profile Creation, Swipe to Like or Dislike Profiles, In-App Chat Powered by Firebase, Email Verification for Security, Full App Translation to Korean',
            icon: kotlinIcon,
            project: ProjectsEnum.abbBlindDating,
            technology: 'Android (Kotlin)',
            client: 'Korean Client',
            image:
                'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fabb1.webp?alt=media&token=dabde2d4-5fea-4b70-bd24-8a94cea3eeeb',
            projectAssets: [
              ProjectAssets(
                title: 'SIGN IN and SIGN UP',
                color: Colors.blue,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fabb7.webp?alt=media&token=31120786-f727-420c-8342-7c6284633c4b',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fabb8.png?alt=media&token=4046a8fb-f35a-42bb-8ea2-36829ec08ca2',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fabb9.png?alt=media&token=842c01c5-8ef9-4761-9f63-a37fe59ceff8',
                ],
              ),
              ProjectAssets(
                title: 'HOME and DISCOVER',
                color: Colors.blue,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fabb1.webp?alt=media&token=dabde2d4-5fea-4b70-bd24-8a94cea3eeeb',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fabb2.webp?alt=media&token=2f33d08c-4450-46d3-9b40-2b30cdb689b9',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fabb3.webp?alt=media&token=282d6692-5169-4319-8222-fb528e9f4a7c',
                ],
              ),
              ProjectAssets(
                title: 'Chat',
                color: Colors.blue,
                links: [
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fabb6.webp?alt=media&token=f7a6142c-b26f-48bc-9f25-d85e5b91bf34',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Fabb4.webp?alt=media&token=a31ac582-8226-4bdb-8296-2fccdbbfff27',
                  'https://firebasestorage.googleapis.com/v0/b/onwuka-b0f88.appspot.com/o/portfolio%2Fmocks%2Faltfit10.png?alt=media&token=cbc9d512-6378-4f7b-9049-37b5b6fa25ee',
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
