// This is our global ServiceLocator
import 'package:get_it/get_it.dart';
import 'package:travel_app/features/onboarding/presentation/cubit/onboardin_cubit.dart';

var locator = GetIt.instance;

void getItInit() {
  locator.registerSingleton<OnboardinCubit>(OnboardinCubit());
}
