import 'dart:developer';

import 'package:portfolio/common_imports.dart';
import 'package:portfolio/ui/projects/project_info.dart';

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
            itemCount: model.sideBarInfoList.length,
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
          ),
        ),
        Container(height: .2, width: size.width, color: Colors.grey),
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

class _ProjectGridState extends State<ProjectGrid> {
  @override
  Widget build(BuildContext context) {
    var ll = TextUtils.labelLarge(context);
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 64, right: 64, left: 64),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          viewportFraction: .8,
          enlargeFactor: .3,
          enlargeCenterPage: true,
          scrollDirection: Axis.vertical,
        ),
        itemCount: widget.model.sideBarInfoList.length,
        itemBuilder: (_, int index, __) {
          var data = widget.model.sideBarInfoList.elementAt(index);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SizedBox(width: 4),
                  Text(
                    '// ${data.file.substring(0, data.file.indexOf('.'))}',
                    style: ll.copyWith(color: Colors.blue[800]),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      ' Project ${index + 1}',
                      maxLines: 1,
                      style: ll.copyWith(color: ll.color!.withOpacity(.4)),
                    ),
                  ),
                ],
              ),
              Container(
                height: size.height * .5,
                margin: const EdgeInsets.all(8),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      offset: const Offset(2, 2),
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
                          maxLines: 2,
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
                        onPressed: () {
                          AppNavigate.justPush(
                            context,
                            ProjectInfo(data),
                          );
                        },
                        child: Text(
                          'View project',
                          style: ll.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
