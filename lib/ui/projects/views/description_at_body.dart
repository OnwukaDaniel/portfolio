import 'package:portfolio/imports/common_imports.dart';

class DescriptionAtBody extends StackedHookView<ProjectsViewmodel> {
  final SideBarInfo data;

  const DescriptionAtBody(this.data, {super.key});

  @override
  Widget builder(BuildContext context, model) {
    var size = MediaQuery.of(context).size;
    var bs = TextUtils.bodySmall(context);
    var bm = TextUtils.bodyMedium(context);

    if (model.scrollOffset >= 100) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            elevation: 3,
            borderRadius: BorderRadius.circular(32),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 8,
              ),
              child: Text(
                'Project Description',
                maxLines: 5,
                textAlign: TextAlign.center,
                style: bm.copyWith(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Text(
            data.info,
            maxLines: 5,
            style: bs.copyWith(
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 18),
        ],
      );
    }
    return const SizedBox();
  }
}
