import 'package:portfolio/imports/common_imports.dart';

class PowerPlugInfo extends StatelessWidget {
  const PowerPlugInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var bs = TextUtils.bodySmall(context);
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.red,
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Text('Onboarding', style: bs),
          const SizedBox(height: 8),
          Container(width: double.infinity, height: .2, color: Colors.white),
          const SizedBox(height: 12),
          if (getDeviceType(context) == DeviceType.desktop) Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildImage('assets/power_plug/Screenshot_20240614-051300.jpg'),
              buildImage('assets/power_plug/Screenshot_20240614-051300.jpg'),
              buildImage('assets/power_plug/Screenshot_20240614-051300.jpg'),
            ],
          ),
          if (getDeviceType(context) == DeviceType.mobile) Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildImage('assets/power_plug/Screenshot_20240614-051300.jpg'),
              buildImage('assets/power_plug/Screenshot_20240614-051300.jpg'),
              buildImage('assets/power_plug/Screenshot_20240614-051300.jpg'),
            ],
          )
        ],
      ),
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
