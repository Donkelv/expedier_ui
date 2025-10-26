import 'package:expedier_ui/core/extensions/context_extensions.dart';
import 'package:expedier_ui/core/extensions/string_extensions.dart';
import 'package:expedier_ui/core/extensions/theme_extension.dart';
import 'package:expedier_ui/core/helper_functions.dart';
import 'package:expedier_ui/core/theme/colors.dart';
import 'package:expedier_ui/core/widgets/button.dart';
import 'package:expedier_ui/features/authentication/screens/confirm_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:websafe_svg/websafe_svg.dart';

class VerificationSuccessScreen extends StatelessWidget {
  const VerificationSuccessScreen({super.key});

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
                "verification_success".svg,
                width: 263.w,
                height: 223.h,
              ),
              80.0.verticalSpace,
              Text(
                "Verification Success",
                textAlign: TextAlign.center,
                style: context.textTheme.titleMedium!.copyWith(
                  color: ExpedierColors.black5,
                  fontWeight: FontWeight.w400,
                ),
              ),
              16.0.verticalSpace,
              Text(
                "Congratulations your account is ready to use, now you can start trading cryptocurrency",
                textAlign: TextAlign.center,
                style: context.textTheme.bodyMedium!.copyWith(
                  color: ExpedierColors.black6,
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp,
                  height: 0,
                ),
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
                        navigateWithFade(context, ConfirmEmailScreen());
                      },
                    ).normal(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
