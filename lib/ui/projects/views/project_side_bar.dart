import 'package:portfolio/imports/common_imports.dart';

class ProjectSideBar extends StackedHookView<ProjectsViewmodel> {
  const ProjectSideBar({super.key});

  @override
  Widget builder(BuildContext context, model) {
    var ll = TextUtils.labelLarge(context);
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: model.sideBarList.length,
      itemBuilder: (_, index) {
        var data = model.sideBarList.elementAt(index);
        return Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              ),
              value: model.sideBarInfoList.contains(data.files.first),
              onChanged: (value) => model.setProject(data.files),
            ),
            const SizedBox(width: 16),
            Image.asset(data.files.first.icon, width: 18, height: 18),
            const SizedBox(width: 8),
            Text(data.displayName, style: ll)
          ],
        );
      },
    );
  }
}
