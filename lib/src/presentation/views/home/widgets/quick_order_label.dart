import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class QuickOrderLabel extends StatelessWidget {
  const QuickOrderLabel({super.key});

  @override
  Widget build(BuildContext context) {
    const gradient = LinearGradient(
      colors: [
        Color(0xFF6A61F3),
        Color(0xFF43D995),
      ],
    );

    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        padding: EdgeInsets.zero,
        borderPadding: EdgeInsets.zero,
        radius: Radius.circular(6.dp),
        dashPattern: const [3, 2],
        gradient: gradient,
        strokeWidth: 1.dp,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.dp, vertical: 6.dp),
        decoration: BoxDecoration(
          color: const Color(0xFFFFF4DE),
          borderRadius: BorderRadius.circular(6.dp),
          gradient: const LinearGradient(
            colors: [Color(0xFFEFEEFF), Color(0xFFEFFFEE)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppImages.zip,
              height: 16.dp,
              width: 16.dp,
            ),
            SizedBox(width: 2.dp),
            // Gradient Text
            Text(
              "Quick Order",
              style: AppTypography.sfProRoundedSemiBold.copyWith(
                fontSize: 10,
                color: AppColors.secondary950,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

