part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpEvent extends Equatable {}

class SignUpCreateAccountEvent extends SignUpEvent{
  final SignUpParams signUpParams;

  SignUpCreateAccountEvent(this.signUpParams);

  @override
  List<Object?> get props => [];
}

class ToggleEvent extends SignUpEvent{
  @override
  List<Object?> get props => [];
}
