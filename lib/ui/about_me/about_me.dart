import 'package:portfolio/imports/common_imports.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    var bs = TextUtils.bodySmall(context);
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: ()=> HomepageViewModel(),
      builder: (context, model, _) {
        return AppWrapper(
          child: Center(child: Text('About me', style: bs)),
        );
      }
    );
  }
}
