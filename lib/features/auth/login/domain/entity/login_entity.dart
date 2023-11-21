// To parse this JSON data, do
//
//     final loginEntity = loginEntityFromJson(jsonString);

import 'dart:convert';

LoginEntity loginEntityFromJson(String str) => LoginEntity.fromJson(json.decode(str));

String loginEntityToJson(LoginEntity data) => json.encode(data.toJson());

class LoginEntity {
  Admin admin;
  String token;

  LoginEntity({
    required this.admin,
    required this.token,
  });

  factory LoginEntity.fromJson(Map<String, dynamic> json) => LoginEntity(
    admin: Admin.fromJson(json["admin"]),
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "admin": admin.toJson(),
    "token": token,
  };
}

class Admin {
  String id;
  String created;
  String updated;
  int avatar;
  String email;

  Admin({
    required this.id,
    required this.created,
    required this.updated,
    required this.avatar,
    required this.email,
  });

  factory Admin.fromJson(Map<String, dynamic> json) => Admin(
    id: json["id"],
    created: json["created"],
    updated: json["updated"],
    avatar: json["avatar"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created": created,
    "updated": updated,
    "avatar": avatar,
    "email": email,
  };
}
