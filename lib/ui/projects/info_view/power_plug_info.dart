import 'package:portfolio/imports/common_imports.dart';

class PowerPlugInfo extends StatelessWidget {
  const PowerPlugInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var bs = TextUtils.bodySmall(context);
    var tl = TextUtils.titleLarge(context);

    List<Widget> assets = [
      const ProjectInfoVideoPlayer('assets/power_plug/screen-20240702-121523.mp4'),
      buildImage('assets/power_plug/Screenshot_20240614-051401.jpg'),
      buildImage('assets/power_plug/Screenshot_20240703-113456.jpg'),
    ];

    return Column(
      children: [
        Text('HOMEPAGE', style: tl.copyWith(fontWeight: FontWeight.bold)),
        Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.red,
          ),
          child: Column(
            children: [
              if (getDeviceType(context) == DeviceType.desktop)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: assets,
                ),
              if (getDeviceType(context) == DeviceType.mobile)
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: assets,
                )
            ],
          ),
        ),
      ],
    );
  }

  Widget buildImage(String image) {
    double w = 200;
    double h = 480;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(image, width: w, height: h, fit: BoxFit.cover),
      ),
    );
  }
}

