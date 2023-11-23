import 'package:portfolio/imports/common_imports.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            "assets/home/code_image.jpg",
            height: 100,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}