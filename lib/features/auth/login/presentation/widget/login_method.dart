import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/core/constants/constants.dart';
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
        border: Border.all(color: Palette.kColorNature[14]),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              assets,
              const Gap(5.0),
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