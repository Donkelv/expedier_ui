import 'package:expedier_ui/core/constants/onboarding.dart';
import 'package:expedier_ui/core/extensions/context_extensions.dart';
import 'package:expedier_ui/core/extensions/theme_extension.dart';
import 'package:expedier_ui/core/helper_functions.dart';
import 'package:expedier_ui/core/theme/colors.dart';
import 'package:expedier_ui/core/widgets/button.dart';
import 'package:expedier_ui/features/authentication/screens/login.dart';
import 'package:expedier_ui/features/authentication/screens/signup.dart';
import 'package:expedier_ui/features/authentication/widgets/currency_card.dart';
import 'package:expedier_ui/features/authentication/widgets/indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int pageIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ExpedierColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: context.screenHeight * .75,
            child: Stack(
              children: [
                PageView.builder(
                  controller: pageController,
                  itemCount: onboardingAssets.length,
                  onPageChanged: (value) {
                    setState(() {
                      pageIndex = value;
                    });
                    debugPrint("Page Index is $pageIndex");
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (pageIndex == 2) ...[
                          AnimatedCurrencyCards(),
                        ] else ...[
                          OnboardingImageCards(index: pageIndex),
                        ],

                        OnboardingTexts(index: pageIndex),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 4.0.h,
              width: context.screenWidth,
              child: Center(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,

                  itemCount: onboardingAssets.length,
                  itemBuilder: (context, index) {
                    return CustomIndicator(isActive: pageIndex == index);
                  },
                ),
              ),
            ),
          ),
          70.0.verticalSpace,
          OnboardingButtons(
            pageIndex: pageIndex,
            pageController: pageController,
          ),
        ],
      ),
    );
  }
}

class OnboardingButtons extends StatelessWidget {
  const OnboardingButtons({
    super.key,
    required this.pageIndex,
    required this.pageController,
  });

  final int pageIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 500),
        child:
            pageIndex == 2
                ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50.0.h,
                        child: ExpedierButtons(
                          useChildHeight: true,
                          text: "Login",
                          context: context,
                          color: ExpedierColors.white,
                          textColor: ExpedierColors.primary,
                          onTap: () {
                            navigateWithFade(context, LoginScreen());
                          },
                        ).outline(borderColor: ExpedierColors.primary),
                      ),
                    ),
                    17.0.horizontalSpace,
                    Expanded(
                      child: SizedBox(
                        height: 50.0.h,
                        child:
                            ExpedierButtons(
                              useChildHeight: true,
                              text: "Sign Up",
                              context: context,
                              onTap: () {
                                navigateWithFade(context, SignUpScreen());
                              },
                            ).normal(),
                      ),
                    ),
                  ],
                )
                : SizedBox(
                  height: 50.0.h,
                  width: context.screenWidth,
                  child:
                      ExpedierButtons(
                        useChildHeight: true,
                        text: "Next",
                        context: context,
                        onTap: () {
                          pageController.animateToPage(
                            pageIndex + 1,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                      ).normal(),
                ),
      ),
    );
  }
}

class OnboardingTexts extends StatelessWidget {
  final int index;
  const OnboardingTexts({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Column(
        children: [
          60.0.verticalSpace,
          Text(
            onboardingAssets[index].title,
            textAlign: TextAlign.center,
            style: context.textTheme.bodyLarge!.copyWith(
              height: 0,
              fontWeight: FontWeight.w700,
            ),
          ),
          16.0.verticalSpace,
          Text(
            onboardingAssets[index].body,
            textAlign: TextAlign.center,
            style: context.textTheme.bodyMedium!.copyWith(
              height: 0,
              color: ExpedierColors.black6,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingImageCards extends StatelessWidget {
  final int index;
  const OnboardingImageCards({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 370.h,
      child: Stack(
        children: [
          Container(
            height: 370.h,
            width: context.screenWidth,
            decoration: BoxDecoration(
              image:
                  onboardingAssets[index].image == null
                      ? null
                      : DecorationImage(
                        image: AssetImage(onboardingAssets[index].image!),

                        fit: BoxFit.cover,
                      ),
            ),
          ),
          Positioned(
            top: 0.h,
            child: Container(
              height: 370.h,
              width: context.screenWidth,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,

                    Color.fromRGBO(255, 255, 255, 0.6),

                    Color.fromRGBO(255, 255, 255, 1),
                  ],
                  stops: [0.5397, 0.8093, 1.0],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
