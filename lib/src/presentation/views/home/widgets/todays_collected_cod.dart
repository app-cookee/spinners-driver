import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class TodaysCollectedCOD extends StatelessWidget {
  const TodaysCollectedCOD({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.dp, right: 16.dp, top: 20.5.dp, bottom: 16.dp),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'COD Collected Today',
                style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 16.sp, color: AppColors.neutral900),
              ),
              Gap(4.dp),
              Text(
                'Last Updated 6:30 PM',
                style: AppTypography.sfProRoundedRegular.copyWith(fontSize: 12.sp, color: AppColors.neutral500),
              ),
            ],
          ),
          const Spacer(),
          Text(
            'AED 220',
            style: AppTypography.sfProRoundedBold.copyWith(fontSize: 32.sp, color: AppColors.neutral900),
          )
        ],
      ),
    );
  }
}
