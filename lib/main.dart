import 'package:portfolio/imports/common_imports.dart';
import 'package:portfolio/ui/homepage/views/homepage_view.dart';
import 'globals/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const HomepageView(),
    );
  }
}
