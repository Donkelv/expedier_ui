import 'package:expedier_ui/core/theme/button_theme.dart';
import 'package:expedier_ui/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'colors.dart';

class TimeSeriesTheme {
  static ThemeData getLightThemeData(BuildContext context) {
    return _lightThemeData(context);
  }

  static ThemeData getDarkThemeData(BuildContext context) {
    return _darkThemeData(context);
  }

  static ThemeData _lightThemeData(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: const Color(0xFFF9FAFB),
      canvasColor: Colors.white,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFF1E1E1E)),
        titleTextStyle: TextStyle(
          color: Color(0xFF1E1E1E),
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
      textTheme: AppTextTheme.lightTextTheme,
      colorScheme: const ColorScheme.light(
        primary: ExpedierColors.primary, // primary
        onPrimary: Colors.white,
        secondary: Color(0xFF607D8B),
        surface: Colors.white,
        onSurface: Color(0xFF1E1E1E),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: const Color(0xFFF2F3F5),
        selectedColor: ExpedierColors.primary,
        labelStyle: const TextStyle(color: Color(0xFF1E1E1E)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ExpedierColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: ExpedierColors.primary),
          foregroundColor: ExpedierColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      dialogBackgroundColor: Colors.white,
      dividerColor: const Color(0xFFDDDDDD),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }

  static ThemeData _darkThemeData(BuildContext context) {
    return ThemeData(
      textTheme: AppTextTheme.darkTextTheme,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: ExpedierColors.vampireBlack,
        iconTheme: IconThemeData(color: ExpedierColors.vampireBlack),
      ),
      chipTheme: Theme.of(context).chipTheme.copyWith(
        labelStyle: Theme.of(
          context,
        ).textTheme.bodyLarge?.copyWith(color: ExpedierColors.vampireBlack400),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        selectedColor: ExpedierColors.primary,
        backgroundColor: ExpedierColors.vampireBlack500,
      ),
      dialogBackgroundColor: ExpedierColors.vampireBlack,
      canvasColor: ExpedierColors.grey1,
      elevatedButtonTheme: AppButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: AppButtonTheme.lightOutlinedButtonTheme,
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.disabled)) {
            return ExpedierColors.grey5.withOpacity(.5);
          }
          if (states.contains(WidgetState.selected)) {
            return ExpedierColors.primary;
          }
          return ExpedierColors.grey3;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        side: WidgetStateBorderSide.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return BorderSide(
              width: 1.0,
              color: ExpedierColors.grey5.withOpacity(.5),
            );
          }
          if (states.contains(WidgetState.selected)) {
            return BorderSide(width: 1.0, color: ExpedierColors.grey3);
          }
          return BorderSide(width: 1.0, color: ExpedierColors.grey3);
        }),
        fillColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.disabled)) {
            return null;
          }
          if (states.contains(WidgetState.selected)) {
            return ExpedierColors.primary;
          }
          return null;
        }),
      ),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: WidgetStateProperty.all(ExpedierColors.vampireBlack300),
        trackColor: WidgetStateProperty.all(ExpedierColors.vampireBlack300),
        trackBorderColor: WidgetStateProperty.all(
          ExpedierColors.vampireBlack300,
        ),
        thickness: WidgetStateProperty.all(5),
        thumbVisibility: WidgetStateProperty.all(true),
        trackVisibility: WidgetStateProperty.all(true),
      ),
      dropdownMenuTheme: Theme.of(context).dropdownMenuTheme.copyWith(
        menuStyle: MenuStyle(
          padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: 16.w),
          ),
          shape: WidgetStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.pressed)) {
              return ExpedierColors.grey1;
            } else {
              return ExpedierColors.grey1;
            }
          }),
        ),
      ),
      bottomSheetTheme: Theme.of(context).bottomSheetTheme.copyWith(
        backgroundColor: ExpedierColors.vampireBlack,
        modalElevation: 0.0,
        showDragHandle: true,
      ),
      scaffoldBackgroundColor: ExpedierColors.vampireBlack,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
      platform: TargetPlatform.iOS,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }
}
