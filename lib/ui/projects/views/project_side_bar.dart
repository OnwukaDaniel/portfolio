import 'package:portfolio/imports/common_imports.dart';

class ProjectSideBar extends StackedHookView<ProjectsViewmodel> {
  const ProjectSideBar({super.key});

  @override
  Widget builder(BuildContext context, model) {
    var bs = TextUtils.bodySmall(context);
    var ll = TextUtils.labelLarge(context);
    var size = MediaQuery.of(context).size;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: model.sideBarList.length,
      itemBuilder: (_, index) {
        var data = model.sideBarList.elementAt(index);
        return Row(
          children: [
            Checkbox(
              value: data.show,
              onChanged: (value) => model.showSideBarInfo(!data.show, index),
            ),
            Image.asset(data.icon, width: 20, height: 20),
            const SizedBox(width: 12),
            Text(data.displayName, style: ll)
          ],
        );
      },
    );
  }
}
