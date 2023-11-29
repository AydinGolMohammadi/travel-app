part of 'sign_up_bloc.dart';

class SignUpState {
  SignUpStatus signUpStatus;
  ToggleStatus toggleStatus;

  SignUpState({required this.signUpStatus, required this.toggleStatus});

  SignUpState copyWith({
    SignUpStatus? newSignUpStatus,
    ToggleStatus? newToggleStatus,
  }) {
    return SignUpState(
      signUpStatus: newSignUpStatus ?? signUpStatus,
      toggleStatus: newToggleStatus ?? toggleStatus,
    );
  }
}
