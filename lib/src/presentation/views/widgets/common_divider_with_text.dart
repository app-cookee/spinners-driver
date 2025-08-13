import 'package:flutter/material.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class CommonDividerWithText extends StatelessWidget {
  const CommonDividerWithText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: Container(height: 1.dp,color: AppColors.lightGrey,)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.dp),
            child: Text(
              text,
              style: AppTypography.sfProRoundedBold.copyWith(
                      fontSize: 12.sp,
                      color: AppColors.countrycodeColor,
                    ),
            ),
          ),
          Expanded(child: Container(height: 1.dp,color: AppColors.lightGrey,)),
        ],
      ),
    );
  }
}