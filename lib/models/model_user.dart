import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String id;
  String userName;
  String password;

  //setter and getter
  String get getId => id;
  String get getUserName => userName;
  String get getPassword => password;

  set setId(String id) => this.id = id;
  set setUserName(String userName) => this.userName = userName;
  set setPassword(String password) => this.password = password;

  User({required this.id, required this.userName, required this.password});
  CollectionReference conectionr = FirebaseFirestore.instance.collection('otp');

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      userName: json['userName'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'password': password,
    };
  }
}
