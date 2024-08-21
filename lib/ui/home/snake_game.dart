import 'package:portfolio/common_imports.dart';

class SnakeGame extends StatelessWidget {
  const SnakeGame({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SnakeGameViewModel(),
      builder: (context, model, _) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          body: Container(),
          bottomNavigationBar: Wrap(
            alignment: WrapAlignment.end,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  16.h,
                  TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.arrow_drop_up,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.arrow_left,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                        ),
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
}
