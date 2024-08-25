import 'package:portfolio/common_imports.dart';

class SnakeGame extends StatelessWidget {
  const SnakeGame({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var bs = TextUtils.bodySmall(context).copyWith(fontFamily: 'Nunito');
    var smallestSide = size.width <= size.height ? size.width : size.height;
    // Space for controls.
    if (smallestSide == size.height)
      smallestSide = smallestSide - kToolbarHeight * 3;

    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SnakeGameViewModel(),
      onViewModelReady: (_) => _.createGameObject(smallestSide.round()),
      builder: (context, model, _) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back, color: bs.color),
            ),
          ),
          body: 0 == 0
              ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(46),
                  child: Text(
                      'Game is in development. It will be updated once ready',
                      textAlign: TextAlign.center,
                      style: bs.copyWith(fontWeight: FontWeight.bold),
                    ),
                ),
              )
              : Center(
                  child: CustomPaint(
                    size: Size(size.width - 32, size.height - kToolbarHeight),
                    painter: GamePaint(model.gameObjects),
                  ),
                ),
          bottomNavigationBar: Wrap(
            alignment: WrapAlignment.end,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  16.h,
                  TextButton(
                    style: arrowStyle(),
                    onPressed: () => model.up(),
                    child: const Icon(Icons.arrow_drop_up, color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: arrowStyle(),
                        onPressed: () => model.left(),
                        child:
                            const Icon(Icons.arrow_left, color: Colors.white),
                      ),
                      4.w,
                      TextButton(
                        style: arrowStyle(),
                        onPressed: () => model.down(),
                        child: const Icon(Icons.arrow_drop_down,
                            color: Colors.white),
                      ),
                      4.w,
                      TextButton(
                        style: arrowStyle(),
                        onPressed: () => model.right(),
                        child:
                            const Icon(Icons.arrow_right, color: Colors.white),
                      ),
                    ],
                  ),
                  kToolbarHeight.h,
                ],
              )
            ],
          ),
        );
      },
    );
  }

  ButtonStyle arrowStyle() {
    return const ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(AppColor.appColor),
    );
  }
}
