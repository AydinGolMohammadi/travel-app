import 'package:travel_app/features/auth/login/domain/entity/login_entity.dart';

class LoginDto extends LoginEntity {
  LoginDto({
    Admin? admin,
    String? token,
  }) : super(
    token: token ?? '',
    admin: admin ??
        Admin(
          id: '',
          created: '',
          updated: '',
          avatar: 0,
          email: '',
        ),
  );

  factory LoginDto.fromJson(Map<String, dynamic> json) => LoginDto(
    token: json["token"],
    admin: Admin.fromJson(json["admin"]),
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "admin": admin.toJson(),
  };
}
