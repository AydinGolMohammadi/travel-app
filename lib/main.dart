import 'package:flutter/material.dart';
import 'package:travel_app/core/navigation/router.dart';
import 'package:travel_app/core/utils/theme.dart';
import 'package:travel_app/di.dart';

void main() {
  getItInit();
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeController.themeController.lightTheme,
    );
  }
}
