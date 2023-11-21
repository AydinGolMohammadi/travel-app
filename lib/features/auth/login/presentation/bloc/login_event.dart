part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {}

class UserLoginEvent extends LoginEvent{
  final LoginParam loginParam;

  UserLoginEvent(this.loginParam);

  @override
  List<Object?> get props => [];
}

class ToggleEvent extends LoginEvent{
  @override
  List<Object?> get props => [];
}
