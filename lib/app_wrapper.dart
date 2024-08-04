import 'package:flutter/scheduler.dart';
import 'package:portfolio/ui/views/footer.dart';

import 'common_imports.dart';

class AppWrapper extends StatefulWidget {
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
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper>
    with SingleTickerProviderStateMixin {
  ValueNotifier<BgEnum?> appBgVn = ValueNotifier(BgEnum.two);

  @override
  Widget build(BuildContext context) {
    var ll = TextUtils.labelLarge(context).copyWith(fontFamily: 'Nunito');
    var bs = TextUtils.bodySmall(context).copyWith(fontFamily: 'Nunito');
    var bl = TextUtils.bodySmall(context).copyWith(fontFamily: 'Nunito');
    var tm = TextUtils.titleMedium(context).copyWith(fontFamily: 'Nunito');
    bool showQuickLinks = false;
    bool showTools = true;
    List<PathEnum> actions = [
      PathEnum.home,
      PathEnum.aboutMe,
      PathEnum.contactUs,
      PathEnum.portfolio,
      PathEnum.services,
    ];
    var bodyView = Column(
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
            if (widget.showAppBar)
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
                                      width: (actions[index].name.length * 11) +
                                          16 * 2,
                                      color: Colors.grey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12),
                                      child:
                                          Text(actions[index].name, style: ll),
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
        Expanded(child: widget.child),
        if (widget.showBottomBar && getDeviceType(context) != DeviceType.mobile)
          const Footer(),
      ],
    );
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (DateTime.now().month == DateTime.december) {
        appBgVn = ValueNotifier(BgEnum.two);
      }
    });

    Widget appDrawer = Builder(builder: (context) {
      return Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Footer.themeIcon(),
              ),
              Center(
                child: Text(
                  'Daniel Onwuka',
                  textAlign: TextAlign.center,
                  style: tm.copyWith(color: tm.color!),
                ),
              ),
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(38),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 10,
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset('assets/me/me3.png'),
                ),
              ),
              StatefulBuilder(builder: (context, setState) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() => showQuickLinks = !showQuickLinks);
                      },
                      child: Row(
                        children: [
                          Text(
                            'Quick links',
                            textAlign: TextAlign.center,
                            style: bl.copyWith(color: tm.color!),
                          ),
                          const Spacer(),
                          Icon(showQuickLinks
                              ? Icons.keyboard_arrow_down_outlined
                              : Icons.keyboard_arrow_up_outlined)
                        ],
                      ),
                    ),
                    if (showQuickLinks) ...[
                      _tile('Home', () {
                        Scaffold.of(context).closeDrawer();
                        AppNavigate.push(context, PathEnum.home);
                      }),
                      _tile('About me', () {
                        Scaffold.of(context).closeDrawer();
                        AppNavigate.push(context, PathEnum.aboutMe);
                      }),
                      _tile('Contact', () {
                        Scaffold.of(context).closeDrawer();
                        AppNavigate.push(context, PathEnum.contactUs);
                      }),
                      _tile('Projects', () {
                        Scaffold.of(context).closeDrawer();
                        AppNavigate.push(context, PathEnum.portfolio);
                      }),
                      _tile('Services', () {
                        Scaffold.of(context).closeDrawer();
                        AppNavigate.push(context, PathEnum.services);
                      }),
                    ],
                  ],
                );
              }),
              32.h,
              StatefulBuilder(builder: (context, setState) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() => showTools = !showTools);
                      },
                      child: Row(
                        children: [
                          Text(
                            'Technologies and Tools',
                            textAlign: TextAlign.center,
                            style: bl.copyWith(
                                color: tm.color!, fontWeight: FontWeight.w900),
                          ),
                          const Spacer(),
                          Icon(showTools
                              ? Icons.keyboard_arrow_down_outlined
                              : Icons.keyboard_arrow_up_outlined)
                        ],
                      ),
                    ),
                    if (showTools) ...[
                      _dev('Flutter', .9, '', Colors.yellowAccent),
                      _dev('MVVM (Clean Architecture', .95, '', Colors.lime),
                      _dev('Stacked', .9, '', Colors.amber),
                      _dev('Provider', .8, '', Colors.deepOrange),
                      _dev('Bloc', .6, '', Colors.deepOrangeAccent),
                      _dev('Riverpod', .65, '', Colors.orange[900]!),
                    ],
                  ],
                );
              }),
              32.h,
            ],
          ),
        ),
      );
    });

    return ValueListenableBuilder(
      valueListenable: appBgVn,
      builder: (_, value, Widget? child) {
        Widget newBody = const SizedBox();
        switch (value) {
          case null:
            newBody = bodyView;
            break;
          case BgEnum.one:
            newBody = Stack(children: [Utils.particleBg(), bodyView]);
            break;
          case BgEnum.two:
            newBody = AnimatedBackground(
              behaviour: RandomParticleBehaviour(
                options: ParticleOptions(
                  baseColor: ll.color!,
                  spawnMinSpeed: 10,
                  spawnMaxSpeed: 50,
                ),
              ),
              vsync: this,
              child: bodyView,
            );
            break;
          case BgEnum.gradient:
            newBody = AnimatedGradient(child: bodyView);
            break;
        }
        return Scaffold(
          drawer:
              getDeviceType(context) == DeviceType.mobile ? appDrawer : null,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: newBody,
        );
      },
    );
  }

  Widget _dev(String name, double progress, String icon, Color c) {
    return Builder(builder: (context) {
      var bs = TextUtils.bodySmall(context).copyWith(fontFamily: 'Nunito');
      var size = MediaQuery.of(context).size;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: bs),
            10.h,
            Row(
              children: [
                SizedBox(
                  height: 12,
                  width: size.width / 1.7,
                  child: LinearProgressIndicator(
                    value: progress,
                    backgroundColor: bs.color,
                    borderRadius: BorderRadius.circular(12),
                    valueColor: Animation.fromValueListenable(
                      ValueNotifier(c),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }

  _tile(String txt, Function()? onTap) {
    return Builder(builder: (context) {
      var bs = TextUtils.bodySmall(context).copyWith(fontFamily: 'Nunito');
      return InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text(
                txt,
                textAlign: TextAlign.center,
                style: bs.copyWith(color: Colors.blue),
              ),
            ],
          ),
        ),
      );
    });
  }
}
