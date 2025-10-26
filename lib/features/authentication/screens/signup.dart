import 'package:expedier_ui/core/extensions/context_extensions.dart';
import 'package:expedier_ui/core/extensions/string_extensions.dart';
import 'package:expedier_ui/core/extensions/theme_extension.dart';
import 'package:expedier_ui/core/helper_functions.dart';
import 'package:expedier_ui/core/theme/colors.dart';
import 'package:expedier_ui/core/widgets/button.dart';
import 'package:expedier_ui/core/widgets/text_fields/text_field.dart';
import 'package:expedier_ui/features/authentication/screens/selfie_verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 230.h,
              width: context.screenWidth,
              decoration: BoxDecoration(
                color: ExpedierColors.primary,
                image: DecorationImage(
                  image: AssetImage("signup_background".png),
                  fit: BoxFit.contain,
                ),
              ),
              child: Center(child: WebsafeSvg.asset("logo".svg)),
            ),
            44.0.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your financial journey begins here.\nReady to take off?",
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  38.0.verticalSpace,
                  Text(
                    "Email",
                    style: context.textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  12.verticalSpace,
                  ExpedierInputField(
                    hintText: "email@gmail.com",

                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.email],
                    keyBoardType: TextInputType.emailAddress,
                    padding: EdgeInsets.symmetric(
                      vertical: 20.h,
                      horizontal: 16.w,
                    ),
                    //validateFunction: AuthFormValidations.validateRequiredField,
                    filledColor: ExpedierColors.primary.withOpacity(0.03),
                    borderColor: ExpedierColors.primary,
                    borderRadius: 15.r,
                    style: context.textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  44.0.verticalSpace,
                  SizedBox(
                    height: 50.0.h,
                    width: context.screenWidth,
                    child:
                        ExpedierButtons(
                          useChildHeight: true,
                          text: "Continue",
                          context: context,
                          onTap: () {
                            navigateWithFade(
                              context,
                              SelfieVerificationScreen(),
                            );
                          },
                        ).normal(),
                  ),
                  10.0.verticalSpace,
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                          text: "Already have an account?",
                          style: context.textTheme.bodySmall!.copyWith(
                            color: ExpedierColors.black6,
                            fontWeight: FontWeight.w300,
                            fontSize: 13.sp,
                          ),
                          children: [
                            TextSpan(
                              text: " Get Started",
                              style: context.textTheme.bodySmall!.copyWith(
                                color: ExpedierColors.primary,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.sp,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
