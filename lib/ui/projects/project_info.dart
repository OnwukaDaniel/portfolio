import 'package:portfolio/imports/common_imports.dart';
import 'package:portfolio/ui/projects/views/description_at_body.dart';

class ProjectInfo extends StatelessWidget {
  final SideBarInfo data;

  const ProjectInfo(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var tm = TextUtils.titleMedium(context);
    var bs = TextUtils.bodySmall(context);
    var bl = TextUtils.bodyLarge(context);
    var bm = TextUtils.bodyMedium(context);
    var ll = TextUtils.labelLarge(context);

    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => ProjectsViewmodel(),
      onViewModelReady: (_) => _.silverBarStretched(),
      builder: (context, model, _) {
        return AppWrapper(
          showAppBar: false,
          child: Scaffold(
            body: Container(
              margin: const EdgeInsets.all(46),
              clipBehavior: Clip.hardEdge,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16)),
              child: CustomScrollView(
                controller: model.pageScrollController,
                slivers: [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    expandedHeight: size.height * .25,
                    pinned: true,
                    flexibleSpace: LayoutBuilder(
                      builder: (_, BoxConstraints constraints) {
                        var top = constraints.biggest.height;
                        return FlexibleSpaceBar(
                          title: AnimatedOpacity(
                            duration: const Duration(milliseconds: 300),
                            opacity: top <= kToolbarHeight + 10 ? 1.0 : 0.0,
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Image.asset(
                                  data.image,
                                  width: double.infinity,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(width: 16),
                                    Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: Image.asset(
                                        data.appIcon,
                                        height: kToolbarHeight,
                                        width: kToolbarHeight,
                                      ),
                                    ),
                                    Text(
                                      data.file
                                          .substring(0, data.file.indexOf('.')),
                                      maxLines: 5,
                                      textAlign: TextAlign.center,
                                      style: bl.copyWith(
                                        fontSize: 20,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          background: Stack(
                            children: [
                              Image.asset(
                                data.image,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.black87,
                                      Colors.black45,
                                      Colors.black38,
                                      Colors.black12,
                                      Colors.black12,
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 7,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Spacer(flex: 2),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 46),
                                          child: Text(
                                            data.file.substring(
                                                0, data.file.indexOf('.')),
                                            maxLines: 5,
                                            textAlign: TextAlign.center,
                                            style: bl.copyWith(
                                              overflow: TextOverflow.ellipsis,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const Spacer(flex: 1),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16),
                                          child: Text(
                                            data.info,
                                            maxLines: 5,
                                            style: bs.copyWith(
                                              overflow: TextOverflow.ellipsis,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const Spacer(flex: 1),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        data.appIcon,
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16),
                          DescriptionAtBody(data),
                          const SizedBox(height: 600),
                        ],
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
