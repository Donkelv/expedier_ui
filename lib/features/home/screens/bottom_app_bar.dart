import 'package:expedier_ui/core/extensions/string_extensions.dart';
import 'package:expedier_ui/core/extensions/theme_extension.dart';
import 'package:expedier_ui/core/theme/colors.dart';
import 'package:expedier_ui/features/home/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:websafe_svg/websafe_svg.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({super.key});

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // ✅ so the FAB overlaps the bar smoothly
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: ExpedierColors.primary,
        shape: const CircleBorder(),
        child: WebsafeSvg.asset("transfer".svg),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 4,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: SizedBox(
          height: 70.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(0, "home".svg, "Home"),
              _buildNavItem(1, "card".svg, "Cards"),
              SizedBox(width: 48.w), // space for FAB
              _buildNavItem(2, "referral".svg, "Referral"),
              _buildNavItem(3, "profile".svg, "Profile"),
            ],
          ),
        ),
      ),
      body: screens[selectedIndex],
    );
  }

  Widget _buildNavItem(int index, String icon, String label) {
    final bool isSelected = selectedIndex == index;
    final color = isSelected ? ExpedierColors.primary : ExpedierColors.blue9;

    return InkWell(
      onTap: () => _onItemTapped(index),
      borderRadius: BorderRadius.circular(16.r),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            WebsafeSvg.asset(
              icon,
              width: 24.w,
              height: 24.h,
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
            ),
            SizedBox(height: 4.h),
            Text(
              label,
              style: context.textTheme.bodySmall!.copyWith(
                color: color,
                fontSize: 12.sp,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> screens = [
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
];

