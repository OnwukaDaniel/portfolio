import 'package:portfolio/common_imports.dart';

class ProjectDisplaySamples extends StatelessWidget {
  final Color cardColor;
  final Widget child;
  final String title;

  const ProjectDisplaySamples(
    this.cardColor,
    this.child,
    this.title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var tm = TextUtils.titleMedium(context);
    var size = MediaQuery.of(context).size;
    double cardPadding = 16;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: tm.copyWith(fontWeight: FontWeight.bold)),
        Container(
          width: context.device == DeviceType.mobile
              ? double.infinity
              : 0.75 * size.width,
          padding: EdgeInsets.symmetric(
            vertical: cardPadding,
            horizontal: cardPadding * 5,
          ),
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: cardColor,
            boxShadow: [
              BoxShadow(
                color: cardColor.withOpacity(0.5),
                spreadRadius: 10,
                blurRadius: 90,
              ),
            ],
          ),
          child: child,
        ),
      ],
    );
  }
}
