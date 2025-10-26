import 'package:expedier_ui/core/extensions/context_extensions.dart';
import 'package:expedier_ui/core/extensions/theme_extension.dart';
import 'package:expedier_ui/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpedierButtons {
  bool? expanded;
  bool useChildHeight;
  BuildContext context;
  String text;
  double borderRadius, textFontSize, letterSpacing;
  Color? color, disabledColor;
  Color textColor;
  FontWeight fontWeight;
  Widget? buttonContent;
  TextStyle? explicitTextStyle;
  EdgeInsetsGeometry? padding;
  Size? size;
  VoidCallback? onTap;
  ButtonStyle? style;
  bool isLoading;

  ExpedierButtons({
    required this.context,
    this.text = 'BUTTON',
    this.borderRadius = 25,
    this.disabledColor = ExpedierColors.grey1,
    this.color,
    this.useChildHeight = true,
    this.textColor = Colors.white,
    this.textFontSize = 18,
    this.letterSpacing = -0.3,
    this.padding,
    this.size,
    this.fontWeight = FontWeight.w700,
    this.explicitTextStyle,
    this.expanded = false,
    this.buttonContent,
    this.style,
    this.isLoading = false,
    required this.onTap,
  }) {
    color ??= Theme.of(context).primaryColor;
  }

  Widget normal() {
    return SizedBox(
      height: useChildHeight ? null : size?.height,
      width: expanded ?? false ? context.screenWidth : size?.width,
      child: OutlinedButton(
        onPressed: onTap,
        style: style ?? context.buttonTheme.style,
        child:
            isLoading
                ? Center(
                  child: CircularProgressIndicator.adaptive(
                    valueColor: AlwaysStoppedAnimation(ExpedierColors.white),
                  ),
                )
                : buttonContent ??
                    Text(
                      text,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style:
                          explicitTextStyle ??
                          TextStyle(
                            color: textColor,
                            fontSize: textFontSize,
                            letterSpacing: letterSpacing,
                            fontWeight: fontWeight,
                          ),
                    ),
      ),
    );
  }

  Widget outline({double borderWidth = 1, Color? borderColor}) {
    return SizedBox(
      height: useChildHeight ? null : size?.height,
      width: expanded ?? false ? context.screenWidth : size?.width,
      child: OutlinedButton(
        onPressed: onTap,
        style: ButtonStyle(
          overlayColor: MaterialStateColor.resolveWith((states) {
            return ExpedierColors.primary.withOpacity(0.1);
          }),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return disabledColor;
            } else {
              return color;
            }
          }),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
            padding ?? const EdgeInsets.symmetric(horizontal: 13, vertical: 16),
          ),
          // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //   RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(borderRadius),
          //   ),
          // ),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(color: borderColor ?? color!, width: borderWidth),
          ),
        ),
        child:
            buttonContent ??
            Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style:
                  explicitTextStyle ??
                  TextStyle(
                    color: textColor,
                    fontSize: textFontSize,
                    letterSpacing: letterSpacing,
                    fontWeight: fontWeight,
                  ),
            ),
      ),
    );
  }
}

class ExpedierBackButton extends StatelessWidget {
  final Color? backColor;
  const ExpedierBackButton({super.key, this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.w),
      height: 50.0.h,
      width: 65.h,
      decoration: BoxDecoration(
        color: backColor ?? ExpedierColors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: ExpedierColors.primary),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(10.r),
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Icon(
              Icons.arrow_back,
              color: ExpedierColors.primary,
              size: 24.w,
            ),
          ),
        ),
      ),
    );
  }
}
