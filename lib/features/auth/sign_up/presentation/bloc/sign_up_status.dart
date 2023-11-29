import 'package:travel_app/features/auth/sign_up/domain/entity/sign_up_entity.dart';

abstract class SignUpStatus{}

class SignUpInit extends SignUpStatus{}

class SignUpLoading extends SignUpStatus{}

class SignUpCompleted extends SignUpStatus{
  final SignUpEntity signUpEntity;

  SignUpCompleted(this.signUpEntity);
}

class SignUpError extends SignUpStatus{
  final String error;

  SignUpError(this.error);
}