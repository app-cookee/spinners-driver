import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';

import 'package:the_responsive_builder/the_responsive_builder.dart';

class EmptyPlaceholder extends StatelessWidget {
  const EmptyPlaceholder({super.key, this.message});
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImages.emptyPlaceholderImage, height: 72.dp, width: 72.dp),
        Gap(16.dp),
        Text(
          message ?? 'No Data Found',
          style: AppTypography.sfProRoundedRegular.copyWith(
            fontSize: 14.sp,
            color: AppColors.black1,
          ),
        )
      ],
    );
  }
}
