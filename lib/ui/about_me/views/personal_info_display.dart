import 'package:portfolio/imports/common_imports.dart';

class PersonalInfoDisplay extends StackedHookView<AboutMeViewmodel> {
  const PersonalInfoDisplay({super.key});

  @override
  Widget builder(BuildContext context, model) {
    var ll = TextUtils.labelLarge(context);
    var data = model.displayPersonalInfo.files;
    var text = '';
    if(data.isNotEmpty) text = data[model.infoIndex].info;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: ll.copyWith(color: ll.color!.withOpacity(.5)),
          ),
        ),
      ],
    );
  }
}
