import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'onboardin_state.dart';

class OnboardinCubit extends Cubit<int> {
  OnboardinCubit() : super(0);

  void nextPage() {
    if(state < 2) {
      emit(state + 1);
    }
  }

  void onPageChanged(int index) {
    if(state <= 2) {
      emit(index);
    }
  }
}
