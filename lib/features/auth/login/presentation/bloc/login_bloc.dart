import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:travel_app/core/resources/data_state.dart';
import 'package:travel_app/features/auth/login/domain/params/login_param.dart';
import 'package:travel_app/features/auth/login/domain/usecase/login_usecase.dart';
import 'package:travel_app/features/auth/login/presentation/bloc/login_status.dart';
import 'package:travel_app/features/auth/login/presentation/bloc/toggle_status.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;

  LoginBloc(this.loginUseCase)
      : super(
          LoginState(
            loginStatus: LoginInit(),
            toggleStatus: ToggleBool(false),
          ),
        ) {
    on<UserLoginEvent>((event, emit) async {
      emit(state.copyWith(newLoginStatus: LoginLoading()));
      DataState dataState = await loginUseCase.call(params: event.loginParam);
      if (dataState is DataSuccess) {
        emit(state.copyWith(newLoginStatus: LoginCompleted(dataState.data)));
      }
      if (dataState is DataFailed) {
        emit(state.copyWith(newLoginStatus: LoginError('error')));
      }
    });
    on<ToggleEvent>((event, emit) async {
      if (state.toggleStatus is ToggleBool) {
        emit(state.copyWith(newToggleStatus: ToggleBool(!(state.toggleStatus as ToggleBool).obscureBool)));
      }
    });
  }
}
