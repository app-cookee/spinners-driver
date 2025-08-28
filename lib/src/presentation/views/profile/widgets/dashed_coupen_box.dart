import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/auth_bloc/auth_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/profile/account_screen.dart';

import 'package:the_responsive_builder/the_responsive_builder.dart';

class DashedCouponBox extends StatelessWidget {
  const DashedCouponBox({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
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
                Image.asset(
                  AppImages.storeIcon,
                  height: 24.dp,
                  width: 24.dp,
                ),
                Gap(12.dp),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.appUser?.storeName ?? '',
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                        fontSize: 24.sp,
                        color: AppColors.secondary950,
                      ),
                    ),
                    Text(
                      state.appUser?.storeAddress ?? '',
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                        fontSize: 10.sp,
                        color: AppColors.secondary950,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
