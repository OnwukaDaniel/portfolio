import 'package:portfolio/imports/common_imports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  runApp(const MyApp());
}

ValueNotifier<ThemeData> appThemeVn = ValueNotifier(AppTheme.darkTheme);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: appThemeVn,
        builder: (context, value, _) {
          return MaterialApp(
            title: 'My Portfolio',
            debugShowCheckedModeBanner: false,
            theme: value,
            home: const HomepageView(),
          );
        }
    );
  }
}
