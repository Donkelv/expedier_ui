import 'package:expedier_ui/core/extensions/context_extensions.dart';
import 'package:expedier_ui/core/extensions/string_extensions.dart';
import 'package:expedier_ui/core/extensions/theme_extension.dart';
import 'package:expedier_ui/core/helper_functions.dart';
import 'package:expedier_ui/core/theme/colors.dart';
import 'package:expedier_ui/core/widgets/button.dart';
import 'package:expedier_ui/features/authentication/screens/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ConfirmEmailScreen extends StatelessWidget {
  const ConfirmEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ExpedierColors.white,
      appBar: AppBar(
        leading: ExpedierBackButton(),
        backgroundColor: ExpedierColors.white,
        elevation: 0.0,
        leadingWidth: 65.w,
        centerTitle: true,
      ),
      body: SizedBox(
        width: context.screenWidth,
        height: context.screenHeight,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              60.0.verticalSpace,
              WebsafeSvg.asset(
                "email_confirmation".svg,
                width: context.screenWidth,
                height: 346.h,
              ),
              35.0.verticalSpace,
              Text(
                "Confirm your email",
                textAlign: TextAlign.center,
                style: context.textTheme.titleMedium!.copyWith(
                  color: ExpedierColors.black5,
                  fontWeight: FontWeight.w400,
                ),
              ),
              16.0.verticalSpace,
              Text.rich(
                TextSpan(
                  text: "We have just sent an email to ",
                  style: context.textTheme.bodySmall!.copyWith(
                    color: ExpedierColors.black6,
                    fontWeight: FontWeight.w300,
                    fontSize: 13.sp,
                  ),
                  children: [
                    TextSpan(
                      text: "\nemail@gmail.com",
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

              60.0.verticalSpace,
              SizedBox(
                height: 50.0.h,
                width: context.screenWidth,
                child:
                    ExpedierButtons(
                      useChildHeight: true,
                      text: "Start Now",
                      context: context,
                      onTap: () {
                        navigateWithFade(context, OtpScreen());
                      },
                    ).normal(),
              ),
              10.0.verticalSpace,
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text.rich(
                    TextSpan(
                      text: "I ",
                      style: context.textTheme.bodySmall!.copyWith(
                        color: ExpedierColors.black6,
                        fontWeight: FontWeight.w300,
                        fontSize: 13.sp,
                      ),
                      children: [
                        TextSpan(
                          text: "didn't receieve",
                          style: context.textTheme.bodySmall!.copyWith(
                            color: ExpedierColors.primary,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                          ),
                        ),
                        TextSpan(
                          text: " my email",
                          style: context.textTheme.bodySmall!.copyWith(
                            color: ExpedierColors.black6,
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
      ),
    );
  }
}
