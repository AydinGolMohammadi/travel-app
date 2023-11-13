import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/core/constants/constants.dart';
import 'package:travel_app/core/navigation/route.dart';
import 'package:travel_app/core/widgets/main_button_widget.dart';
import 'package:travel_app/features/onboarding/data/model/onboarding_model.dart';
import 'package:travel_app/features/onboarding/presentation/cubit/onboardin_cubit.dart';
import 'package:travel_app/gen/assets.gen.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  List<OnboardingModel> onboardingList = [
    OnboardingModel(
      title: 'Get ready for the next trip',
      subTitle: 'Find thousans of tourist destinations ready for you to visit',
      image: Assets.images.onboarding1.image(
        fit: BoxFit.fitWidth,
      ),
    ),
    OnboardingModel(
      title: 'Visit tourist attractions',
      subTitle: 'Find thousans of tourist destinations ready for you to visit',
      image: Assets.images.onboarding2.image(
        fit: BoxFit.fitWidth,
      ),
    ),
    OnboardingModel(
      title: 'Lets explore the world',
      subTitle: 'Find thousans of tourist destinations ready for you to visit',
      image: Assets.images.onboarding3.image(
        fit: BoxFit.fitWidth,
      ),
    ),
  ];

  int onboardActiveIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (value) {
              BlocProvider.of<OnboardinCubit>(context).onPageChanged(value);
            },
            itemCount: onboardingList.length,
            itemBuilder: (context, index) => Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: onboardingList[index].image,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: kShadowGradiant,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40.0, right: 40.0, bottom: 200.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Assets.images.iconInOnboarding.image(),
                      const Gap(40.0),
                      Text(
                        onboardingList[index].title,
                        style: kTextStyleBold.copyWith(
                          color: kColorWhite,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        onboardingList[index].subTitle,
                        style: kTextStyleBold.copyWith(
                          color: kColorWhite,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 20.0, left: 40.0, right: 40.0),
            child: BlocBuilder<OnboardinCubit, int>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MainButton(
                      enabledText: 'Next',
                      isEnabled: true,
                      onTap: () {
                        _pageController.nextPage(
                          duration: const Duration(
                            milliseconds: 300,
                          ),
                          curve: Curves.fastEaseInToSlowEaseOut,
                        );
                        if(state == 2){
                          AppRoute.home.clearAndNavigate(context);
                        } else {
                          BlocProvider.of<OnboardinCubit>(context).nextPage();
                        }
                      },
                    ),
                    const Gap(45.0),
                    AnimatedSmoothIndicator(
                      activeIndex: state,
                      count: onboardingList.length,
                      effect: ExpandingDotsEffect(
                        dotHeight: 6,
                        dotWidth: 6,
                        activeDotColor: kColorWhite,
                        dotColor: Palette.kColorNature[10],
                        spacing: 8,
                        expansionFactor: 4,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
