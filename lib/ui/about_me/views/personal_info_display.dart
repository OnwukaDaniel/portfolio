import 'package:portfolio/imports/common_imports.dart';

class PersonalInfoDisplay extends StackedHookView<AboutMeViewmodel> {
  const PersonalInfoDisplay({super.key});

  @override
  Widget builder(BuildContext context, model) {
    var size = MediaQuery.of(context).size;
    var ll = TextUtils.labelLarge(context);
    var textColor = ll.color!.withOpacity(.5);
    var text = model.displayPersonalInfo.info;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: kToolbarHeight * .7,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              var data = model.sideBarInfoList.elementAt(index);
              return InkWell(
                onTap: () => model.setDisplayPersonalInfo(data),
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    Text(data.file, style: ll.copyWith(color: textColor)),
                    const SizedBox(width: 8),
                    InkWell(
                      onTap: () => model.removePersonalInfo(data),
                      child: Icon(Icons.close, color: textColor, size: 14),
                    ),
                    const SizedBox(width: 16),
                    if (index == model.sideBarInfoList.length - 1)
                      Container(
                        height: double.infinity,
                        width: .2,
                        color: Colors.grey,
                      )
                  ],
                ),
              );
            },
            separatorBuilder: (_, index) {
              return Container(
                height: double.infinity,
                width: .2,
                color: Colors.grey,
              );
            },
            itemCount: model.sideBarInfoList.length,
          ),
        ),
        Container(
          height: .2,
          width: size.width,
          color: Colors.grey,
        ),
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
