import 'package:portfolio/common_imports.dart';

Color backColor = const Color(0xFFFFFFFF);
Color textOnBackColor = Colors.black87;

class HomepageView extends StatelessWidget {
  static const String id = 'HomepageView';
  const HomepageView({super.key});

  @override
  Widget build(BuildContext context) {
    AppNavigate.addToPath(PathEnum.home);

    return ViewModelBuilder<HomepageViewModel>.nonReactive(
      viewModelBuilder: () => HomepageViewModel(),
      builder: (context, model, child) {
        return const Scaffold(
          backgroundColor: Colors.transparent,
          body: Home(),
        );
      },
    );
  }
}
