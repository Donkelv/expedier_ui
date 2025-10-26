import 'package:expedier_ui/core/constants/onboarding.dart';
import 'package:expedier_ui/core/extensions/theme_extension.dart';
import 'package:expedier_ui/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedCurrencyCards extends StatefulWidget {
  const AnimatedCurrencyCards({Key? key}) : super(key: key);

  @override
  State<AnimatedCurrencyCards> createState() => _AnimatedCurrencyCardsState();
}

class _AnimatedCurrencyCardsState extends State<AnimatedCurrencyCards>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutCubic,
    );

    Future.delayed(const Duration(milliseconds: 400), () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    if (mounted) {
      _controller.dispose();
    }

    super.dispose();
  }

  Widget _buildCurrencyCard({
    required String flag,
    required String currency,
    required double sellRate,
    required double buyRate,
    required int index,
  }) {
    // Each card gets a unique tilt and Y offset
    final rotation = (index - 1) * 0.20 * _animation.value; // +/- 0.2 radians
    final translationY = (index - 1) * 30.0 * _animation.value;

    return Transform.translate(
      offset: Offset(0, translationY),
      child: Transform.rotate(
        angle: rotation,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 12.h, horizontal: 17.w),
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 17.h),
          height: 70.h,
          decoration: BoxDecoration(
            color: ExpedierColors.white1,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Color(0xFFE3DEDE), width: 1.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.10),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(flag, style: context.textTheme.titleLarge),
                  14.horizontalSpace,

                  Text(
                    currency,
                    style: context.textTheme.bodySmall!.copyWith(
                      color: ExpedierColors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              40.0.horizontalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        sellRate.toStringAsFixed(2),
                        style: context.textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      4.0.horizontalSpace,
                      const Icon(
                        Icons.arrow_downward,
                        size: 14,
                        color: ExpedierColors.red6,
                      ),
                    ],
                  ),
                  60.0.horizontalSpace,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        sellRate.toStringAsFixed(2),
                        style: context.textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      4.0.horizontalSpace,
                      Icon(
                        Icons.arrow_upward,
                        size: 14,
                        color: ExpedierColors.green5,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, _) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              50.0.verticalSpace,
              for (int i = 0; i < currencyList.length; i++)
                _buildCurrencyCard(
                  flag: currencyList[i].flag,
                  currency: currencyList[i].code,
                  sellRate: currencyList[i].sell,
                  buyRate: currencyList[i].buy,
                  index: i,
                ),
            ],
          );
        },
      ),
    );
  }
}
