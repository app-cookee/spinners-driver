import 'package:flutter/material.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class CommonTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool enabled;
  final int? maxLines;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColor;
  final Color? borderColor;
  final double? borderRadius;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
 final bool? readOnly;
  final String? initialValue;

  const CommonTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,
    this.keyboardType,
    this.obscureText = false,
    this.enabled = true,
    this.maxLines = 1,
    this.contentPadding,
    this.fillColor,
    this.borderColor,
    this.borderRadius,
    this.hintStyle,
    this.textStyle,
    this.readOnly,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(constraints: BoxConstraints(maxHeight:48.dp ),
      decoration: BoxDecoration(
        color: const Color(0xffD7E5EB),
        borderRadius: BorderRadius.circular(borderRadius??8.dp),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.dp,right: 1.dp),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius??8.dp),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: TextFormField(
            initialValue: initialValue,
            controller: controller,
            onChanged: onChanged,
            onFieldSubmitted: onSubmitted,
            keyboardType: keyboardType,
            obscureText: obscureText,
            enabled: enabled,
            maxLines: maxLines,
            readOnly: readOnly ?? false,
            spellCheckConfiguration: const SpellCheckConfiguration.disabled(), 
            style: textStyle ?? AppTypography.sfProRoundedMedium.copyWith(
                fontSize: 12.sp,
                color: AppColors.neutral500,
              ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: hintStyle ?? AppTypography.sfProRoundedMedium.copyWith(
                fontSize: 12.sp,
                color: AppColors.neutral500,
              ),
              prefixIcon: prefixIcon ,
              suffixIcon: suffixIcon,
              filled: true,
              fillColor: fillColor ?? Colors.white,
              contentPadding: contentPadding ?? EdgeInsets.symmetric(
                horizontal: 12.dp,
                vertical: 8.dp,
              ),
              
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius??8.dp),
                borderSide: BorderSide(
                  color: borderColor ?? AppColors.loginFieldBorderColor,
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius??8.dp),
                borderSide: BorderSide(
                  color: borderColor ?? AppColors.loginFieldBorderColor,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius??8.dp),
                borderSide: BorderSide(
                  color: borderColor ?? Colors.blue,
                  width: 1,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius??8.dp),
                borderSide: BorderSide(
                  color: AppColors.loginFieldBorderColor,
                  width: 1.dp,
                ),
              ),
              
            ),
          ),
        ),
      ),
    );
  }
}