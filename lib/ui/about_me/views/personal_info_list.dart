import 'package:portfolio/imports/common_imports.dart';

class PersonalInfoList extends StackedHookView<AboutMeViewmodel> {
  const PersonalInfoList({super.key});

  @override
  Widget builder(BuildContext context, model) {
    var bs = TextUtils.bodySmall(context);
    var ll = TextUtils.labelLarge(context);

    return ListView.builder(
      itemCount: model.personalInfo.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        var data = model.personalInfo[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => model.showSideBarInfo(!data.show, index),
              child: Row(
                children: [
                  Icon(
                    data.show
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_right,
                    color: bs.color,
                  ),
                  const SizedBox(width: 6),
                  Image.asset(data.icon),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      data.displayName,
                      style: ll,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            if (data.show)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data.files.length,
                  itemBuilder: (_, index) {
                    var files = data.files[index];
                    return InkWell(
                      onTap: () => model.setDisplayPersonalInfo(files),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/dart.png',
                              width: 16,
                              height: 16,
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                files.file,
                                style: ll,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
          ],
        );
      },
    );
  }
}
