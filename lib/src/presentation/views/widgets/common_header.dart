import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class CommonHeader extends StatelessWidget {
  const CommonHeader({super.key, required this.label,  this.bottomPadding, this.isIconNeeded,});
  final String label;
    final double? bottomPadding;
    final bool? isIconNeeded;
  

  @override
  Widget build(BuildContext context) {
         return Container(
      padding:
          EdgeInsets.only(top: 7.h, left: 16.dp, right: 16.dp, bottom: bottomPadding??8.dp),
      width: 100.w,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if(isIconNeeded ?? true)
          ...[
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Image.asset(
              AppImages.arrow,
              height: 20.dp,
              width: 20.dp,
            ),
          ),
          Gap(6.dp)],
          Text(
            label,
            style: AppTypography.sfProRoundedSemiBold.copyWith(
              fontSize: 16.dp,
              color: AppColors.neutral950,
            ),
          ),
        ],
      ),
    );
  }
}