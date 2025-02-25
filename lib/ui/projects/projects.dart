import 'package:portfolio/common_imports.dart';

class Projects extends StatelessWidget {
  static const String id = 'Projects';
  static const String path = '/Projects';
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => ProjectsViewmodel(),
      onViewModelReady: (_) => _.init(),
      builder: (_, model, __) {
        var desktop = context.device == DeviceType.desktop;
        return AppWrapper(
          id: id,
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
