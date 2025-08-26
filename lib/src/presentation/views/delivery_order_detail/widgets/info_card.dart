//  Reusable Info Card Component
import 'package:flutter/material.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class InfoCard extends StatelessWidget {
  final String label;
  final String value;
  final Color? backgroundColor;
  final Color? valueColor;
  final Gradient? gradient;

  const InfoCard({
    super.key,
    required this.label,
    required this.value,
    this.backgroundColor,
    this.valueColor,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.neutral50,
        gradient: gradient,
        borderRadius: BorderRadius.circular(8.dp),
      ),
      padding: EdgeInsets.all(12.dp),
      child: Row(
        children: [
          Text(
            label,
            style: AppTypography.sfProRoundedMedium.copyWith(
              fontSize: 12.dp,
              color: AppColors.textGrey,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: AppTypography.sfProRoundedMedium.copyWith(
              fontSize: 12.dp,
              color: valueColor ?? AppColors.neutral950,
            ),
          )
        ],
      ),
    );
  }
}