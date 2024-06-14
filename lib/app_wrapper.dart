import 'imports/common_imports.dart';

class AppWrapper extends StackedHookView<HomepageViewModel> {
  final Widget child;

  const AppWrapper({super.key, required this.child});

  @override
  Widget builder(BuildContext context, model) {
    var ll = TextUtils.labelLarge(context);
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
                      const CircleAvatar(backgroundColor: Colors.green, radius: 6),
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
            AppBar(
              backgroundColor: Colors.black.withOpacity(0.8),
              automaticallyImplyLeading: false,
              actions: List.generate(
                actions.length,
                    (index) {
                  return TextButton(
                    onPressed: () {
                      AppNavigate.push(context, actions.elementAt(index));
                    },
                    child: Text(actions[index].name, style: bs),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: child,
    );
  }
}
