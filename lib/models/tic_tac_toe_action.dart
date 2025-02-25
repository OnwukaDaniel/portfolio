
class TicTacToeAction {
  int row;
  int col;
  String player;
  int count;
  int id;

  TicTacToeAction(this.row, this.col, this.player, this.count, this.id);

  Map<String, dynamic> toJson() {
    return {
      'row': row,
      'col': col,
      'player': player,
      'count': count,
      'id': id,
    };
  }

  factory TicTacToeAction.fromJson(Map<String, dynamic> json) {
    return TicTacToeAction(
      json['row'] as int,
      json['col'] as int,
      json['player'] as String,
      json['count'] as int,
      (json['id']??0) as int,
    );
  }

  @override
  String toString() {
    return 'TicTacToeAction{row: $row, col: $col, player: $player, count: $count, id: $id}';
  }
}
