import 'dart:convert';

class User {
  String user;
  String programme;
  String indexNumber;
  String registration;
  String level;
  List modelData;

  User({
    required this.user,
    required this.programme,
    required this.indexNumber,
    required this.registration,
    required this.modelData,
    required this.level,
  });

  static User fromMap(Map<String, dynamic> user) {
    return new User(
      user: user['user'],
      programme: user['programme'],
      modelData: jsonDecode(user['model_data']),
      indexNumber: user['index_number'],
      level: user['level'],
      registration: user['registration'],
    );
  }

  toMap() {
    return {
      'user': user,
      'programme': programme,
      'model_data': jsonEncode(modelData),
      'index_number': indexNumber,
      'level': level,
      'registration': registration,
    };
  }
}
