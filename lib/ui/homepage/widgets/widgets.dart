import 'package:portfolio/imports/common_imports.dart';

class HomeAppBarText extends StackedHookView<HomepageViewModel> {
  final AppBarActionEnum appBarActionEnum;

  const HomeAppBarText({super.key, required this.appBarActionEnum})
      : super(reactive: true);

  @override
  Widget builder(BuildContext context, model) {
    TextStyle ts = const TextStyle(color: Colors.white);
    return InkWell(
      onTap: () {
        model.setAppBarAction(appBarActionEnum);
        model.setAppBarColor(context, appBarActionEnum);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Text(appBarActionEnum.name, style: ts),
      ),
    );
  }
}
