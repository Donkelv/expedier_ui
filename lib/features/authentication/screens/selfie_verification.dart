import 'package:expedier_ui/core/extensions/context_extensions.dart';
import 'package:expedier_ui/core/extensions/string_extensions.dart';
import 'package:expedier_ui/core/extensions/theme_extension.dart';
import 'package:expedier_ui/core/helper_functions.dart';
import 'package:expedier_ui/core/theme/colors.dart';
import 'package:expedier_ui/core/widgets/button.dart';
import 'package:expedier_ui/features/authentication/screens/verification_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SelfieVerificationScreen extends StatelessWidget {
  const SelfieVerificationScreen({super.key});

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
          "Selfie Verification",
          style: context.textTheme.bodyLarge!.copyWith(
            color: ExpedierColors.navyBlue2,
          ),
        ),
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
              32.0.verticalSpace,
              Text(
                "We will complete the photo in your document with your selfie to confirm your identity",
                textAlign: TextAlign.center,
                style: context.textTheme.bodySmall!.copyWith(
                  color: ExpedierColors.black6,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              44.0.verticalSpace,
              SizedBox(
                width: 215.w,
                height: 295.h,
                child: Stack(
                  children: [
                    WebsafeSvg.asset(
                      "face_id_border".svg,
                      fit: BoxFit.contain,
                      width: 215.w,
                      height: 295.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: WebsafeSvg.asset(
                        "face_id_big".svg,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              44.verticalSpace,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
                decoration: BoxDecoration(
                  color: ExpedierColors.otline,
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    WebsafeSvg.asset("lock".svg),
                    8.0.horizontalSpace,
                    Flexible(
                      child: Text(
                        "The data you share will be encrypted, stored securely, and only used to verify your identity",
                        softWrap: true,
                        style: context.textTheme.bodySmall!.copyWith(
                          color: ExpedierColors.black6,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              16.verticalSpace,
              SizedBox(
                height: 50.0.h,
                width: context.screenWidth,
                child:
                    ExpedierButtons(
                      useChildHeight: true,
                      text: "Open Camera",
                      context: context,
                      onTap: () {
                        navigateWithFade(context, VerificationSuccessScreen());
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
