import 'package:portfolio/common_imports.dart';

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
        return OverlaySupport.global(
          child: MaterialApp(
            title: 'My Portfolio',
            debugShowCheckedModeBanner: false,
            theme: value,
            home: ValueListenableBuilder(
              valueListenable: AppNavigate.homeBodyVn,
              builder: (context, path, _) {
                return AppWrapper(id: 'id', child: path.page);
              }
            ),
          ),
        );
      },
    );
  }
}
