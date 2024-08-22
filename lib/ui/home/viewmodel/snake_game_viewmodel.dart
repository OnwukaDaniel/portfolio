import 'package:portfolio/common_imports.dart';

class SnakeGameViewModel extends BaseViewModel {
  int dim = 0;
  final crossSection = 10;
  Color snakeColor = Colors.black;
  List<GameObject> gameObjects= [];
  List<GameObject> snakeData = [];
  var snakeLength = 5;

  void createGameObject(int shape) {
    var dim = (shape / crossSection).round() - 3; //2 for padding
    this.dim = dim;
    gameObjects = [];
    for(double c in List.generate(dim, (_)=> _.toDouble())) {
      for (double r in List.generate(dim, (_)=> _.toDouble())){
        var obj = GameObject(size: Size(r, c));
        gameObjects.add(obj);
      }
    }
    _initSnake();
    notifyListeners();
  }

  _initSnake({int length = 5}) {
    var numbers = List.generate(length, (_)=> _.toDouble());
    for(double i in numbers){
      var size = Size(dim / 2, (dim - 2)  + i);
      'Snake ****** ${size.width} ****** ${size.height}'.log;
      snakeData.add(GameObject(size: size, c: snakeColor));
      updateCellColor(size.width.round(), size.height.round(), snakeColor);
    }
  }

  void updateCellColor(int row, int col, Color newColor) {
    int index = (row * dim) + col;  // Calculate the index based on row and column
    gameObjects[index].c = newColor;
    notifyListeners();
  }


  up() {
    updateCellColor(10, 10, Colors.black);
  }
  down() {}
  right() {}
  left() {}
}
