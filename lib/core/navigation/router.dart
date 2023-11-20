import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_app/core/navigation/route.dart';
import 'package:travel_app/di.dart';
import 'package:travel_app/features/home/presentation/screen/home_screen.dart';
import 'package:travel_app/features/onboarding/presentation/cubit/onboardin_cubit.dart';
import 'package:travel_app/features/onboarding/presentation/screen/onboarding_screen.dart';
import 'package:travel_app/features/splash/presentation/screen/splash_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoute.splash.path,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoute.onboarding.path,
      builder: (context, state) {
        return BlocProvider<OnboardinCubit>(
          create: (context) => locator.get(),
          child: OnboardingScreen(),
        );
      },
    ),
    GoRoute(
      path: AppRoute.home.path,
      builder: (context, state) => HomeScreen(),
    ),
  ],
);
