part of 'login_bloc.dart';

class LoginState {
  LoginStatus loginStatus;
  ToggleStatus toggleStatus;

  LoginState({required this.loginStatus, required this.toggleStatus});

  LoginState copyWith({
    LoginStatus? newLoginStatus,
    ToggleStatus? newToggleStatus,
  }) {
    return LoginState(
      loginStatus: newLoginStatus ?? loginStatus,
      toggleStatus: newToggleStatus ?? toggleStatus,
    );
  }
}
