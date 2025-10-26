import 'package:expedier_ui/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIndicator extends StatelessWidget {
  final bool isActive;

  const CustomIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28.w,
      height: 4.0.h,
      decoration: ShapeDecoration(
        color: isActive ? ExpedierColors.primary : ExpedierColors.blue4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.r),
        ),
      ),
    );
  }
}
