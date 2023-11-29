// To parse this JSON data, do
//
//     final loginParam = loginParamFromJson(jsonString);

import 'dart:convert';

SignUpParams loginParamFromJson(String str) =>
    SignUpParams.fromJson(json.decode(str));

String loginParamToJson(SignUpParams data) => json.encode(data.toJson());

class SignUpParams {
  String username;
  String password;
  String email;
  String passwordConfirm;

  SignUpParams(
      {required this.username,
      required this.password,
      required this.passwordConfirm,
      required this.email,
   });

  factory SignUpParams.fromJson(Map<String, dynamic> json) => SignUpParams(
      username: json["username"],
      password: json["password"],
      passwordConfirm: json["passwordConfirm"],
      email: json["email"],);

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "passwordConfirm": passwordConfirm,
        "email": email,
      };
}
