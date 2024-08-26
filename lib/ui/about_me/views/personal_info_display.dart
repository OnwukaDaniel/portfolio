import 'package:portfolio/common_imports.dart';

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
        Expanded(
          child: ListView(
            children: [
              Container(
                height: .2,
                width: size.width,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 8),
                child: Row(
                  children: [
                    const Spacer(),
                    Expanded(flex: 3,child: textView(context, text),),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget textView(BuildContext context, String text) {
    var bm = TextUtils.bodyMedium(context).copyWith(fontFamily: 'OpenSans');
    var bl = TextUtils.bodyLarge(context).copyWith(fontFamily: 'OpenSans');
    List<InlineSpan> spans = [];
    for (String txt in text.trim().split("*")) {
      var hasSpecial = text.contains('*${txt.trim()}*');
      var span = TextSpan(
        text: txt,
        style: hasSpecial
            ? bl.copyWith(fontWeight: FontWeight.bold)
            : bm.copyWith(height: 2),
      );
      spans.add(span);
    }

    return RichText(text: TextSpan(children: spans));
  }
}
