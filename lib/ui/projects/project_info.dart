import 'package:portfolio/imports/common_imports.dart';

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

    return AppWrapper(
      showAppBar: false,
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(46),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: size.height * .25,
                pinned: true,
                flexibleSpace: LayoutBuilder(
                  builder: (_, BoxConstraints constraints) {
                    var top = constraints.biggest.height;
                    return FlexibleSpaceBar(
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
                          Column(
                            children: [
                              const Spacer(flex: 2),
                              Padding(
                                padding: const EdgeInsets.all(64),
                                child: Text(
                                  data.file.substring(0, data.file.indexOf('.')),
                                  maxLines: 5,
                                  textAlign: TextAlign.center,
                                  style: bl.copyWith(
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              const Spacer(flex: 1)
                            ],
                          ),
                          Positioned(
                            bottom: 32,
                            right: 32,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                data.appIcon,
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ),
                        ],
                      ),
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
                                  data.file.substring(0, data.file.indexOf('.')),
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
                    );
                  },
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
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
                        const SizedBox(height: 12),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
