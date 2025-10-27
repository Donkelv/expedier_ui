

import 'dart:async';
import 'dart:io';
import 'package:expedier_ui/core/extensions/string_extensions.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:expedier_ui/core/extensions/theme_extension.dart';
import 'package:expedier_ui/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ExpedierOtpInputField extends StatelessWidget {
  const ExpedierOtpInputField({
    super.key,
     this.errorController,
     this.otpTextEditingController,
    this.hintCharacter = "",
    this.obscureText = false,
    this.validator,
    this.length = 6,
  });
  final String? hintCharacter;
  final int length;
  final StreamController<ErrorAnimationType>? errorController;
  final TextEditingController? otpTextEditingController;
  final bool obscureText;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      hintCharacter: hintCharacter,
      hintStyle: context.textTheme.headlineSmall,

      length: length,
      obscureText: obscureText,
      autovalidateMode: AutovalidateMode.disabled,
      cursorColor: ExpedierColors.vampireBlack,
      animationType: AnimationType.fade,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],
      pinTheme: PinTheme(
        selectedColor: ExpedierColors.primary,
        selectedFillColor: ExpedierColors.primary.withOpacity(
          0.03,
        ),
        activeColor: ExpedierColors.primary,
        shape: PinCodeFieldShape.box,
        
        borderWidth: 2,

        borderRadius: BorderRadius.circular(15.r),
        fieldHeight: 72.h,
        fieldWidth: 54.w,
        disabledColor: ExpedierColors.primary,
        activeFillColor: ExpedierColors.primary.withOpacity(
          0.03,
        ),
        
        errorBorderColor: ExpedierColors.red1,
        inactiveFillColor: ExpedierColors.primary.withOpacity(
          0.10000000149011612,
        ),
        inactiveColor: ExpedierColors.grey4,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: ExpedierColors.white,
      enableActiveFill: true,
      dialogConfig: DialogConfig(
        dialogContent: "Do you want to paste this code?",
        platform: Platform.isIOS ? PinCodePlatform.iOS : PinCodePlatform.other,
      ),
      errorAnimationController: errorController,
      controller: otpTextEditingController,
      onChanged: (value) {},
      validator: validator,
      beforeTextPaste: (text) {
        debugPrint("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return text?.isNumeric ?? false;
      },
      appContext: context,
    );
  }
}
