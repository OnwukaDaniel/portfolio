import 'package:portfolio/common_imports.dart';

class AboutMe extends StatelessWidget {
  static const String id = 'AboutMe';
  static const String path = '/AboutMe';
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => AboutMeViewmodel(),
      onViewModelReady: (_) => _.init(),
      builder: (context, model, _) {
        return Row(
          children: [
            Container(
              height: size.height,
              width: .2,
              color: Colors.grey,
            ),
            const Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PersonalInfoList(),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height,
              width: .2,
              color: Colors.grey,
            ),
            const Expanded(
              flex: 8,
              child: PersonalInfoDisplay(),
            ),
          ],
        );
      },
    );
  }
}
