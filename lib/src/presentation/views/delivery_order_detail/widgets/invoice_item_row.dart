import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class InvoiceItemRow extends StatelessWidget {
  final String itemName;
  final String itemDetails;
  final String price;
  final double fontSize;

  const InvoiceItemRow({
    super.key,
    required this.itemName,
    required this.itemDetails,
    required this.price,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsetsGeometry.symmetric(horizontal: 16.dp),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemName,
                style: AppTypography.sfProRoundedSemiBold.copyWith(
                  fontSize: fontSize.dp,
                  color: AppColors.neutral950,
                ),
              ),
              Gap(2.dp),
              Text(
                itemDetails,
                style: AppTypography.sfProRoundedRegular.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.neutral500,
                ),
              ),
            ],
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
      ),
    );
  }
}