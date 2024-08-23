import 'package:portfolio/common_imports.dart';

class SnakeGameViewModel extends BaseViewModel {
  int dim = 0;
  SnakeDirection snakeDirection = SnakeDirection.none;
  final crossSection = 10;
  Color snakeColor = Colors.black;
  List<GameObject> gameObjects= [];
  List<GameObject> snakeData = [];
  var snakeLength = 5;
  Size get _head => snakeData.isEmpty? const Size(0, 0) : snakeData.last.size;

  void createGameObject(int shape) {
    _movementLoop();
    var dim = (shape / crossSection).round() - 3; //2 for padding
    this.dim = dim;
    gameObjects = [];
    for(double c in List.generate(dim, (_)=> _.toDouble())) {
      for (double r in List.generate(dim, (_)=> (_).toDouble())){
        var obj = GameObject(size: Size(r, c));
        gameObjects.add(obj);
      }
    }
    _initSnake();
    notifyListeners();
  }

  _initSnake({int length = 5}) {
    var numbers = List.generate(length, (_)=> _.toDouble());
    for(double i in numbers) {
      var size = Size((dim - snakeLength) + i, dim / 2);
      snakeData.add(GameObject(size: size, color: snakeColor));
      updateCellColor(size.width.truncate(), size.height.truncate(), snakeColor);
    }
  }

  void updateCellColor(int row, int col, Color newColor) {
    //int index = (row * dim) + col; // Calculate the index based on row and column
    int index = ((row - 1) * dim) + col;
    gameObjects[index].color = newColor;
    notifyListeners();
  }


  up() {
    _move(SnakeDirection.up);
    var obj = GameObject(size: Size(_head.width - 1, _head.height));
    if(_checkGameOver()) return;
    snakeData.add(obj);
    var trail = snakeData.firstOrNull;
    if(trail != null) snakeData.remove(trail);
    updatePainter();
  }

  down() {}
  right() {}
  left() {}

  int _index(int row, int col) => ((row - 1) * dim) + col;

  bool _checkGameOver() {
    if(_head.height > dim || _head.height < 0) return true;
    if(_head.width > dim || _head.width < 0) return true;
    return false;
  }

  _movementLoop() async {
    while(snakeDirection != SnakeDirection.none) {
      await Future.delayed(const Duration(seconds: 1));
      notifyListeners();
    }
  }

  _move(SnakeDirection direction) {
    /// Start loop if not moving yet
    if(snakeDirection == SnakeDirection.none && direction != SnakeDirection.none) {
      snakeDirection = direction;
      //_movementLoop();
    } else {
      snakeDirection = direction;
    }
  }

  updatePainter() {
    for(GameObject obj in snakeData) {
      var index = _index(obj.size.width.truncate(), obj.size.height.truncate());
      gameObjects[index] = obj;
    }
    notifyListeners();
  }
}
