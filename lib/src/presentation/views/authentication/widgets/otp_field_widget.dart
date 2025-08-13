import 'package:flutter/material.dart';
import 'package:spinners_laundry/app/theme/app_colors.dart';
import 'package:spinners_laundry/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class OtpFieldWidget extends StatelessWidget {
  final String otpValue;
  final VoidCallback? onTap;

  const OtpFieldWidget({
    super.key,
    required this.otpValue,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(6, (index) {
          final char = index < otpValue.length ? otpValue[index] : '';
          return Container(
            width: 80.w / 6,
            height: 75.w / 6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.dp),
              border: Border.all(
                color: AppColors.loginFieldBorderColor,
                width: 1.5.dp,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.loginFieldBorderColor,
                  offset: Offset(2.dp, 2.dp),
                  blurRadius: 0,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Center(
              child: Text(
                char,
                style: AppTypography.sfProRoundedMedium.copyWith(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
