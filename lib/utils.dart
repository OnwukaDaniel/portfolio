import 'package:portfolio/common_imports.dart';

class Utils{
  static launchWeb(String link) async {
    var data = Uri.parse(link);
    var url = Uri(scheme: data.scheme, host: data.host, path: data.path);
    await launchUrl(url, mode: LaunchMode.inAppBrowserView);
    return;
  }

  static launch(String link) {
    launchUrl(Uri.parse(link));
  }

  static particleBg() {
    double cardPadding = 32;
    return Builder(builder: (context) {
      var size = MediaQuery.of(context).size;
      return Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: CircularParticle(
          key: UniqueKey(),
          awayRadius: 80,
          numberOfParticles: 200,
          speedOfParticles: 1,
          height: size.height,
          width: size.width,
          onTapAnimation: true,
          particleColor: Colors.white.withAlpha(150),
          awayAnimationDuration: const Duration(milliseconds: 600),
          maxParticleSize: 8,
          isRandSize: true,
          isRandomColor: true,
          randColorList: [
            Colors.red.withAlpha(210),
            Colors.white.withAlpha(210),
            Colors.yellow.withAlpha(210),
            Colors.green.withAlpha(210)
          ],
          awayAnimationCurve: Curves.easeInOutBack,
          enableHover: true,
          hoverColor: Colors.white,
          hoverRadius: 90,
          connectDots: false, //not recommended
        ),
      );
    });
  }
}