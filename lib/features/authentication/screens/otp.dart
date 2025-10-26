import 'package:expedier_ui/core/extensions/context_extensions.dart';
import 'package:expedier_ui/core/extensions/theme_extension.dart';
import 'package:expedier_ui/core/helper_functions.dart';
import 'package:expedier_ui/core/theme/colors.dart';
import 'package:expedier_ui/core/widgets/button.dart';
import 'package:expedier_ui/core/widgets/text_fields/otp_input_field.dart';
import 'package:expedier_ui/features/authentication/screens/verification_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
        title: Text(
          "OTP",
          style: context.textTheme.bodyLarge!.copyWith(
            color: ExpedierColors.navyBlue2,
          ),
        ),
      ),
      body: SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              25.0.verticalSpace,
              Text(
                "Enter OTP Code",
                style: context.textTheme.bodyLarge!.copyWith(
                  color: ExpedierColors.black5,
                  fontWeight: FontWeight.w400,
                ),
              ),
              5.verticalSpace,
              Text.rich(
                TextSpan(
                  text: "We have just sent a code to ",
                  style: context.textTheme.bodySmall!.copyWith(
                    color: ExpedierColors.black6,
                    fontWeight: FontWeight.w300,
                    fontSize: 13.sp,
                  ),
                  children: [
                    TextSpan(
                      text: "email@gmail.com",
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
              56.verticalSpace,
              ExpedierOtpInputField(length: 5),
              56.verticalSpace,
              SizedBox(
                height: 50.0.h,
                width: context.screenWidth,
                child:
                    ExpedierButtons(
                      useChildHeight: true,
                      text: "Start Now",
                      context: context,
                      onTap: () {
                        //navigateWithFade(context, VerificationSuccessScreen());
                      },
                    ).normal(),
              ),
              10.0.verticalSpace,
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend in (30)s",
                    style: context.textTheme.bodySmall!.copyWith(
                      color: ExpedierColors.black6,
                      fontWeight: FontWeight.w300,
                      fontSize: 13.sp,
                    ),
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
