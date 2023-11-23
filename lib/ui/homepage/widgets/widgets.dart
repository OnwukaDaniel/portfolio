import 'package:portfolio/imports/common_imports.dart';
import 'package:portfolio/ui/homepage/enums/appbar_action_enum.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

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
