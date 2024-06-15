import 'package:portfolio/ui/views/footer.dart';

import 'imports/common_imports.dart';

class AppWrapper extends StackedHookView<HomepageViewModel> {
  final Widget child;

  const AppWrapper({super.key, required this.child});

  @override
  Widget builder(BuildContext context, model) {
    var ll = TextUtils.labelLarge(context);
    var lm = TextUtils.labelMedium(context);
    var bs = TextUtils.bodySmall(context);

    var size = MediaQuery.of(context).size;
    List<PathEnum> actions = [
      PathEnum.home,
      PathEnum.aboutMe,
      PathEnum.contactUs,
      PathEnum.portfolio,
      PathEnum.services,
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(size.width, 96),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 16),
                      InkWell(
                        onTap: () {
                          if (Navigator.canPop(context)) Navigator.pop(context);
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: const CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 6,
                        ),
                      ),
                      const SizedBox(width: 6),
                      const CircleAvatar(
                        backgroundColor: Colors.lightGreenAccent,
                        radius: 6,
                      ),
                      const SizedBox(width: 6),
                      const CircleAvatar(
                          backgroundColor: Colors.green, radius: 6),
                      const SizedBox(width: 16),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Onwuka Daniel - portfolio.dart (:app)',
                      style: ll.copyWith(color: ll.color!.withOpacity(.8)),
                    ),
                  ),
                ],
              ),
            ),
            const PathBar(),
            Container(height: .2, width: double.infinity, color: Colors.grey),
            Row(
              children: [
                const SizedBox(width: 16),
                Expanded(
                  flex: 2,
                  child: Text(
                    AppConstants.devName,
                    style: bs.copyWith(color: lm.color!.withOpacity(.6)),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    height: 42,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: actions.length,
                      itemBuilder: (_, index) {
                        return InkWell(
                          onTap: () {
                            AppNavigate.push(_, actions.elementAt(index));
                          },
                          child: Row(
                            children: [
                              if (index == 0)
                                Container(
                                  height: 40.5,
                                  width: .2,
                                  color: Colors.grey,
                                ),
                              Column(
                                children: [
                                  Container(
                                    height: .2,
                                    width: (actions[index].name.length * 11) +
                                        16 * 2,
                                    color: Colors.grey,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Text(actions[index].name, style: lm),
                                  ),
                                  ValueListenableBuilder(
                                    valueListenable: AppNavigate.pathVn,
                                    builder: (context, value, _) {
                                      return Container(
                                        height: 1,
                                        width:
                                            (actions[index].name.length * 11) +
                                                16 * 2,
                                        color: actions[index] == value.last
                                            ? Colors.amberAccent
                                            : Colors.transparent,
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Container(
                                height: 40.5,
                                width: .5,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: .2,
              margin: const EdgeInsets.only(left: 64),
              width: double.infinity,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      body: child,
      bottomNavigationBar: const Wrap(
        children: [
          Footer(),
        ],
      ),
    );
  }
}
