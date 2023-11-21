// This is our global ServiceLocator
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:travel_app/core/datasources/remote/dio/dio_provider.dart';
import 'package:travel_app/core/datasources/remote/remote_service.dart';
import 'package:travel_app/features/auth/login/data/repository/login_reposintory_impl.dart';
import 'package:travel_app/features/auth/login/domain/repository/login_repository.dart';
import 'package:travel_app/features/auth/login/domain/usecase/login_usecase.dart';
import 'package:travel_app/features/auth/login/presentation/bloc/login_bloc.dart';
import 'package:travel_app/features/onboarding/presentation/cubit/onboardin_cubit.dart';

var locator = GetIt.instance;

void getItInit() {
  locator.registerSingleton<Dio>(DioProvider().dio);
  locator.registerSingleton<RemoteService>(RemoteService(locator()));


  // onBoarding cubit
  locator.registerSingleton<OnboardinCubit>(OnboardinCubit());

  // login dependencies
  locator.registerSingleton<LoginRepository>(LoginRepositoryImpl(locator()));
  locator.registerSingleton<LoginUseCase>(LoginUseCase(locator()));
  locator.registerSingleton<LoginBloc>(LoginBloc(locator()));
}
