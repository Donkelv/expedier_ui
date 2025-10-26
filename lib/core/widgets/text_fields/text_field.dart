import 'package:expedier_ui/core/extensions/theme_extension.dart';
import 'package:expedier_ui/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpedierInputField extends StatefulWidget {
  final TextEditingController? controller;
  final bool obscureText;
  final bool passwordField;
  final String? hintText;
  final String? prefix;
  final String? initialValue;
  final FocusNode? focusNode;
  final TextInputType? keyBoardType;
  final bool roundBorder;
  final bool contentPadding;
  final bool invisibleBorder;
  final String? title;
  final TextStyle? titleStyle;
  final TextStyle? style;
  final TextStyle? errorStyle;
  final TextInputAction? textInputAction;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final bool? readOnly;
  final bool? autoCorrect;
  final List<TextInputFormatter>? textInputFormatter;
  final Iterable<String>? autofillHints;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onUnfocus;
  final FormFieldValidator<String?>? validateFunction;
  final String countryCode;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final Color? borderColor;
  final Color disabledBorderColor,
      errorBorderColor,
      disabledFilledColor,
      enabledBorderColor;
  final Color? filledColor;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final bool autoFocus;
  final BorderRadius? borderRadiusDecoration;

  const ExpedierInputField({
    super.key,
    this.focusNode,
    this.maxLines = 1,
    this.minLines = 1,
    this.onFieldSubmitted,
    this.autoCorrect = false,
    this.maxLength,
    this.initialValue,
    this.autofillHints,
    this.suffixIcon,
    this.onChanged,
    this.contentPadding = false,
    this.passwordField = false,
    this.style,
    this.countryCode = 'NG',
    this.prefixIcon,
    this.onUnfocus,
    this.titleStyle,
    this.textInputFormatter,
    this.onTap,
    this.textInputAction,
    this.readOnly = false,
    this.roundBorder = false,
    this.prefix,
    this.invisibleBorder = false,
    this.hintText,
    this.title,
    this.errorStyle,
    this.keyBoardType,
    this.controller,
    this.borderColor,
    this.enabledBorderColor = ExpedierColors.pink1,
    this.disabledBorderColor = ExpedierColors.grey3,
    this.filledColor = Colors.transparent,
    this.errorBorderColor = ExpedierColors.red1,
    this.disabledFilledColor = Colors.transparent,
    this.borderRadius,
    this.validateFunction,
    this.obscureText = false,
    this.padding,
    this.autoFocus = false,
    this.borderRadiusDecoration,
  });

  @override
  State<ExpedierInputField> createState() => _ExpedierInputFieldState();
}

class _ExpedierInputFieldState extends State<ExpedierInputField> {
  bool _obscure = false;

  @override
  void initState() {
    _obscure = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onTap,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      initialValue: widget.initialValue,
      onChanged: widget.onChanged,
      autofillHints: widget.autofillHints,
      style:
          widget.style ??
          TextStyle(
            color: ExpedierColors.white,
            fontSize: 16.0.sp,
            fontFamily: 'TT Norms',
            fontWeight: FontWeight.w400,
          ),
      autofocus: widget.autoFocus,
      textInputAction: widget.textInputAction,
      autocorrect: widget.autoCorrect ?? false,
      textAlignVertical: TextAlignVertical.center,
      controller: widget.controller,
      keyboardType: widget.keyBoardType,
      obscureText: _obscure,
      obscuringCharacter: "*",
      focusNode: widget.focusNode,
      inputFormatters: widget.textInputFormatter,
      readOnly: widget.readOnly!,
      validator: widget.validateFunction,
      maxLength: widget.maxLength,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        errorStyle:
            widget.errorStyle ??
            TextStyle(
              color: ExpedierColors.cadmiumRed,
              fontWeight: FontWeight.w400,
              fontSize: 16.0.sp,
            ),
        fillColor:
            widget.filledColor ?? Colors.white.withOpacity(0.15000000596046448),
        filled: true,
        prefixIcon: widget.prefixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color:
                widget.borderColor ??
                ExpedierColors.white.withOpacity(0.15000000596046448),
            width: 1.5,
          ),
          borderRadius:
              widget.borderRadiusDecoration ??
              BorderRadius.all(Radius.circular(widget.borderRadius ?? 8)),
        ),
        hintStyle: context.textTheme.bodySmall!.copyWith(
          color: ExpedierColors.black6,
          fontWeight: FontWeight.w400,
          fontSize: 13.0.sp,
          height: 0.0,
        ),
        suffixIcon:
            !widget.passwordField
                ? widget.suffixIcon
                : IconButton(
                  onPressed: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                  icon: Icon(
                    _obscure ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
        prefixText: widget.prefix,
        prefixStyle: TextStyle(
          color: ExpedierColors.vampireBlack400,
          fontSize: 16.0.sp,
          fontFamily: 'TT Norms',
          fontWeight: FontWeight.w400,
        ),
        counter: const Offstage(),
        contentPadding:
            widget.padding ??
            const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
        hintText: widget.hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.enabledBorderColor, width: 1.5),
          borderRadius:
              widget.borderRadiusDecoration ??
              BorderRadius.all(Radius.circular(widget.borderRadius ?? 8)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color:
                widget.borderColor ??
                ExpedierColors.white.withOpacity(0.15000000596046448),
            width: 1.5,
          ),
          borderRadius:
              widget.borderRadiusDecoration ??
              BorderRadius.all(Radius.circular(widget.borderRadius ?? 8)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.disabledBorderColor, width: 1.5),
          borderRadius:
              widget.borderRadiusDecoration ??
              BorderRadius.all(Radius.circular(widget.borderRadius ?? 8)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.errorBorderColor, width: 1.5),
          borderRadius:
              widget.borderRadiusDecoration ??
              BorderRadius.all(Radius.circular(widget.borderRadius ?? 8)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.errorBorderColor, width: 1.5),
          borderRadius:
              widget.borderRadiusDecoration ??
              BorderRadius.all(Radius.circular(widget.borderRadius ?? 8)),
        ),
      ),
    );
  }
}
