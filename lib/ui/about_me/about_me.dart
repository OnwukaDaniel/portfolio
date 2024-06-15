import 'package:portfolio/imports/common_imports.dart';
import 'package:portfolio/ui/about_me/views/personal_info_display.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    var bs = TextUtils.bodySmall(context);
    var ll = TextUtils.labelLarge(context);
    var size = MediaQuery.of(context).size;

    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => AboutMeViewmodel(),
      builder: (context, model, _) {
        return AppWrapper(
          child: Row(
            children: [
              Container(
                height: size.height,
                width: .2,
                color: Colors.grey,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PersonalInfoList(),
                    Container(
                      height: .2,
                      width: size.width,
                      color: Colors.grey,
                    ),
                  ],
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
          ),
        );
      },
    );
  }
}
