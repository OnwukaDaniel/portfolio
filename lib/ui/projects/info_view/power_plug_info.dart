import 'package:portfolio/common_imports.dart';

class PowerPlugInfo extends StatelessWidget {
  const PowerPlugInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var tm = TextUtils.titleMedium(context);
    List<Widget> assets = [
      const ProjectInfoVideoPlayer(
          'assets/power_plug/screen-20240702-121523.mp4'),
      const DisplayImage('assets/power_plug/Screenshot_20240614-051401.jpg'),
      const DisplayImage('assets/power_plug/Screenshot_20240703-113456.jpg'),
    ];
    List<Widget> electricityAssets = [
      if (context.device == DeviceType.desktop)
        const SizedBox(width: 64),
      const ProjectInfoVideoPlayer(
          'assets/power_plug/screen-20240703-215403.mp4'),
      const DisplayImage('assets/power_plug/Screenshot_20240614-051626.jpg'),
      const DisplayImage('assets/power_plug/Screenshot_20240703-173725.jpg'),
      if (context.device == DeviceType.desktop)
        const SizedBox(width: 64),
    ];
    List<Widget> airtimeAssets = [
      if (context.device == DeviceType.desktop)
        const SizedBox(width: 64),
      const ProjectInfoVideoPlayer('assets/power_plug/buy_airtime.mp4'),
      const DisplayImage('assets/power_plug/buy_airtime1.jpg'),
      const DisplayImage('assets/power_plug/buy_airtime2.jpg'),
      const DisplayImage('assets/power_plug/buy_airtime3.jpg'),
      if (context.device == DeviceType.desktop)
        const SizedBox(width: 64),
    ];
    List<Widget> otherAssets = [
      if (context.device == DeviceType.desktop)
        const SizedBox(width: 64),
      const DisplayImage('assets/power_plug/rewards_page.jpg'),
      const DisplayImage('assets/power_plug/history_page.jpg'),
      const DisplayImage('assets/power_plug/security_page.jpg'),
      const DisplayImage('assets/power_plug/notification_ppage.jpg'),
      if (context.device == DeviceType.desktop)
        const SizedBox(width: 64),
    ];

    return Column(
      children: [
        ProjectDisplaySamples(
          Colors.red,
          view(context, assets),
          'HOMEPAGE',
        ),
        const SizedBox(height: kTextTabBarHeight),
        ProjectDisplaySamples(
          Colors.red,
          view(context, electricityAssets),
          'BUY ELECTRICITY',
        ),
        const SizedBox(height: kTextTabBarHeight * 3),
        ProjectDisplaySamples(
          Colors.red,
          view(context, airtimeAssets),
          'BUY AIRTIME',
        ),
        const SizedBox(height: kTextTabBarHeight * 3),
        ProjectDisplaySamples(
          Colors.red,
          view(context, otherAssets),
          'OTHERS',
        ),
      ],
    );
  }

  Widget view(BuildContext context, List<Widget> assets) {
    if (context.device == DeviceType.mobile) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: assets,
      );
    }
    return SizedBox(
      height: 540,
      child: MasonryGridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        itemCount: assets.length,
        itemBuilder: (BuildContext context, int index) {
          return assets[index];
        },
      ),
    );
  }
}
