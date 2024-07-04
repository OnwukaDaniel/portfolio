import 'dart:ui';

import 'package:particles_flutter/particles_flutter.dart';
import 'package:portfolio/imports/common_imports.dart';

class PowerPlugInfo extends StatelessWidget {
  const PowerPlugInfo({super.key});

  @override
  Widget build(BuildContext context) {
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
          padding: EdgeInsets.all(cardPadding),
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.red,
          ),
          child: Stack(
            children: [
              particleBg(),
              Column(children: [view(context, assets)]),
            ],
          ),
        ),
        const SizedBox(height: kTextTabBarHeight),
        Text('BUY ELECTRICITY',
            style: tm.copyWith(fontWeight: FontWeight.bold)),
        Container(
          padding: EdgeInsets.all(cardPadding),
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.red,
          ),
          child: Stack(
            children: [
              particleBg(),
              Column(children: [view(context, electricityAssets)]),
            ],
          ),
        ),
        const SizedBox(height: kTextTabBarHeight * 3),
        Text('BUY AIRTIME', style: tm.copyWith(fontWeight: FontWeight.bold)),
        Container(
          padding: EdgeInsets.all(cardPadding),
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.red,
          ),
          child: Stack(
            children: [
              particleBg(),
              Column(children: [view(context, airtimeAssets)]),
            ],
          ),
        ),
        const SizedBox(height: kTextTabBarHeight * 3),
        Text('OTHERS', style: tm.copyWith(fontWeight: FontWeight.bold)),
        Container(
          padding: EdgeInsets.all(cardPadding),
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.red,
          ),
          child: Stack(
            children: [
              particleBg(),
              Column(children: [view(context, otherAssets)]),
            ],
          ),
        ),
      ],
    );
  }

  dialog(BuildContext context, Widget widget, String asset) {
    double w = 200;
    double h = 480;

    showDialog(
      context: context,
      builder: (_) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Wrap(
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              SingleChildScrollView(
                child: Container(
                  width: w * 1.8,
                  height: h * 1.6,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Hero(tag: asset, child: widget),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  particleBg() {
    double cardPadding = 16;
    return Builder(builder: (context) {
      var size = MediaQuery.of(context).size;
      return CircularParticle(
        key: UniqueKey(),
        awayRadius: 80,
        numberOfParticles: 200,
        speedOfParticles: 1,
        height: 540,
        width: size.width - (cardPadding * 2),
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
      );
    });
  }

  view(BuildContext context, List<Widget> assets) {
    if (getDeviceType(context) == DeviceType.desktop) {
      return SizedBox(
        height: 540,
        child: MasonryGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          itemCount: assets.length,
          itemBuilder: (BuildContext context, int index) {
            return assets[index];
          },
        ),
      );
    }
    if (getDeviceType(context) == DeviceType.largeDesktop) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: assets,
      );
    }
    if (getDeviceType(context) == DeviceType.mobile) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: assets,
      );
    }
  }

  Widget buildImage(BuildContext context, String image) {
    double w = 200;
    double h = 480;

    Widget widget = Padding(
      padding: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(image, width: w, height: h, fit: BoxFit.cover),
      ),
    );
    return InkWell(
      onTap: () => dialog(context, widget, image),
      child: Hero(tag: image, child: widget),
    );
  }
}
