import 'package:expedier_ui/core/extensions/string_extensions.dart';
import 'package:expedier_ui/core/theme/time_series_theme.dart';
import 'package:expedier_ui/features/authentication/screens/onboarding.dart';
import 'package:expedier_ui/features/authentication/widgets/currency_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
 

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: TimeSeriesTheme.getLightThemeData(context),
          home: OnboardingScreen(),
        );
      },
    );
  }
}
