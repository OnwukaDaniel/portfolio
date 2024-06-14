import 'package:portfolio/app_navigate.dart';
import 'package:portfolio/imports/common_imports.dart';

class PathBar extends StackedHookView<HomepageViewModel> {
  const PathBar({super.key});

  @override
  Widget builder(BuildContext context, model) {
    var color = ColorUtils.textColor(context);
    var ll = TextUtils.labelLarge(context);
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 20,
            child: ValueListenableBuilder(
              valueListenable: AppNavigate.pathVn,
              builder: (context, pathSet, _) {
                if (pathSet.isEmpty) return const SizedBox();
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => InkWell(
                    onTap: () => AppNavigate.push(
                        context, pathSet.elementAt(index)),
                    child: Text(
                      pathSet.elementAt(index).name,
                      style: ll,
                    ),
                  ),
                  separatorBuilder: (_, index) => Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: color.withOpacity(.8),
                      size: 14,
                    ),
                  ),
                  itemCount: pathSet.length,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
