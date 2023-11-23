import 'dart:async';

import 'package:portfolio/imports/common_imports.dart';
import 'package:portfolio/ui/homepage/views/homepage_view.dart';

import 'globals/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
        return const HomepageView();
      }), (route) => false);
    });

    return Image.asset("assets/home/code_image_large.jpg", fit: BoxFit.cover);
  }
}
