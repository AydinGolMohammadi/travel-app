import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:travel_app/core/resources/data_state.dart';
import 'package:travel_app/features/auth/sign_up/domain/params/sing_up_param.dart';
import 'package:travel_app/features/auth/sign_up/domain/usecase/sign_up_usecase.dart';
import 'package:travel_app/features/auth/sign_up/presentation/bloc/sign_up_status.dart';
import 'package:travel_app/features/auth/sign_up/presentation/bloc/toggle_status.dart';


part 'sign_up_event.dart';

part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCase signUpUseCase;

  SignUpBloc(this.signUpUseCase)
      : super(
          SignUpState(
            signUpStatus: SignUpInit(),
            toggleStatus: ToggleBool(false),
          ),
        ) {
    on<SignUpCreateAccountEvent>((event, emit) async {
      emit(state.copyWith(newSignUpStatus: SignUpLoading()));
      DataState dataState = await signUpUseCase.call(params: event.signUpParams);
      if (dataState is DataSuccess) {
        emit(state.copyWith(newSignUpStatus: SignUpCompleted(dataState.data)));
      }
      if (dataState is DataFailed) {
        emit(state.copyWith(newSignUpStatus: SignUpError('error')));
      }
    });
    on<ToggleEvent>((event, emit) async {
      if (state.toggleStatus is ToggleBool) {
        emit(state.copyWith(newToggleStatus: ToggleBool(!(state.toggleStatus as ToggleBool).obscureBool)));
      }
    });
  }
}
