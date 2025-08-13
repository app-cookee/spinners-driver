import 'package:flutter/material.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings(
      {super.key,
      required this.imagePath,
      required this.text,
      this.onTap,
      this.padding = const EdgeInsets.all(12),
      this.borderColor = AppColors.lightGrey,
      this.borderRadius = 8,
      this.textStyle,
      this.textColor = AppColors.black});

  final String imagePath;
  final String text;
  final VoidCallback? onTap;
  final EdgeInsets padding;
  final Color borderColor;
  final double borderRadius;
  final TextStyle? textStyle;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: padding,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(borderRadius.dp),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
                style: textStyle ??
                    AppTypography.sfProRoundedMedium.copyWith(
                      fontSize: 14.dp,
                      color: textColor,
                    )),
            const Spacer(),
            Image.asset(
              imagePath,
              height: 20,
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
