import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:travel_app/core/constants/constants.dart';
import 'package:travel_app/core/navigation/route.dart';
import 'package:travel_app/core/widgets/main_button_widget.dart';
import 'package:travel_app/core/widgets/main_text_field_widget.dart';
import 'package:travel_app/features/auth/sign_up/domain/params/sing_up_param.dart';
import 'package:travel_app/features/auth/sign_up/presentation/bloc/sign_up_bloc.dart';
import 'package:travel_app/features/auth/sign_up/presentation/bloc/sign_up_status.dart';
import 'package:travel_app/features/auth/sign_up/presentation/bloc/toggle_status.dart';
import 'package:travel_app/gen/assets.gen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //phone Number package
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController phoneNumberTextController =
      TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  //Text Form Field Controller Sign Up Event
  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();
  final TextEditingController usernameTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorBackground,
        elevation: 0,
        leading: Column(
          children: [
            const Gap(18),
            Assets.svg.back.svg(
              height: 18,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(10),
              //header Text
              Text(
                "Create account",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: kColorBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const Gap(5),
              Text(
                "Get the best out of derleng by creating an account",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: kColorBlack,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              const Gap(13),
              //Text Editing First name
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "First name",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: kColorBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  const Gap(5.0),
                  MainTextField(
                    textController: usernameTextEditingController,
                    onIconTap: () {},
                    hintText: 'Enter your first name',
                    isEmpty: false,
                    onChanged: (value) {},
                  ),
                ],
              ),
              const Gap(12),
              //Text Editing last name
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Last name",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: kColorBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  const Gap(5.0),
                  MainTextField(
                    onIconTap: () {},
                    hintText: 'Enter your last name',
                    isEmpty: false,
                    onChanged: (value) {},
                  ),
                ],
              ),
              const Gap(12.0),
              //Text Editing phone
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Phone",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: kColorBlack,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const Gap(5),
                Form(
                  key: formKey,
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      // print(number.phoneNumber);
                    },
                    onInputValidated: (bool value) {
                      // print(value);
                    },
                    selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: const TextStyle(color: Colors.black),
                    initialValue: number,
                    textFieldController: phoneNumberTextController,
                    formatInput: true,
                    keyboardType: const TextInputType.numberWithOptions(
                      signed: true,
                      decimal: true,
                    ),
                    inputBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        color: kColorError,
                        width: 1.0,
                      ),
                    ),
                    onSaved: (PhoneNumber number) {
                      // print('On Saved: $number');
                    },
                  ),
                ),
              ]),
              const Gap(12.0),
              //age Text field
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Age",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: kColorBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  const Gap(5.0),
                  MainTextField(
                    onIconTap: () {},
                    hintText: 'Enter your age',
                    isEmpty: false,
                    onChanged: (value) {},
                  ),
                ],
              ),
              const Gap(12.0),
              //email Text field
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: kColorBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  const Gap(5.0),
                  MainTextField(
                    textController: emailTextEditingController,
                    onIconTap: () {},
                    hintText: 'Enter your email',
                    isEmpty: false,
                    onChanged: (value) {},
                  ),
                ],
              ),
              const Gap(12.0),
              //password Textfield
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: kColorBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  const Gap(5.0),
                  BlocBuilder<SignUpBloc, SignUpState>(
                    builder: (context, state) {
                      return MainPasswordTextField(
                        textController: passwordTextEditingController,
                        onIconTap: () {
                          BlocProvider.of<SignUpBloc>(context)
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
              const Gap(6.0),
              // accept condition
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: true,
                      activeColor: const Color(0xff06bbfb),
                      onChanged: (value) {}),
                  GestureDetector(
                    onTap: () {
                      AppRoute.login.push(context);
                    },
                    child: Text(
                      'I accept term and condition',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: kColorBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ],
              ),
              const Gap(8.0),
              //already have account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Palette.kColorNature[8],
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  GestureDetector(
                    onTap: () {
                      AppRoute.login.push(context);
                    },
                    child: Text(
                      'Go back',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: kColorBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
              const Gap(12.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocConsumer<SignUpBloc, SignUpState>(
          listener: (context, state) {
            if (state.signUpStatus is SignUpCompleted) {
              //final SignUpCompleted signUpCompleted = state.signUpStatus as SignUpCompleted;
              // final Si loginEntity = loginCompleted.loginEntity;
              // storage.writeSharedData(PrefKeys.kToken, loginEntity.token);
              AppRoute.login.clearAndNavigate(context);
            }
          },
          builder: (context, state) {
            if (state.signUpStatus is SignUpInit) {
              return MainButton(
                height: 52,
                isEnabled: true,
                onTap: () {
                  BlocProvider.of<SignUpBloc>(context).add(
                    SignUpCreateAccountEvent(
                      SignUpParams(
                        username: usernameTextEditingController.text,
                        password: passwordTextEditingController.text,
                        email: emailTextEditingController.text,
                        passwordConfirm: passwordTextEditingController.text,
                      ),
                    ),
                  );
                },
                enabledText: "Create Account",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                useWidget: false,
              );
            }
            if (state.signUpStatus is SignUpLoading) {
              return MainButton(
                height: 52,
                isEnabled: true,
                onTap: () {},
                enabledText: "Create Account",
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
            if (state.signUpStatus is SignUpError) {
              return MainButton(
                height: 52,
                isEnabled: true,
                onTap: () {
                  BlocProvider.of<SignUpBloc>(context).add(
                    SignUpCreateAccountEvent(
                      SignUpParams(
                        username: usernameTextEditingController.text,
                        password: passwordTextEditingController.text,
                        email: emailTextEditingController.text,
                        passwordConfirm: passwordTextEditingController.text,
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
      ),
    );
  }

  //get phone number from phone number package
  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    phoneNumberTextController.dispose();
    super.dispose();
  }
}
