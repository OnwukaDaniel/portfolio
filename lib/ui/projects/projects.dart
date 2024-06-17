import 'package:portfolio/imports/common_imports.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    var bs = TextUtils.bodySmall(context);
    var ll = TextUtils.labelLarge(context);
    var size = MediaQuery.of(context).size;

    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => ProjectsViewmodel(),
      onViewModelReady: (_) => _.init(),
      builder: (_, model, __) {
        return AppWrapper(
          child: Row(
            children: [
              Container(
                height: size.height,
                width: .2,
                color: Colors.grey,
              ),
              const Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ProjectSideBar()],
                  ),
                ),
              ),
              Container(
                height: size.height,
                width: .2,
                color: Colors.grey,
              ),
              const Expanded(
                flex: 8,
                child: ProjectsInfoDisplay(),
              ),
            ],
          ),
        );
      },
    );
  }
}
