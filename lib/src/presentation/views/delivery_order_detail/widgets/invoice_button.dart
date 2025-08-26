import 'package:flutter/material.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class InvoiceButton extends StatelessWidget {
  const InvoiceButton({
    super.key,
    required this.imagePath,
    required this.text,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(vertical: 12),
    this.borderColor = AppColors.lightGrey,
    this.borderRadius = 12,
    this.textStyle,
    this.spacing = 8,
  });

  final String imagePath;
  final String text;
  final VoidCallback? onTap;
  final EdgeInsets padding;
  final Color borderColor;
  final double borderRadius;
  final TextStyle? textStyle;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 20,
              width: 20,
            ),
            SizedBox(width: spacing),
            Text(text,
                style: textStyle ??
                    AppTypography.sfProRoundedSemiBold.copyWith(
                      fontSize: 16.dp,
                      color: AppColors.textGrey,
                    )),
          ],
        ),
      ),
    );
  }
}