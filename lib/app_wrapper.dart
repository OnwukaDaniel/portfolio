import 'package:flutter/scheduler.dart';
import 'package:portfolio/ui/views/footer.dart';
import 'common_imports.dart';

class AppWrapper extends StatefulWidget {
  final Widget child;
  final String id;
  final bool showAppBar;
  final bool showBottomBar;

  const AppWrapper({
    super.key,
    required this.child,
    required this.id,
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
    bool showQuickLinks = true;
    bool showTools = false;
    List<PathEnum> actions = [
      PathEnum.home,
      PathEnum.aboutMe,
      PathEnum.contactUs,
      PathEnum.portfolio,
    ];
    var bodyView = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            if (context.device == DeviceType.mobile) kToolbarHeight.h,
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
              child: Center(
                child: Text(
                  'Onwuka Daniel - portfolio (:app)',
                  style: ll.copyWith(color: ll.color!.withOpacity(.8)),
                ),
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
                          var page = actions.elementAt(index);
                          return InkWell(
                            onTap: () {
                              if (widget.id == page.id) return;
                              AppNavigate.homeBodyVn.value = page;
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
                                      valueListenable: AppNavigate.homeBodyVn,
                                      builder: (context, path, _) {
                                        return Container(
                                          height: 1,
                                          width: (actions[index].name.length *
                                                  11) +
                                              16 * 2,
                                          color: actions[index].id == path.id
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
        if (widget.showBottomBar && context.device != DeviceType.mobile)
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
          child: Column(
            children: [
              Expanded(
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
                        child: Image.asset('assets/me/me3.webp'),
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
                            }, Icons.home_outlined),
                            _tile('About me', () {
                              Scaffold.of(context).closeDrawer();
                              AppNavigate.push(context, PathEnum.aboutMe);
                            }, Icons.account_circle_outlined),
                            _tile('Contact', () {
                              Scaffold.of(context).closeDrawer();
                              AppNavigate.push(context, PathEnum.contactUs);
                            }, Icons.my_library_books),
                            _tile('Projects', () {
                              Scaffold.of(context).closeDrawer();
                              AppNavigate.push(context, PathEnum.portfolio);
                            }, Icons.phonelink_rounded),
                          ],
                          if (!showQuickLinks)
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 12,
                              ),
                              child: Text(
                                'Home, About me, Contact, Project... ',
                                style: bs.copyWith(
                                    color: bs.color!.withOpacity(.5)),
                              ),
                            )
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
                                      color: tm.color!,
                                      fontWeight: FontWeight.w900),
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
                            _dev('MVVM (Clean Architecture', .95, '',
                                Colors.lime),
                            _dev('Stacked', .9, '', Colors.amber),
                            _dev('Provider', .8, '', Colors.deepOrange),
                            _dev('Bloc', .7, '', Colors.deepOrangeAccent),
                            _dev('Riverpod', .65, '', Colors.orange[900]!),
                          ],
                          if (!showTools)
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 12,
                              ),
                              child: Text(
                                'Dart, Kotlin, Python, Java... ',
                                style: bs.copyWith(
                                  color: bs.color!.withOpacity(.5),
                                ),
                              ),
                            )
                        ],
                      );
                    }),
                    32.h,
                  ],
                ),
              ),
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
                    spawnMinSpeed: 1000,
                    spawnMaxSpeed: 1000,
                    particleCount: 10),
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
          drawer: context.device == DeviceType.mobile ? appDrawer : null,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: newBody,
        );
      },
    );
  }

  Widget _dev(String name, double progress, String icon, Color c) {
    return Builder(builder: (context) {
      var bs = TextUtils.bodySmall(context).copyWith(fontFamily: 'Nunito');
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: bs),
            10.h,
            Row(
              children: [
                Expanded(
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

  _tile(String txt, Function()? onTap, IconData icon) {
    return Builder(builder: (context) {
      var bs = TextUtils.bodySmall(context).copyWith(fontFamily: 'Nunito');
      return InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(icon, color: bs.color),
              8.w,
              Text(txt, textAlign: TextAlign.center, style: bs),
              const Spacer(),
              Icon(
                Icons.keyboard_arrow_right_outlined,
                color: bs.color!.withOpacity(.4),
              ),
            ],
          ),
        ),
      );
    });
  }
}
