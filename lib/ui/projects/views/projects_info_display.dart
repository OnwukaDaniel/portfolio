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
                onTap: () => model.jump(index),
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    Text(
                      data.file,
                      style: ll.copyWith(
                        color:
                            model.carouselIndex == index ? ll.color : textColor,
                        fontWeight: model.carouselIndex == index
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    const SizedBox(width: 8),
                    // InkWell(
                    //   onTap: () => model.removePersonalInfo(data),
                    //   child: Icon(Icons.close, color: textColor, size: 14),
                    // ),
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
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 0, right: 64, left: 64),
            child: Builder(builder: (context) {
              return GridView.builder(
                itemCount: model.sideBarInfoList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 500,
                  crossAxisSpacing: 12,
                  crossAxisCount: context.device == DeviceType.mobile ? 1 : 2,
                ),
                itemBuilder: (_, int index) {
                  var data = model.sideBarInfoList.elementAt(index);
                  return card(data, index + 1);
                },
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget card(SideBarInfo data, int index) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var ll = TextUtils.labelLarge(context);
        var bl = TextUtils.bodyLarge(context);

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
            InkWell(
              onTap: () => AppNavigate.justPush(context, ProjectInfo(data)),
              child: Container(
                margin: const EdgeInsets.all(8),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: ll.color,
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
                    Stack(
                      children: [
                        Image.network(
                          data.image,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          height:
                              (constraints.maxHeight * .9) - kToolbarHeight * 3,
                        ),
                        Container(
                          height:
                              (constraints.maxHeight * .9) - kToolbarHeight * 3,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              end: Alignment.bottomCenter,
                              begin: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(.01),
                                Colors.black.withOpacity(.01),
                                Colors.black.withOpacity(.02),
                                Colors.black.withOpacity(.1),
                                Colors.black.withOpacity(.2),
                                Colors.black.withOpacity(.2),
                                Colors.black.withOpacity(.4),
                                Colors.black.withOpacity(.5),
                                Colors.black.withOpacity(.7),
                                Colors.black.withOpacity(.8),
                              ],
                            ),
                          ),
                        ),
                        Container(color: Colors.black.withOpacity(.5)),
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Image.asset(
                            data.icon,
                            width: 20,
                            height: 20,
                          ),
                        ),
                        Positioned(
                          left: 8,
                          bottom: 8,
                          child: Text(
                            data.project?.name ?? '',
                            maxLines: 2,
                            style: bl.copyWith(
                              fontFamily: 'OpenSans',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                              fontSize: bl.fontSize! + 5,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        data.info,
                        maxLines: 2,
                        style: ll.copyWith(
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).scaffoldBackgroundColor,
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
            ),
          ],
        );
      },
    );
  }
}
