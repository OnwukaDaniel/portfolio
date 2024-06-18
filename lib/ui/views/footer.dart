import 'package:portfolio/imports/common_imports.dart';
import 'package:portfolio/main.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    var ll = TextUtils.labelLarge(context);
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 64),
          height: .2,
          width: size.width,
          color: Colors.grey,
        ),
        Row(
          children: [
            const SizedBox(width: 16),
            Text(
              'Find me in:      ',
              style: ll.copyWith(color: ll.color!.withOpacity(.4)),
            ),
            Container(
              height: kToolbarHeight,
              width: .2,
              color: Colors.grey,
            ),
            SizedBox(
              height: kToolbarHeight,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: SocialsEnum.values.length,
                itemBuilder: (_, index) {
                  var data = SocialsEnum.values[index];
                  return InkWell(
                    onTap: () => launchWeb(data.link),
                    child: SizedBox(
                      width: kToolbarHeight,
                      height: kToolbarHeight,
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Image.asset(data.image, width: 25, height: 25),
                      ),
                    ),
                  );
                },
                separatorBuilder: (_, __) => Container(
                  height: 40.5,
                  width: .2,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              height: kToolbarHeight,
              width: .2,
              color: Colors.grey,
            ),
            const Spacer(),
            ValueListenableBuilder(
              valueListenable: appThemeVn,
              builder: (context, value, _) {
                return IconButton(
                  onPressed: () {
                    if (value == AppTheme.darkTheme) {
                      appThemeVn.value = AppTheme.lightTheme;
                    } else {
                      appThemeVn.value = AppTheme.darkTheme;
                    }
                  },
                  icon: value == AppTheme.darkTheme
                      ? Image.asset('assets/icons/sun.png', width: 30, height: 30)
                      : Image.asset('assets/icons/crescent_moon.png', width: 26, height: 26),
                );
              },
            ),
            const SizedBox(width: 16),
            Container(
              height: kToolbarHeight,
              width: .2,
              color: Colors.grey,
            ),
            InkWell(
              onTap: () => launchWeb(AppConstants.github),
              child: SizedBox(
                height: kToolbarHeight,
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    Text(
                      '@OnwukaDaniel',
                      style: ll.copyWith(color: ll.color!.withOpacity(.4)),
                    ),
                    Image.asset(
                      'assets/icons/github.png',
                      width: 32,
                      height: 32,
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  static launchWeb(String link) async {
    var data = Uri.parse(link);
    var url = Uri(scheme: data.scheme, host: data.host, path: data.path);
    await launchUrl(url, mode: LaunchMode.inAppBrowserView);
    return;
  }
}
