import 'package:expedier_ui/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppButtonTheme {
  AppButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      disabledBackgroundColor: ExpedierColors.white.withOpacity(0.3),
      disabledForegroundColor: ExpedierColors.grey3,
      backgroundColor: ExpedierColors.primary,
      foregroundColor: ExpedierColors.white,
      elevation: 10,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      //shadowColor: const Color.fromRGBO(6, 47, 63, 0.30),
      textStyle: const TextStyle().copyWith(
        fontFamily: 'TT-Norms',
        fontSize: 18.sp,
        color: ExpedierColors.white,
        fontWeight: FontWeight.w700,
        fontVariations: [const FontVariation('wght', 700)],
      ),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100.r)),
        side: const BorderSide(color: Colors.transparent),
      ),
    ),
  );
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      disabledBackgroundColor: ExpedierColors.white.withOpacity(0.3),
      disabledForegroundColor: ExpedierColors.primary.withOpacity(0.3),
      backgroundColor: ExpedierColors.primary,
      foregroundColor: ExpedierColors.white,
      elevation: 10,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      shadowColor: const Color.fromRGBO(6, 47, 63, 0.30),
      textStyle: const TextStyle().copyWith(
        fontFamily: 'TT-Norms',
        fontSize: 18.sp,
        color: ExpedierColors.white,
        fontWeight: FontWeight.w700,
        fontVariations: [const FontVariation('wght', 700)],
      ),
      side: BorderSide(
        color: ExpedierColors.white.withOpacity(0.20000000298023224),
        width: 1.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100.r)),
        side: BorderSide(
          color: ExpedierColors.white.withOpacity(0.20000000298023224),
          width: 1.0,
        ),
      ),
    ),
  );
}
