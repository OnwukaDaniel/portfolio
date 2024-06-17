import 'package:portfolio/imports/common_imports.dart';
import 'package:portfolio/ui/projects/viewmodel/project_card_viewmodel.dart';

class ProjectsInfoDisplay extends StackedHookView<ProjectsViewmodel> {
  const ProjectsInfoDisplay({super.key});

  @override
  Widget builder(BuildContext context, model) {
    var size = MediaQuery.of(context).size;
    var ll = TextUtils.labelLarge(context);
    var textColor = ll.color!.withOpacity(.5);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: kToolbarHeight * .7,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              var data = model.sideBarInfoList.elementAt(index);
              return InkWell(
                onTap: () => model.setDisplayPersonalInfo(data),
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    Text(data.file, style: ll.copyWith(color: textColor)),
                    const SizedBox(width: 8),
                    InkWell(
                      onTap: () => model.removePersonalInfo(data),
                      child: Icon(Icons.close, color: textColor, size: 14),
                    ),
                    const SizedBox(width: 16),
                    if (index == model.sideBarInfoList.length - 1)
                      Container(
                        height: double.infinity,
                        width: .2,
                        color: Colors.grey,
                      )
                  ],
                ),
              );
            },
            separatorBuilder: (_, index) {
              return Container(
                height: double.infinity,
                width: .2,
                color: Colors.grey,
              );
            },
            itemCount: model.sideBarInfoList.length,
          ),
        ),
        Container(
          height: .2,
          width: size.width,
          color: Colors.grey,
        ),
        Expanded(child: ProjectGrid(model)),
      ],
    );
  }
}

class ProjectGrid extends StatefulWidget {
  final ProjectsViewmodel model;

  const ProjectGrid(this.model, {super.key});

  @override
  State<ProjectGrid> createState() => _ProjectGridState();
}

class _ProjectGridState extends State<ProjectGrid>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var ll = TextUtils.labelLarge(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          children: List.generate(
            widget.model.sideBarInfoList.length,
            (index) {
              var data = widget.model.sideBarInfoList.elementAt(index);
              return ViewModelBuilder.nonReactive(
                viewModelBuilder: () => ProjectsCardViewmodel(),
                onViewModelReady: (_) => _.init(this),
                builder: (context, model, _) {
                  return AnimatedBuilder(
                    animation: model.boxShadowAnimation,
                    builder: (context, _) {
                      return MouseRegion(
                        onEnter: (_) {
                          model.controller.animateTo(1);
                          model.sizeController.animateTo(1);
                        },
                        onExit: (_) {
                          model.controller.animateTo(0);
                          model.sizeController.animateTo(0);
                        },
                        child: Container(
                          width: model.sizeAnimation.value * 150,
                          height: model.sizeAnimation.value * 200,
                          margin: const EdgeInsets.all(8),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.2),
                                offset: const Offset(2, 2),
                                blurRadius: model.boxShadowAnimation.value,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 12,
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      data.image,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      color: Colors.black.withOpacity(.5),
                                    ),
                                    Positioned(
                                      right: 8,
                                      top: 8,
                                      child: Image.asset(
                                        data.icon,
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),
                              Expanded(
                                flex: 7,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    data.info,
                                    maxLines: (model.sizeAnimation.value * 2).round(),
                                    style: ll.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        WidgetStateProperty.all(Colors.black),
                                  ),
                                  onPressed: () {},
                                  child: Text('View project', style: ll),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
