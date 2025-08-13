import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spinners_laundry/app/theme/app_colors.dart';
import 'package:spinners_laundry/app/theme/app_typography.dart';
import 'package:spinners_laundry/src/presentation/views/profile/account_screen.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class DashedCouponBox extends StatelessWidget {
  const DashedCouponBox({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashRectPainter(
        strokeWidth: 1,
        dashLength: 3,
        gapLength: 2,
        color: const Color(0xFFE2E0FF), // Dash color
        backgroundColor: AppColors.secondary50, // Gap color
        borderRadius: 8.dp,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.dp, vertical: 12.dp),
        decoration: BoxDecoration(
          color: AppColors.secondary50,
          borderRadius: BorderRadius.circular(8.dp),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'SPINAFSAL100',
              style: AppTypography.sfProRoundedSemiBold.copyWith(
                fontSize: 24.sp,
                color: AppColors.secondary950,
              ),
            ),
            Spacer(),
            InkWell(onTap: () => copyText('SPINAFSAL100'),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.dp, vertical: 4.dp),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 8,
                      spreadRadius: 0,
                      color: Colors.black.withValues(alpha: 0.12),
                    ),
                    BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 1,
                      spreadRadius: 0,
                      color: Colors.black.withValues(alpha: 0.04),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.dp),
                ),
                child: Text(
                  'Copy Code',
                  style: AppTypography.sfProRoundedMedium.copyWith(
                    fontSize: 12,
                    letterSpacing: -0.08,
                    color: AppColors.secondary600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void copyText(String text) {
  log("text copied $text");
  Clipboard.setData(ClipboardData(text: text));
}
}