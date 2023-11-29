import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/core/constants/constants.dart';
import 'package:travel_app/core/datasources/preferences/pref_keys.dart';
import 'package:travel_app/core/navigation/route.dart';
import 'package:travel_app/core/widgets/main_button_widget.dart';
import 'package:travel_app/core/widgets/main_text_field_widget.dart';
import 'package:travel_app/core/write_data/shared_prefrences.dart';
import 'package:travel_app/features/auth/login/domain/entity/login_entity.dart';
import 'package:travel_app/features/auth/login/domain/params/login_param.dart';
import 'package:travel_app/features/auth/login/presentation/bloc/login_bloc.dart';
import 'package:travel_app/features/auth/login/presentation/bloc/login_status.dart';
import 'package:travel_app/features/auth/login/presentation/bloc/toggle_status.dart';
import 'package:travel_app/features/auth/login/presentation/widget/login_method.dart';
import 'package:travel_app/gen/assets.gen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final SharedPreference storage = SharedPreference();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(100.0),

              // image, title and sub
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.images.appIconBlue.image(
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  const Gap(20),
                  Text(
                    "Welcome to Discover",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: kColorBlack,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Please choose your login option below",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: kColorBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
              ),
              const Gap(20.0),

              // email text field
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "email",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: kColorBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  const Gap(5.0),
                  MainTextField(
                    onIconTap: () {},
                    hintText: 'Enter your email address',
                    isEmpty: false,
                    onChanged: (value) {},
                  ),
                ],
              ),
              const Gap(14),

              // pass text field
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "password",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: kColorBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  const Gap(5.0),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return MainPasswordTextField(
                        onIconTap: () {
                          BlocProvider.of<LoginBloc>(context)
                              .add(ToggleEvent());
                        },
                        onChanged: (value) {},
                        hintText: 'Enter your password',
                        obscureText:
                            (state.toggleStatus as ToggleBool).obscureBool,
                        suffixIcon1: const Icon(
                          Icons.visibility,
                          color: kColorBlack,
                        ),
                        suffixIcon2: const Icon(
                          Icons.visibility_off,
                          color: kColorBlack,
                        ),
                      );
                    },
                  ),
                ],
              ),
              const Gap(10),

              // forgot pass
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot password?",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: kColorPrimary,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
              const Gap(10),

              // login botton
              BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state.loginStatus is LoginCompleted) {
                    final LoginCompleted loginCompleted =
                        state.loginStatus as LoginCompleted;
                    final LoginEntity loginEntity = loginCompleted.loginEntity;
                    storage.writeSharedData(PrefKeys.kToken, loginEntity.token);
                    AppRoute.home.clearAndNavigate(context);
                  }
                },
                builder: (context, state) {
                  if (state.loginStatus is LoginInit) {
                    return MainButton(
                      height: 52,
                      isEnabled: true,
                      onTap: () {
                        BlocProvider.of<LoginBloc>(context).add(
                          UserLoginEvent(
                            LoginParam(
                              identity: 'aydin1234@gmail.com',
                              password: 'aydin1234',
                            ),
                          ),
                        );
                      },
                      enabledText: "Login",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      useWidget: false,
                    );
                  }
                  if (state.loginStatus is LoginLoading) {
                    return MainButton(
                      height: 52,
                      isEnabled: true,
                      onTap: () {},
                      enabledText: "Login",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      useWidget: true,
                      widget: const Center(
                        child: SpinKitThreeBounce(
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    );
                  }
                  if (state.loginStatus is LoginError) {
                    return MainButton(
                      height: 52,
                      isEnabled: true,
                      onTap: () {
                        BlocProvider.of<LoginBloc>(context).add(
                          UserLoginEvent(
                            LoginParam(
                              identity: 'aydingolmohammadii@gmail.com',
                              password: '0441099211aT@',
                            ),
                          ),
                        );
                      },
                      enabledText: "Please try again",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      useWidget: false,
                    );
                  }
                  return Container();
                },
              ),
              const Gap(20),

              // oAuth
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Divider(
                          height: 1,
                          color: Palette.kColorNature[8],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Or login with",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: kColorBlack,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          height: 1,
                          color: Palette.kColorNature[8],
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Row(
                    children: [
                      Expanded(
                        child: LoginMethodWidget(
                          text: 'Facebook',
                          assets: Assets.images.facebook.image(),
                        ),
                      ),
                      const Gap(8),
                      Expanded(
                        child: LoginMethodWidget(
                          text: 'Google',
                          assets: Assets.images.google.image(),
                        ),
                      ),
                      const Gap(8),
                      Expanded(
                        child: LoginMethodWidget(
                          text: 'Apple',
                          assets: Assets.images.apple.image(),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const Gap(60),

              // create account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Doesn’t have account on dicover? ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Palette.kColorNature[8],
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  GestureDetector(
                    onTap: (){
                      AppRoute.signUp.push(context);                    },
                    child: Text(
                      'Create Account',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: kColorBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
