import 'package:portfolio/common_imports.dart';

class ProjectSideBar extends StackedHookView<ProjectsViewmodel> {
  const ProjectSideBar({super.key});

  @override
  Widget builder(BuildContext context, model) {
    var ll = TextUtils.labelLarge(context);
    var bl = TextUtils.bodyLarge(context);
    var desktop = context.device == DeviceType.desktop;

    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              value: model.showAll,
              onChanged: (value) => model.setShowAll(!model.showAll),
            ),
            const SizedBox(width: 8),
            Expanded(child: Text('All ${desktop ? 'projects' : ''}', style: ll))
          ],
        ),
        const SizedBox(height: 32),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: model.sideBarInfoList.length,
          itemBuilder: (_, index) {
            var data = model.sideBarInfoList.elementAt(index);
            return InkWell(
              //onTap: () => model.jump(index),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Checkbox(
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(16),
                  //   ),
                  //   value: model.carouselIndex == index,
                  //   onChanged: (value) => model.jump(index),
                  // ),
                  // const SizedBox(width: 16),
                  if (context.device == DeviceType.desktop)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Image.asset(data.appIcon, width: 32, height: 32,
                          errorBuilder: (_, __, ___) {
                        return Icon(Icons.app_settings_alt, color: ll.color);
                      }),
                    ),
                  if (context.device == DeviceType.largeDesktop) ...[
                    Image.asset(data.icon, width: 18, height: 18),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          data.project?.name ?? '',
                          style: ll.copyWith(
                            fontSize: model.carouselIndex == index
                                ? bl.fontSize
                                : ll.fontSize,
                            color: model.carouselIndex == index
                                ? ll.color
                                : ll.color!.withOpacity(.7),
                            fontWeight: model.carouselIndex == index
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    )
                  ],
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
