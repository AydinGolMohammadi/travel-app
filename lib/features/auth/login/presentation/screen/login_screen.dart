import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/core/utils/theme.dart';
import 'package:travel_app/core/widgets/main_button_widget.dart';
import 'package:travel_app/core/widgets/main_text_field_widget.dart';
import 'package:travel_app/features/auth/login/presentation/widget/login_method.dart';
import 'package:travel_app/gen/assets.gen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(100),
              Center(
                child: Assets.images.appIconBlue.image(
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const Gap(20),
              Center(
                child: Text(
                  "Welcome to Discover",
                  style: ThemeController
                      .themeController.themeData.textTheme.bodyMedium!
                      .copyWith(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  "Please choose your login option below",
                  style: ThemeController
                      .themeController.themeData.textTheme.bodyMedium!
                      .copyWith(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                ),
              ),
              const Gap(20),
              Text(
                "email",
                style: ThemeController
                    .themeController.themeData.textTheme.bodyMedium!
                    .copyWith(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
              ),
              SizedBox(
                  height: 52,
                  child: MainTextField(
                      onIconTap: () {}, isEmpty: false, onChanged: (value) {})),
              const Gap(14),
              Text(
                "password",
                style: ThemeController
                    .themeController.themeData.textTheme.bodyMedium!
                    .copyWith(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
              ),
              SizedBox(
                  height: 52,
                  child: MainPasswordTextField(
                    onIconTap: () {},
                    onChanged: (value) {},
                    obscureText: true,
                    suffixIcon1: const Icon(Icons.remove_red_eye),
                  )),
              const Gap(10),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot password?",
                  style: ThemeController
                      .themeController.themeData.textTheme.bodyMedium!
                      .copyWith(
                          color: const Color(0xff0061D2),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                ),
              ),
              const Gap(10),
              MainButton(
                height: 52,
                isEnabled: true,
                onTap: () {},
                bgColor: const Color(0xff0FA3E2),
                enabledText: "Login",
                textStyle: ThemeController
                    .themeController.themeData.textTheme.bodyMedium!
                    .copyWith(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Divider(
                    height: 1,
                    color: const Color(0xff000000).withOpacity(0.1),
                  )),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Or login with",
                        style: ThemeController
                            .themeController.themeData.textTheme.bodyMedium!
                            .copyWith(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    height: 1,
                    color: const Color(0xff000000).withOpacity(0.1),
                  )),
                ],
              ),
              const Gap(20),
              Row(
                children: [
                  Expanded(
                      child: LoginMethodWidget(
                    text: 'Facebook',
                    assets: Assets.images.facebook.image(),
                  )),
                  const Gap(8),
                  Expanded(
                    child: Expanded(
                        child: LoginMethodWidget(
                      text: 'Google',
                      assets: Assets.images.google.image(),
                    )),
                  ),
                  const Gap(8),
                  Expanded(
                    child: Expanded(
                        child: LoginMethodWidget(
                      text: 'Apple',
                      assets: Assets.images.apple.image(),
                    )),
                  )
                ],
              ),
              const Gap(40),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Doesn’t have account on dicover? ',
                        style: ThemeController
                            .themeController.themeData.textTheme.bodyMedium!
                            .copyWith(
                                color: const Color(0xff000000).withOpacity(0.6),
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: 'Create Account',
                          style: ThemeController
                              .themeController.themeData.textTheme.bodyMedium!
                              .copyWith(
                              color: const Color(0xff000000),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
