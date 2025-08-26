import 'package:flutter/material.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class InvoiceItemRow extends StatelessWidget {
  final String itemName;
  final String price;
  final double fontSize;

  const InvoiceItemRow({
    super.key,
    required this.itemName,
    required this.price,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          itemName,
          style: AppTypography.sfProRoundedSemiBold.copyWith(
            fontSize: fontSize.dp,
            color: AppColors.neutral950,
          ),
        ),
        Spacer(),
        Text(
          price,
          style: AppTypography.sfProRoundedSemiBold.copyWith(
            fontSize: 12.dp,
            color: AppColors.neutral900,
          ),
        ),
      ],
    );
  }
}
