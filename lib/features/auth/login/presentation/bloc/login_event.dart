part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {}

class EmailEvent extends LoginEvent {
  final String email;

  EmailEvent(this.email);

  @override
  List<Object?> get props => [email];
}

class PasswordEvent extends LoginEvent {
  final String password;

  PasswordEvent(this.password);

  @override
  List<Object?> get props => [];
}
