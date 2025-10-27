import 'package:expedier_ui/core/extensions/context_extensions.dart';
import 'package:expedier_ui/core/extensions/string_extensions.dart';
import 'package:expedier_ui/core/extensions/theme_extension.dart';
import 'package:expedier_ui/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:websafe_svg/websafe_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ExpedierColors.white2,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 48.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ExpedierColors.white,
                          image: DecorationImage(
                            image: AssetImage("profile_1".jpg),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      8.0.horizontalSpace,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello, Kingsley",
                            style: context.textTheme.bodyLarge!.copyWith(
                              color: ExpedierColors.black5,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          2.0.verticalSpace,
                          Text(
                            "Ready to manage your\nfinances today?💰",
                            style: context.textTheme.bodySmall!.copyWith(
                              color: ExpedierColors.black6,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 48.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ExpedierColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: ExpedierColors.black.withOpacity(0.03),
                          spreadRadius: 0,
                          blurRadius: 34,
                          offset: const Offset(4, 4),
                        ),
                      ],
                    ),
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(24.r),
                        child: Center(
                          child: WebsafeSvg.asset(
                            "notification".svg,
                            width: 24.w,
                            height: 24.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: Column(
                    children: [
                      27.0.verticalSpace,
                      HomeCardWidget(),
                      21.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Quick Send",
                            style: context.textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            height: 28.h,
                            width: 28.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ExpedierColors.primary.withOpacity(0.08),
                            ),
                            child: WebsafeSvg.asset(
                              "caret_down".svg,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ],
                      ),
                      5.0.verticalSpace,
                      QuickSendWidget(),
                      27.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Accounts",
                            style: context.textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            height: 28.h,
                            width: 28.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ExpedierColors.primary.withOpacity(0.08),
                            ),
                            child: WebsafeSvg.asset(
                              "caret_down".svg,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ],
                      ),
                      5.0.verticalSpace,
                      AccountsWidget(),
                      12.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Recent Transactions",
                            style: context.textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            height: 28.h,
                            width: 28.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ExpedierColors.primary.withOpacity(0.08),
                            ),
                            child: WebsafeSvg.asset(
                              "caret_down".svg,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ],
                      ),
                      5.0.verticalSpace,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountsWidget extends StatelessWidget {
  const AccountsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 103.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder:
            (context, index) => 16.horizontalSpace,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            height: 103.h,
            width: 190.w,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: ExpedierColors.white,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "🇳🇬",
                      style: context.textTheme.headlineMedium,
                    ),
                    Container(
                      height: 28.h,
                      width: 28.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ExpedierColors.primary
                            .withOpacity(0.08),
                      ),
                      child: Icon(
                        Icons.add,
                        color: ExpedierColors.primary,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  "₦ 1,200,457 ",
                  style: context.textTheme.bodyMedium!
                      .copyWith(color: ExpedierColors.black7),
                ),
                2.0.verticalSpace,
                Text(
                  "Nigerian Naira",
                  style: context.textTheme.bodySmall!
                      .copyWith(
                        color: ExpedierColors.black6
                            .withOpacity(0.7),
                        fontSize: 11.sp,
                      ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class QuickSendWidget extends StatelessWidget {
  const QuickSendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WebsafeSvg.asset(
              "add_btn".svg,
              height: 54.h,
              width: 54.w,
              fit: BoxFit.cover,
            ),
            2.0.verticalSpace,
            Text(
              "Add",
              style: context.textTheme.bodySmall!.copyWith(
                color: ExpedierColors.blue7,
                fontSize: 11.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        16.0.horizontalSpace,
        Expanded(
          child: SizedBox(
            height: 75.h,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (context, index) => 16.horizontalSpace,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 55.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 55.w,
                        height: 55.h,
                        //padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: ExpedierColors.white,
                          borderRadius: BorderRadius.circular(27.r),
                          border: Border.all(
                            color: ExpedierColors.primary,
                            width: 1.5,
                          ),
                        ),
                        child: Center(
                          child: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("profile_1".jpg),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      2.0.verticalSpace,
                      Text(
                        "Kevin Ddvdfvd",
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.bodySmall!.copyWith(
                          color: ExpedierColors.blue8,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 50.w,
            right: 50.w,
            child: Container(
              height: 15.h,
              width: context.screenWidth,
              decoration: BoxDecoration(
                color: ExpedierColors.blue6.withOpacity(0.3),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.r),
                  bottomRight: Radius.circular(50.r),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 8.h,
            left: 20.w,
            right: 20.w,
            child: Container(
              height: 15.h,
              width: context.screenWidth,
              decoration: BoxDecoration(
                color: ExpedierColors.blue6.withOpacity(0.4),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24.r),
                  bottomRight: Radius.circular(24.r),
                ),
              ),
            ),
          ),
          Container(
            height: 175.0.h,
            width: context.screenWidth,
            decoration: BoxDecoration(
              color: ExpedierColors.blue6,
              borderRadius: BorderRadius.circular(24.r),
              image: DecorationImage(
                image: AssetImage("account_dash_back".png),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 16.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WebsafeSvg.asset(
                        "logo".svg,
                        fit: BoxFit.cover,
                        width: 90.w,
                        height: 15.h,
                      ),
                      Text(
                        "Personal Tag: John123",
                        style: context.textTheme.bodySmall!.copyWith(
                          color: ExpedierColors.white,
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  12.0.verticalSpace,
                  Text(
                    "Card Balance",
                    style: context.textTheme.bodySmall!.copyWith(
                      color: ExpedierColors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  12.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "₦ 1,500,255 ",
                        style: context.textTheme.headlineMedium!.copyWith(
                          color: ExpedierColors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.visibility_off,
                        size: 30.sp,
                        color: ExpedierColors.white,
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "2984   5633   7859   4141",
                    style: context.textTheme.bodySmall!.copyWith(
                      color: ExpedierColors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "John Kingsley",
                    style: context.textTheme.bodySmall!.copyWith(
                      color: ExpedierColors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
