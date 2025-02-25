class FireRoomData {
  String roomName;
  List<String>? participants;
  FireRoomData({this.roomName = '', this.participants});

  Map<String, dynamic> toJson() {
    return {
      'roomName': roomName,
      'participants': participants,
    };
  }

  factory FireRoomData.fromJson(Map<String, dynamic> json) {
    return FireRoomData(
      roomName: json['roomName'] ?? '',
      participants: json['participants'] != null
          ? List<String>.from(json['participants'])
          : null,
    );
  }
}
