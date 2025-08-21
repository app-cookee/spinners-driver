import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class OrderCardButton extends StatelessWidget {
  final double widthFactor; // width relative to screen (ex: 201/376)
  final String? text;       // optional text
  final String icon;        // asset path
  final Color borderColor;
  final Color? backgroundColor;
  final Color textColor;
  final VoidCallback onTap;

  const OrderCardButton({
    super.key,
    required this.widthFactor,
    required this.icon,
    required this.borderColor,
    required this.textColor,
    required this.onTap,
    this.backgroundColor,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenWidth * widthFactor,
        padding: EdgeInsets.symmetric(vertical: 8.dp),
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.transparent,
          borderRadius: BorderRadius.circular(8.dp),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, height: 20.dp, width: 20.dp, fit: BoxFit.cover),
            if (text != null) ...[
              Gap(4.dp),
              Text(
                text!,
                style: AppTypography.sfProRoundedSemiBold.copyWith(
                  fontSize: 14.sp,
                  color: textColor,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
