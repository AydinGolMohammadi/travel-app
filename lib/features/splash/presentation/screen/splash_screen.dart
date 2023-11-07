import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_app/app_pages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            context.goNamed(AppPages.homeScreen);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'splash screen',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
