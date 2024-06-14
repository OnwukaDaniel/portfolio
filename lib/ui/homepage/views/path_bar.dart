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
            child: StreamBuilder(
              stream: AppNavigate.pathStream.stream,
              builder: (context, stream) {
                if (!stream.hasData) return const SizedBox();
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => InkWell(
                    onTap: () => AppNavigate.push(
                        context, stream.data!.elementAt(index)),
                    child: Text(
                      stream.data!.elementAt(index).name,
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
                  itemCount: stream.data!.length,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
