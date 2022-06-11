import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import '../models/model_user.dart';

class UserController {
  CollectionReference users = FirebaseFirestore.instance.collection("otp");

  Future<bool> validateUser(String userName, String password) async {
    print("Nombre de usuario: $userName");
    print("Contraseña: $password");
    var user = await users
        .where('userName', isEqualTo: userName)
        .where('password', isEqualTo: password)
        .get();
    if (user.docs.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  Future<List<User>> listUsers() async {
    List<User> users = [];
    await this.users.get().then((value) {
      value.docs.forEach((element) {
        User m = User(
          id: "",
          userName: "",
          password: "",
        );
        m.setId = element.id;
        m.setUserName = element['userName'];
        users.add(m);
      });
    });
    return users;
  }
}
