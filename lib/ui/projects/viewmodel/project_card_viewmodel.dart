import 'package:portfolio/imports/common_imports.dart';

class ProjectsCardViewmodel extends BaseViewModel {
  late AnimationController controller;
  late AnimationController sizeController;
  late Animation<double> boxShadowAnimation;
  late Animation<double> sizeAnimation;
  var boxTween = Tween<double>(begin: 1, end: 20);
  var sizeTween = Tween<double>(begin: 1, end: 2);

  init(TickerProvider vsync) {
    sizeController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: vsync,
    );
    controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: vsync,
    );
    boxShadowAnimation = controller.drive(boxTween);
    sizeAnimation = sizeController.drive(sizeTween);
  }

  @override
  void dispose() {
    controller.dispose();
    sizeController.dispose();
    super.dispose();
  }
}
