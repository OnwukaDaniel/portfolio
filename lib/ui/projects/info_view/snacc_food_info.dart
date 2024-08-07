import 'package:portfolio/common_imports.dart';

class SnaccFoodInfo extends StatelessWidget {
  const SnaccFoodInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var tm = TextUtils.titleMedium(context);
    List<Widget> assets = [
      const DisplayImage('assets/mocks/snacc8.png'),
      const DisplayImage('assets/mocks/snacc10.png'),
      const DisplayImage('assets/mocks/snacc9.png'),
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
          Colors.green.withOpacity(.8),
          view(context, assets),
          'Others',
        ),
        const SizedBox(height: kTextTabBarHeight),
        ProjectDisplaySamples(
          Colors.green.withOpacity(.8),
          view(context, electricityAssets),
          'Others',
        ),
        const SizedBox(height: kTextTabBarHeight * 3),
        Text('BUY AIRTIME', style: tm.copyWith(fontWeight: FontWeight.bold)),
        ProjectDisplaySamples(
          Colors.green.withOpacity(.8),
          view(context, airtimeAssets),
          'Others',
        ),
        const SizedBox(height: kTextTabBarHeight * 3),
        ProjectDisplaySamples(
          Colors.green.withOpacity(.8),
          view(context, otherAssets),
          'Others',
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
          return Center(child: assets[index]);
        },
      ),
    );
  }
}
