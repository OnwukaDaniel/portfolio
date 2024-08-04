import 'package:portfolio/common_imports.dart';

class PowerPlugInfo extends StatelessWidget {
  const PowerPlugInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double cardPadding = 16;
    var tm = TextUtils.titleMedium(context);
    List<Widget> assets = [
      if (getDeviceType(context) == DeviceType.desktop)
        const SizedBox(width: 64),
      const ProjectInfoVideoPlayer(
          'assets/power_plug/screen-20240702-121523.mp4'),
      buildImage(context, 'assets/power_plug/Screenshot_20240614-051401.jpg'),
      buildImage(context, 'assets/power_plug/Screenshot_20240703-113456.jpg'),
      if (getDeviceType(context) == DeviceType.desktop)
        const SizedBox(width: 64),
    ];
    List<Widget> electricityAssets = [
      if (getDeviceType(context) == DeviceType.desktop)
        const SizedBox(width: 64),
      const ProjectInfoVideoPlayer(
          'assets/power_plug/screen-20240703-215403.mp4'),
      buildImage(context, 'assets/power_plug/Screenshot_20240614-051626.jpg'),
      buildImage(context, 'assets/power_plug/Screenshot_20240703-173725.jpg'),
      if (getDeviceType(context) == DeviceType.desktop)
        const SizedBox(width: 64),
    ];
    List<Widget> airtimeAssets = [
      if (getDeviceType(context) == DeviceType.desktop)
        const SizedBox(width: 64),
      const ProjectInfoVideoPlayer('assets/power_plug/buy_airtime.mp4'),
      buildImage(context, 'assets/power_plug/buy_airtime1.jpg'),
      buildImage(context, 'assets/power_plug/buy_airtime2.jpg'),
      buildImage(context, 'assets/power_plug/buy_airtime3.jpg'),
      if (getDeviceType(context) == DeviceType.desktop)
        const SizedBox(width: 64),
    ];
    List<Widget> otherAssets = [
      if (getDeviceType(context) == DeviceType.desktop)
        const SizedBox(width: 64),
      buildImage(context, 'assets/power_plug/rewards_page.jpg'),
      buildImage(context, 'assets/power_plug/history_page.jpg'),
      buildImage(context, 'assets/power_plug/security_page.jpg'),
      buildImage(context, 'assets/power_plug/notification_ppage.jpg'),
      if (getDeviceType(context) == DeviceType.desktop)
        const SizedBox(width: 64),
    ];

    return Column(
      children: [
        Text('HOMEPAGE', style: tm.copyWith(fontWeight: FontWeight.bold)),
        Container(
          width: getDeviceType(context) == DeviceType.mobile
              ? double.infinity
              : 0.75 * size.width,
          padding: EdgeInsets.symmetric(
            vertical: cardPadding,
            horizontal: cardPadding * 5,
          ),
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.red,
          ),
          child: view(context, assets),
        ),
        const SizedBox(height: kTextTabBarHeight),
        Text('BUY ELECTRICITY',
            style: tm.copyWith(fontWeight: FontWeight.bold)),
        Container(
          width: getDeviceType(context) == DeviceType.mobile
              ? double.infinity
              : 0.75 * size.width,
          padding: EdgeInsets.all(cardPadding),
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.red,
          ),
          child: view(context, electricityAssets),
        ),
        const SizedBox(height: kTextTabBarHeight * 3),
        Text('BUY AIRTIME', style: tm.copyWith(fontWeight: FontWeight.bold)),
        Container(
          width: getDeviceType(context) == DeviceType.mobile
              ? double.infinity
              : 0.75 * size.width,
          padding: EdgeInsets.all(cardPadding),
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.red,
          ),
          child: view(context, airtimeAssets),
        ),
        const SizedBox(height: kTextTabBarHeight * 3),
        Text('OTHERS', style: tm.copyWith(fontWeight: FontWeight.bold)),
        Container(
          width: getDeviceType(context) == DeviceType.mobile
              ? double.infinity
              : 0.75 * size.width,
          padding: EdgeInsets.all(cardPadding),
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.red,
          ),
          child: view(context, otherAssets),
        ),
      ],
    );
  }

  Widget view(BuildContext context, List<Widget> assets) {
    if (getDeviceType(context) == DeviceType.mobile) {
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

  Widget buildImage(BuildContext context, String image) {
    double w = 200;
    double h = 480;

    Widget widget = ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        width: w,
        height: h,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Image(image: AssetImage(image)),
        ),
      ),
    );
    return InkWell(
      onTap: () => ProjectsUtil.dialog(context, widget, image),
      child: Hero(tag: image, child: widget),
    );
  }
}
