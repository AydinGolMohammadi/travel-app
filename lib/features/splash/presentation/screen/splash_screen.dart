import 'package:flutter/material.dart';
import 'package:travel_app/core/navigation/route.dart';
import 'package:travel_app/core/widgets/image_holder_widget.dart';
import 'package:travel_app/gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        return AppRoute.onboarding.clearAndNavigate(context);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Assets.images.appIcon.image(),
      ),
    );
  }
}
