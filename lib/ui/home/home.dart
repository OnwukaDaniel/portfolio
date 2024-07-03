import 'package:flutter/gestures.dart';
import 'package:portfolio/imports/common_imports.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ListView(
      children: [
        SizedBox(
          height: size.height - (kToolbarHeight * 2),
          child: getDeviceType(context) == DeviceType.desktop ||
                  getDeviceType(context) == DeviceType.largeDesktop
              ? SizedBox(
                  height: 360,
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        const SizedBox(width: 16),
                        _shortBio(),
                        const SizedBox(width: 64),
                        _game(),
                        const SizedBox(width: 16),
                      ],
                    ),
                  ),
                )
              : Column(
                  children: [
                    const SizedBox(height: 16),
                    _shortBio(),
                    const SizedBox(height: 16),
                    if (getDeviceType(context) == DeviceType.mobile)
                      SizedBox(
                        height: 360,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            _game(),
                          ],
                        ),
                      ),
                    if (getDeviceType(context) == DeviceType.desktop) _game(),
                    const SizedBox(height: 16),
                  ],
                ),
        ),
      ],
    );
  }

  Widget _shortBio() {
    return Builder(builder: (context) {
      var ll = TextUtils.labelLarge(context);
      var lm = TextUtils.labelMedium(context);
      var bs = TextUtils.bodySmall(context);
      var tm = TextUtils.titleMedium(context);
      var tl = TextUtils.titleLarge(context);
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hi, I am', style: lm),
          const SizedBox(height: 32),
          DefaultTextStyle(
            style: tl.copyWith(fontFamily: 'JMH Typewriter'),
            child: AnimatedTextKit(
              repeatForever: true,
              pause: const Duration(seconds: 2),
              animatedTexts: List.generate(
                5,
                (e) => TypewriterAnimatedText(
                  AppConstants.devName,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '> Front-end developer',
            style: tm.copyWith(color: Colors.deepPurple),
          ),
          const SizedBox(height: 70),
          Text(
            '// complete the game to continue\n// you can also see it on my Github page',
            style: ll.copyWith(color: bs.color!.withOpacity(.2)),
          ),
          const SizedBox(height: 4),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'const ',
                  style: ll.copyWith(color: Colors.red),
                ),
                TextSpan(text: 'String ', style: ll),
                TextSpan(text: 'githubLink = ', style: ll),
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launchWeb(AppConstants.github);
                    },
                  text: '"${AppConstants.github}"',
                  style: ll.copyWith(color: Colors.amber),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }

  Widget _game() {
    return Builder(builder: (context) {
      var size = MediaQuery.of(context).size;
      var ll = TextUtils.labelLarge(context);
      var lm = TextUtils.labelMedium(context);
      var bs = TextUtils.bodySmall(context);
      return Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        children: [
          Container(
            height: 340,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  bs.color!.withOpacity(.2),
                  bs.color!.withOpacity(.1),
                  bs.color!.withOpacity(.07),
                  bs.color!.withOpacity(.05),
                  bs.color!.withOpacity(.01),
                ],
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      'assets/display/snake_game.png',
                      height: size.height * .4,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      margin: const EdgeInsets.all(32),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFEA55F),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Stat-game',
                        style: ll.copyWith(color: Colors.black),
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 12),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '// use keyboard\n// arrows to play',
                        style: lm,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        margin: const EdgeInsets.all(2),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black,
                        ),
                        child: const Icon(
                          Icons.arrow_drop_up,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(2),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black,
                            ),
                            child: const Icon(
                              Icons.arrow_left,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(2),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black,
                            ),
                            child: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(2),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black,
                            ),
                            child: const Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }

  static launchWeb(String link) async {
    var data = Uri.parse(link);
    var url = Uri(scheme: data.scheme, host: data.host, path: data.path);
    await launchUrl(url, mode: LaunchMode.inAppBrowserView);
    return;
  }
}
