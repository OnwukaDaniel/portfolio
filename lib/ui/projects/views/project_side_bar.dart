import 'package:portfolio/common_imports.dart';

class ProjectSideBar extends StackedHookView<ProjectsViewmodel> {
  const ProjectSideBar({super.key});

  @override
  Widget builder(BuildContext context, model) {
    var ll = TextUtils.labelLarge(context);
    var desktop = getDeviceType(context) == DeviceType.desktop;

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
            return Row(
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  value: false,
                  //model.sideBarInfoList.contains(data.files.first),
                  onChanged: (value) => 0, //model.setProject(data.files),
                ),
                const SizedBox(width: 16),
                Image.asset(data.icon, width: 18, height: 18),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(data.project?.name ?? '', style: ll, maxLines: 1),
                )
              ],
            );
          },
        ),
      ],
    );
  }
}
