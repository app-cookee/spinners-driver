import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/profile/widgets/account_settings.dart';
import 'package:spinners_driver/src/presentation/views/profile/widgets/profile_user_detail.dart';

import 'package:the_responsive_builder/the_responsive_builder.dart';


class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue1,
      body: Stack(children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 30.h,
            width: 100.w,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  AppColors.primaryColor.withValues(alpha: 0.2),
                  AppColors.gradientbg.withValues(alpha: 0)
                ])),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Image.asset(
            AppImages.bubbles,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          top: 8.h.dp,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 16.dp),
                  child:const ProfileUserDetail(
                    avatar: 'A',
                    name: 'Ahmed',
                    phone: '+968 9123 4567',
                  ),
                ),
                Gap(21.dp),
                // Container(
                //   decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //           begin: Alignment.topCenter,
                //           end: Alignment.bottomCenter,
                //           colors: [
                //         AppColors.primaryColor.withValues(alpha: 0.1),
                //         AppColors.primaryColor.withValues(alpha: 0)
                //       ])),
                //   width: 100.w,
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //      const DashedDivider(),
                //       Padding(
                //         padding: EdgeInsets.all(16.dp),
                //         child: Row(
                //           children: [
                //             Image.asset(
                //               AppImages.wallet,
                //               height: 24.dp,
                //               width: 24.dp,
                //             ),
                //             Gap(4.dp),
                //             Text(
                //               "Wallet Balance",
                //               style: AppTypography.sfProRoundedMedium.copyWith(
                //                 color: AppColors.textGrey,
                //                 fontSize: 14.sp,
                //               ),
                //             ),
                //             const Spacer(),
                //             Text(
                //               "AED 120",
                //               style:
                //                   AppTypography.sfProRoundedSemiBold.copyWith(
                //                 color: AppColors.primaryColor,
                //                 fontSize: 24.sp,
                //               ),
                //             )
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
            
                // Gap(20.dp),
                Padding(
                  padding: EdgeInsets.only(
                      top: 20.dp, left: 16.dp, right: 16.dp, bottom: 24.dp),
                  child: Column(
                    spacing: 6.dp,
                    children: const [
                      // AccountSettings(
                      //     imagePath: AppImages.arrowRight,
                      //     text: "Personal Details"),
                 
                      AccountSettings(
                          imagePath: AppImages.arrowRight,
                          text: "Terms of Service"),
                    
                      AccountSettings(
                        imagePath: AppImages.arrowRight,
                        text: "Log Out",
                        textColor: AppColors.redText,
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsetsGeometry.only(left: 16.dp,top: 50.h),
                  child: Text(
                    "App Version 1.0.0",
                    style: AppTypography.sfProRoundedMedium.copyWith(
                        color: AppColors.versionColor, fontSize: 9.dp),
                  ),
                ),
                Gap(14.h)
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class DashRectPainter extends CustomPainter {
  final double strokeWidth;
  final Color color;
  final Color backgroundColor;
  final double dashLength;
  final double gapLength;
  final double borderRadius;

  DashRectPainter({
    required this.strokeWidth,
    required this.color,
    required this.backgroundColor,
    this.dashLength = 5.0,
    this.gapLength = 3.0,
    this.borderRadius = 12.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint dashPaint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final Paint gapPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final Path outerPath = Path()
      ..addRRect(RRect.fromRectAndRadius(
        Offset.zero & size,
        Radius.circular(borderRadius),
      ));

    final PathMetrics pathMetrics = outerPath.computeMetrics();
    for (final metric in pathMetrics) {
      double distance = 0.0;
      while (distance < metric.length) {
        final Path dashPath =
            metric.extractPath(distance, distance + dashLength);
        canvas.drawPath(dashPath, dashPaint);
        distance += dashLength;

        final Path gapPath = metric.extractPath(distance, distance + gapLength);
        canvas.drawPath(gapPath, gapPaint);
        distance += gapLength;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
