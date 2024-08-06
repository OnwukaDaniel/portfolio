import 'package:portfolio/common_imports.dart';

class DisplayImage extends StatelessWidget {
  final String image;

  const DisplayImage(this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    double w = 200;
    double h = 480;

    Widget widget = SizedBox(
      width: w,
      height: h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(image, fit: BoxFit.cover, width: w, height: h),
      ),
    );

    Widget localWidget = Wrap(
      children: [
        SizedBox(
          width: w,
          height: h,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: InkWell(
                onTap: () => ProjectsUtil.dialog(context, widget, image),
                child:
                    Image.asset(image, fit: BoxFit.cover, width: w, height: h),
              ),
            ),
          ),
        ),
      ],
    );
    return Hero(tag: image, child: localWidget);
  }
}
