import 'package:portfolio/common_imports.dart';

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
        var desktop = context.device == DeviceType.desktop;
        return AppWrapper(
          child: Row(
            children: [
              Container(
                height: size.height,
                width: .2,
                color: Colors.grey,
              ),
              if(context.device != DeviceType.mobile)Expanded(
                flex: desktop ? 5 : 4,
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                flex: 13,
                child: ProjectsInfoDisplay(),
              ),
            ],
          ),
        );
      },
    );
  }
}
