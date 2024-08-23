import 'package:portfolio/common_imports.dart';

class Utils {
  static launchWeb(String link) async {
    var data = Uri.parse(link);
    var url = Uri(scheme: data.scheme, host: data.host, path: data.path);
    await launchUrl(url, mode: LaunchMode.inAppBrowserView);
    return;
  }

  static launchMail(String mail) async {
    var url = Uri(
      scheme: 'mailto',
      path: mail,
      query: _encodeQueryParameters(<String, String>{
        'subject': 'Hello Daniel',
      }),
    );
    await launchUrl(url);
    return;
  }

  static String _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
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

  static Color hintColor(context) {
    return Theme.of(context).hintColor;
  }

  static Color cardColor(context) {
    return Theme.of(context).cardColor;
  }

  static launchPhone(String phoneNumber) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);

    await launchUrl(phoneUri);
  }
}
