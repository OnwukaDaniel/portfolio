import 'package:portfolio/imports/common_imports.dart';

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
}