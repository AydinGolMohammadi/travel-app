import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  splash('/'),
  onboarding('/onboarding'),
  home('/home');

  const AppRoute(this.path);

  final String path;
}

extension AppRouteNavigation on AppRoute {
  void go(BuildContext context) => context.go(path);

  void push(BuildContext context) => context.push(path);

  void clearAndNavigate(BuildContext context) {
    while (context.canPop() == true) {
      context.pop();
    }
    context.pushReplacement(path);
  }
}
