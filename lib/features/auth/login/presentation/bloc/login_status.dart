import 'package:flutter/material.dart';
import 'package:travel_app/features/auth/login/domain/entity/login_entity.dart';

@immutable
abstract class LoginStatus{}

class LoginInit extends LoginStatus{}

class LoginLoading extends LoginStatus{}

class LoginCompleted extends LoginStatus{
  final LoginEntity loginEntity;

  LoginCompleted(this.loginEntity);
}

class LoginError extends LoginStatus{
  final String error;

  LoginError(this.error);
}