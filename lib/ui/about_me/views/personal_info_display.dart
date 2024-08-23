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
                padding: const EdgeInsets.all(8.0),
                child: textView(context, text),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget textView(BuildContext context, String text) {
    var ll = TextUtils.labelLarge(context);
    var bs = TextUtils.bodySmall(context);
    List<String> underscores = [];
    List<String> bolds = [];
    RegExp regExp = RegExp(r'(_[a-zA-Z0-9\s]+_)|(\*[a-zA-Z0-9\s]+\*)');

    Iterable<Match> matches = regExp.allMatches(text);
    for (var match in matches) {
      if (match.group(1) != null) {
        underscores.add(match.group(1)??'');
      } else if (match.group(2) != null) {
        underscores.add(match.group(2)??'');
      }
    }
    List<InlineSpan> spans = [];
    for (String txt in text.trim().split("*")) {
      var hasSpecial = text.contains('*${txt.trim()}*');
      var hasItalic = text.contains('*${txt.trim()}*');
      TextStyle style = ll;
      if(hasSpecial) {
        style = bs.copyWith(fontWeight: FontWeight.bold);
      }
      var span = TextSpan(
        text: txt,
        style: hasSpecial
            ? bs.copyWith(fontWeight: FontWeight.bold)
            : ll.copyWith(height: 2),
      );
      spans.add(span);
    }

    return RichText(text: TextSpan(children: spans));
  }
}
