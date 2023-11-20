import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Assets.svg.star.svg(height: 100,width: 100,color: Colors.black, fit: BoxFit.cover)

        ],
      ),

    );
  }
}
