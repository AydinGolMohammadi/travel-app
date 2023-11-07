import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_app/features/home/presentation/screen/home_screen.dart';
import 'package:travel_app/features/splash/presentation/screen/splash_screen.dart';

class AppPages {
  static const String splashScreen = 'SplashScreen';
  static const String homeScreen = 'HomeScreen';
}

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: AppPages.splashScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const SplashScreen();
          },
        ),
        GoRoute(
          path: AppPages.homeScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
        ),
      ],
    ),
  ],
);
