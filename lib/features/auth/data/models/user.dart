import 'dart:convert';

import '../../domain/entities/user_entity.dart';

class User extends UserEntity {
  const User({
    required super.id,
    required super.username,
    required super.email,
    required super.password,
  });

  factory User.fromJson(Map<String, Object?> json) {
    final id = json["id"] as String;
    final username = json["username"] as String;
    final email = json["email"] as String;
    final password = json["password"] as String;

    return User(id: id, username: username, email: email, password: password);
  }

  String toJson() {
    final user = {
      "id": id,
      "username": username,
      "email": email,
      "password": password,
    };
    return jsonEncode(user);
  }
}
