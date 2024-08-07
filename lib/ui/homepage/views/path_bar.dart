import 'package:portfolio/common_imports.dart';

class PathBar extends StatelessWidget {
  const PathBar({super.key});

  @override
  Widget build(BuildContext context) {
    var color = ColorUtils.textColor(context);
    var ll = TextUtils.labelLarge(context);
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ValueListenableBuilder(
                valueListenable: AppNavigate.pathVn,
                builder: (context, pathSet, _) {
                  if (pathSet.isEmpty) return const SizedBox();
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => Row(
                      children: [
                        InkWell(
                          onTap: () => AppNavigate.push(
                              context, pathSet.elementAt(index)),
                          child: Text(
                            pathSet.elementAt(index).name.replaceAll('_', ''),
                            style: ll,
                          ),
                        ),
                        if (index != pathSet.length - 1)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: color.withOpacity(.8),
                              size: 14,
                            ),
                          ),
                      ],
                    ),
                    itemCount: pathSet.length,
                  );
                },
              ),
            ),
          ),
        ),
        if (context.device == DeviceType.mobile)
          StatefulBuilder(
              builder: (context, setState) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(
                  Icons.menu,
                  color: ll.color,
                ),
              );
            }
          )
      ],
    );
  }
}
