import 'package:portfolio/imports/common_imports.dart';

class AboutMeRepo {
  static List<AboutSideBar> getPersonalInfo() {
    return [
      AboutSideBar(
        displayName: 'bio',
        icon: 'assets/icons/folder1.png',
        files: [
          AboutSideBarInfo(
            file: 'bio.dart',
            info: '/**'
                '\n**       About Me:\n* With 4 years of experience in software development, '
                '\n**   I am a results-oriented IT professional dedicated to delivering '
                '\n**   high-quality solutions. My excellent communication skills and passion'
                '\n**   for problem-solving enable me to effectively collaborate with team '
                '\n**   members and stakeholders, ensuring project success. '
                '\n**       I am proficient in version control and adept at working with '
                '\n**   third-party APIs to enhance functionality. My expertise includes '
                '\n**   UI/UX design, where I strive to create user-centric solutions that '
                '\n**   meet the needs and expectations of end-users. Additionally, I have a'
                '\n**   strong background in research, Firebase, and Google Maps integration,'
                '\n**   which allows me to develop robust and scalable applications. My technical'
                '\n**   skill set includes a deep understanding of RESTful API integration,'
                '\n**   state management, and the implementation of CI/CD practices for continuous'
                '\n**   integration and continuous development. I excel in debugging processes,'
                '\n**   ensuring that issues are resolved promptly to maintain the quality and'
                '\n**   performance of the software.\n * I am eager to bring my diverse skill set'
                '\n**   to a dynamic and collaborative tech environment where I can continue to grow'
                '\n**   and contribute to innovative projects.\n**/',
          )
        ],
        show: true,
      ),
      AboutSideBar(
        displayName: 'interest',
        icon: 'assets/icons/folder2.png',
        files: [AboutSideBarInfo(file: 'interest.dart')],
        show: false,
      ),
      AboutSideBar(
        displayName: 'education',
        icon: 'assets/icons/folder3.png',
        files: [
          AboutSideBarInfo(file: 'high-school.dart'),
          AboutSideBarInfo(file: 'university.dart'),
        ],
        show: false,
      ),
    ];
  }
}
