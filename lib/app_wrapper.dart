import 'package:portfolio/ui/views/footer.dart';

import 'imports/common_imports.dart';

class AppWrapper extends StatelessWidget {
  final Widget child;
  final bool showAppBar;
  final bool showBottomBar;

  const AppWrapper({
    super.key,
    required this.child,
    this.showAppBar = true,
    this.showBottomBar = true,
  });

  @override
  Widget build(BuildContext context) {
    var ll = TextUtils.labelLarge(context).copyWith(fontFamily: 'Nunito');
    var bs = TextUtils.bodySmall(context).copyWith(fontFamily: 'Nunito');

    List<PathEnum> actions = [
      PathEnum.home,
      PathEnum.aboutMe,
      PathEnum.contactUs,
      PathEnum.portfolio,
      PathEnum.services,
    ];
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
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
                            if (Navigator.canPop(context)) {
                              Navigator.pop(context);
                            }
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
              if (showAppBar)
                Row(
                  children: [
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 2,
                      child: Text(
                        AppConstants.devName,
                        style: bs.copyWith(color: ll.color!.withOpacity(.6)),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 5,
                      child: SizedBox(
                        height: 42.2,
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
                                        width:
                                            (actions[index].name.length * 11) +
                                                16 * 2,
                                        color: Colors.grey,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Text(actions[index].name,
                                            style: ll),
                                      ),
                                      ValueListenableBuilder(
                                        valueListenable: AppNavigate.pathVn,
                                        builder: (context, value, _) {
                                          return Container(
                                            height: 1,
                                            width: (actions[index].name.length *
                                                    11) +
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
                width: double.infinity,
                color: Colors.grey,
              ),
            ],
          ),
          Expanded(child: child),
        ],
      ),
      bottomNavigationBar: Wrap(
        children: [
          if(showBottomBar) const Footer(),
        ],
      ),
    );
  }
}
