import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'toggle_bool_state.dart';

class ToggleBoolCubit extends Cubit<bool> {
  ToggleBoolCubit() : super(true);

  void toggle() {
    emit(!state);
  }
}
