import 'package:portfolio/common_imports.dart';

Color backColor = const Color(0xFFFFFFFF);
Color textOnBackColor = Colors.black87;

class HomepageView extends StatelessWidget {
  static const String id = 'HomepageView';
  const HomepageView({super.key});

  @override
  Widget build(BuildContext context) {
    AppNavigate.addToPath(PathEnum.home);

    return ViewModelBuilder<HomepageViewModel>.nonReactive(
      viewModelBuilder: () => HomepageViewModel(),
      builder: (context, model, child) {
        return const Scaffold(
          backgroundColor: Colors.transparent,
          body: Home(),
        );
      },
    );
  }
}

class PowerPlugTile extends StatelessWidget {
  const PowerPlugTile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextStyle tl = TextUtils.titleLarge(context);
    TextStyle tm = TextUtils.titleMedium(context);
    TextStyle bl = TextUtils.bodyLarge(context);
    TextStyle bm = TextUtils.bodyMedium(context);
    TextStyle bs = TextUtils.bodySmall(context);
    return Container(
      constraints: BoxConstraints(minHeight: height / 1.3),
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Builder(builder: (context) {
            double w = width / 3.5;
            double h = w * 0.8;
            return Image.asset(
              "assets/display/power_plug_display.png",
              width: w,
              height: h,
            );
          }),
          gap(32),
          Container(
            width: width / 2.5,
            padding: const EdgeInsets.all(16),
            child: Builder(builder: (context) {
              var title = 'PowerPlug';
              var txt = "A Utility and Bill Payment platform "
                  "that enables Nigerians pay for electricity instantly from "
                  "the comfort of your home, anywhere, and anytime. PowerPlug "
                  "offers different payment options, best suitable for you.";
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/powerplug.png",
                        width: 70,
                        height: 70,
                      ),
                      gap(16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: tm.copyWith(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              " - Pay Electricity",
                              style: bs.copyWith(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  gap(64, v: true),
                  Text(
                    txt,
                    style: bm.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}

class HowFarTile extends StatelessWidget {
  const HowFarTile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextStyle tl = TextUtils.titleLarge(context);
    TextStyle tm = TextUtils.titleMedium(context);
    TextStyle bl = TextUtils.bodyLarge(context);
    TextStyle bm = TextUtils.bodyMedium(context);
    TextStyle bs = TextUtils.bodySmall(context);
    return Container(
      constraints: BoxConstraints(minHeight: height / 1.3),
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width / 2.5,
            padding: const EdgeInsets.all(32),
            child: Builder(builder: (context) {
              var title = 'HowFar';
              var txt = "A revolutionary mobile app that "
                  "transforms social interactions and "
                  "financial transactions into a unified "
                  "experience. With features like live "
                  "streaming, virtual currency for social "
                  "engagement, and crystal-clear audio and "
                  "video calls, HowFar redefines connectivity "
                  "for a seamless and enriching user journey. "
                  "Welcome to the future of integrated mobile "
                  "platforms.";
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/howfar.png",
                        width: 70,
                        height: 70,
                      ),
                      gap(16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: tm.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              " - Bridging Social and Financial Realms",
                              style: bs.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  gap(64, v: true),
                  Text(
                    txt,
                    style: bm.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              );
            }),
          ),
          gap(32),
          Builder(builder: (context) {
            double w = width / 3.5;
            double h = w * 0.8;
            return Image.asset(
              "assets/display/howfar_display.png",
              width: w,
              height: h,
            );
          }),
        ],
      ),
    );
  }
}

class NigerianWidowTile extends StatelessWidget {
  const NigerianWidowTile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextStyle tl = TextUtils.titleLarge(context).copyWith(color: Colors.white);
    TextStyle tm = TextUtils.titleMedium(context).copyWith(color: Colors.white);
    TextStyle bl = TextUtils.bodyLarge(context).copyWith(color: Colors.white);
    TextStyle bm = TextUtils.bodyMedium(context).copyWith(color: Colors.white);
    TextStyle bs = TextUtils.bodySmall(context).copyWith(color: Colors.white);
    return Container(
      constraints: BoxConstraints(minHeight: height / 1.3),
      color: Colors.black87,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width / 2.5,
            padding: const EdgeInsets.all(32),
            child: Builder(builder: (context) {
              var title = 'Nigerian Widow Chart App';
              var txt = "Welcome to the Nigerian Widow Chart App. A powerful"
                  " tool designed to bring attention to the plight of widows "
                  "in Nigeria through intuitive and interactive data "
                  "visualization.";

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/nigeria_widow_appicon.png",
                        width: 70,
                        height: 70,
                      ),
                      gap(16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: tm.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              " - Empowering Through Data Visualization",
                              style: bs.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  gap(64, v: true),
                  Text(
                    txt,
                    style: bm.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              );
            }),
          ),
          gap(32),
          Builder(builder: (context) {
            double w = width / 3.5;
            double h = w * 0.8;
            return Image.asset(
              "assets/display/nigerian_widow_display.png",
              width: w,
              height: h,
            );
          }),
        ],
      ),
    );
  }
}

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextStyle tl = TextUtils.titleLarge(context);
    TextStyle tm = TextUtils.titleMedium(context);
    TextStyle bl = TextUtils.bodyLarge(context);
    TextStyle bm = TextUtils.bodyMedium(context);
    TextStyle bs = TextUtils.bodySmall(context);

    var aboutText =
        "I am a mobile developer with a passion for problem-solving and"
        " creating innovative solutions. I have a strong background in"
        " software engineering and mobile development, having "
        "worked on a variety of projects for both Android and iOS platforms.";

    var aboutText2 = 'What sets me apart is not just the code I write but the '
        'passion I bring to every project. I understand that technology is a '
        'powerful tool, and its true potential is realized when it enhances the '
        'lives of users. My commitment to creating impactful and scalable '
        'solutions is what drives me, and my journey in the realm of Flutter '
        'has allowed me to explore the boundaries of creativity and functionality.';
    return Container(
      constraints: BoxConstraints(minHeight: height / 1.3),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.lightBlue,
            Colors.lightBlue,
            Colors.lightBlue,
            Colors.lightBlue,
            Colors.lightBlueAccent,
            Colors.lightBlueAccent.withOpacity(0.9),
            Colors.lightBlueAccent.withOpacity(0.8),
            Colors.lightBlueAccent.withOpacity(0.7),
            Colors.lightBlueAccent.withOpacity(0.5),
            Colors.lightBlueAccent.withOpacity(0.4),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: width / 2.5,
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, I am",
                  style: tm.copyWith(color: Colors.white),
                ),
                gap(4, v: true),
                Text(
                  "Onwuka Daniel",
                  style: tl.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                gap(8, v: true),
                Text(
                  aboutText,
                  style: bm.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                gap(32, v: true),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Text(
                    "Contact me",
                    style: bm.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                gap(32, v: true),
              ],
            ),
          ),
          Builder(builder: (context) {
            double w = width / 3.5;
            double h = w * 0.8;
            return Image.asset(
              "assets/home/apps.png",
              width: w,
              height: h,
            );
          }),
        ],
      ),
    );
  }
}

class CryptoBotTile extends StatelessWidget {
  const CryptoBotTile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextStyle tl = TextUtils.titleLarge(context).copyWith(color: Colors.white);
    TextStyle tm = TextUtils.titleMedium(context).copyWith(color: Colors.white);
    TextStyle bl = TextUtils.bodyLarge(context).copyWith(color: Colors.white);
    TextStyle bm = TextUtils.bodyMedium(context).copyWith(color: Colors.white);
    TextStyle bs = TextUtils.bodySmall(context).copyWith(color: Colors.white);
    return Container(
      constraints: BoxConstraints(minHeight: height / 1.3),
      color: Colors.black87,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width / 2.5,
            padding: const EdgeInsets.all(32),
            child: Builder(builder: (context) {
              var title = 'Crypto Trage';
              var txt =
                  "Crypto Trage is designed to show fiat and crypto prices"
                  " and create an arbitrage bot.";

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/nigeria_widow_appicon.png",
                        width: 70,
                        height: 70,
                      ),
                      gap(16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: tm.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              " - Empowering Through Data Visualization",
                              style: bs.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  gap(64, v: true),
                  Text(
                    txt,
                    style: bm.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              );
            }),
          ),
          gap(32),
          Builder(builder: (context) {
            double w = width / 3.5;
            double h = w * 0.8;
            return Image.asset(
              "assets/display/nigerian_widow_display.png",
              width: w,
              height: h,
            );
          }),
        ],
      ),
    );
  }
}

class IntroCard extends StatelessWidget {
  const IntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextStyle tl = TextUtils.titleLarge(context);
    TextStyle tm = TextUtils.titleMedium(context);
    TextStyle bl = TextUtils.bodyLarge(context);
    TextStyle bm = TextUtils.bodyMedium(context);
    TextStyle bs = TextUtils.bodySmall(context);
    var aboutText2 = 'What sets me apart is not just the code I write but the '
        'passion I bring to every project. I understand that technology is a '
        'powerful tool, and its true potential is realized when it enhances the '
        'lives of users. My commitment to creating impactful and scalable '
        'solutions is what drives me, and my journey in the realm of Flutter '
        'has allowed me to explore the boundaries of creativity and functionality.';

    return Container(
      constraints: BoxConstraints(minHeight: height / 1.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Builder(builder: (context) {
            double w = width / 3.5;
            double h = w * 0.8;
            return Image.asset(
              "assets/mocks/apps1.png",
              width: w,
              height: h,
            );
          }),
          gap(32),
          Container(
            width: width / 2.5,
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  aboutText2,
                  style: bm.copyWith(color: textOnBackColor),
                ),
                gap(32, v: true),
                Row(
                  children: [
                    Text(
                      "Download my resume",
                      style: bl.copyWith(color: textOnBackColor),
                    ),
                    gap(8),
                    Icon(Icons.file_present, color: textOnBackColor),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
