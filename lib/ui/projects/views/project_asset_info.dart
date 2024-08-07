import 'package:portfolio/common_imports.dart';

class ProjectAssetInfo extends StatelessWidget {
  final List<ProjectAssets> projectAssets;
  const ProjectAssetInfo(this.projectAssets, {super.key});

  @override
  Widget build(BuildContext context) {
    var views = List.generate(projectAssets.length, (index) {
      var asset = projectAssets[index];
      var widgets = asset.links.map((e) {
        if(e.split('.').last == 'mp4') { // only supporting .m4 for video now
          return ProjectInfoVideoPlayer(e);
        } else {
          return DisplayImage(e);
        }
      }).toList();

      return Column(
        children: [
          ProjectDisplaySamples(
            asset.color.withOpacity(.8),
            view(context, widgets),
            asset.title,
          ),
          const SizedBox(height: kTextTabBarHeight),
        ],
      );
    });

    return Column(children: views);
  }

  Widget view(BuildContext context, List<Widget> assets) {
    if (context.device == DeviceType.mobile) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: assets,
      );
    }
    return SizedBox(
      height: 540,
      child: MasonryGridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        itemCount: assets.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(child: assets[index]);
        },
      ),
    );
  }
}
