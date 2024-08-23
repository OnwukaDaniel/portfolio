import 'package:portfolio/common_imports.dart';

class AboutMeRepo {
  static List<SideBar> getPersonalInfo() {
    return [
      SideBar(
        displayName: 'bio',
        icon: 'assets/icons/folder1.png',
        files: [
          SideBarInfo(
            file: 'bio.dart',
            info: '/**'
                '\n**       About Me:\n*    With 4 years of experience in software development, '
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
                '\n**   performance of the software.\n *      I am eager to bring my diverse skill set'
                '\n**   to a dynamic and collaborative tech environment where I can continue to grow'
                '\n**   and contribute to innovative projects.\n**/',
          )
        ],
        show: true,
      ),
      SideBar(
        displayName: 'interest',
        icon: 'assets/icons/folder2.png',
        files: [
          SideBarInfo(
              file: 'interest.dart',
              info:
                  "I’m passionate about the ever-evolving world of technology and the thrill of pushing boundaries, both in my work and in my hobbies.\n\n*AI-Powered Apps*: I’m fascinated by the potential of artificial intelligence to transform how we interact with technology. I enjoy building apps that leverage AI to solve real-world problems, making complex processes simpler and more intuitive.\n\n*Algorithms and Data Structures*: The elegance of a well-crafted algorithm and the efficiency of optimized data structures captivate me. I love tackling challenging problems, refining solutions, and constantly improving my understanding of computational theory.\n\n*Game Development*: Combining creativity with technical skill, game development is a perfect playground for me. I enjoy crafting immersive experiences, whether it's through innovative gameplay mechanics or engaging storytelling.\n\n*Video Games*: As a gamer at heart, I appreciate the artistry and engineering behind video games. Playing a variety of genres not only fuels my creativity but also provides inspiration for my own game development projects.\n\n*Blockchain*: The decentralized nature of blockchain technology excites me. I'm keen on exploring its applications beyond cryptocurrencies, particularly in areas like smart contracts and decentralized applications (dApps).\n\n*Skydiving*: When I’m not coding, I look forward to chasing adrenaline. Skydiving is my ultimate escape, offering a unique perspective and a rush like no other—reminding me to take leaps, both in life and in technology.")
        ],
        show: false,
      ),
      SideBar(
        displayName: 'education',
        icon: 'assets/icons/folder3.png',
        files: [
          SideBarInfo(
            file: 'university.dart',
            info: "*Federal University of Technology Akure, Ondo Nigeria* — Bachelor of Technology \n*JANUARY 2018 - DECEMBER 2023*\n\nGraduated with Honors in Industrial Chemistry.\nServed as the class governor:\n1. Demonstrating leadership by organising all class activities with lecturers and students \n2. Conducting tutorials to enhance collaborative learning.\n3. Acquired a strong foundation in industrial chemistry principles, contributing to a comprehensive understanding of the field.",
          ),
        ],
        show: false,
      ),
    ];
  }
}
