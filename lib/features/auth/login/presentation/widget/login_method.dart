import 'package:flutter/material.dart';
import 'package:travel_app/core/utils/theme.dart';

class LoginMethodWidget extends StatelessWidget {
  final String text;
  final Widget assets;

  const LoginMethodWidget({
    super.key,
    required this.text,
    required this.assets,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff000000).withOpacity(0.1)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Row(

            children: [
              assets,
              Text(
                text,
                style: ThemeController
                    .themeController.themeData.textTheme.bodyMedium!
                    .copyWith(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}