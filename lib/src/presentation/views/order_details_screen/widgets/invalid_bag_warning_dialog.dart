import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';


class InvalidBagWarningDialog extends StatelessWidget {
  const InvalidBagWarningDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: Colors.white,
      insetPadding: EdgeInsets.symmetric(horizontal: 16.dp, vertical: 16.dp),
      alignment: AlignmentDirectional.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.dp),
        side: const BorderSide(color: AppColors.dialogeBorderColor),
      ),
      backgroundColor: Colors.transparent, // Make background transparent to show gradient
      content: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xFFFFEAE8),
                AppColors.white.withValues(alpha: 0.34),
                AppColors.white,
              ], // Subtle gradient
              stops: const [
                0.0,
                0.22
              ]),
          borderRadius: BorderRadius.circular(12.dp),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.dp, top: 8.dp, bottom: 0.dp),
                  child: Row(
                    children: [
                      Image.asset(AppImages.warningIcon, width: 42.dp, height: 42.dp),
                      Gap(12.dp),
                      Text(
                        'Invalid Bag',
                        style: AppTypography.sfProRoundedMedium.copyWith(
                          fontSize: 22.sp,
                          color: const Color(0xFF841A00),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(color: AppColors.dividerColor),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.dp, vertical: 12.dp),
              child: Text(
                'The bag you scanned is already added with another order. Please scan a valid bag',
                style: AppTypography.sfProRoundedRegular.copyWith(
                  fontSize: 16.sp,
                  color: const Color(0xFF5B4A45),
                ),
              ),
            ),
            Gap(12.dp),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 100.w,
                
                padding: EdgeInsets.symmetric(vertical: 12.dp),
                decoration: BoxDecoration(
                  color: const Color(0xFF821E00),
                  borderRadius: BorderRadius.circular(8.dp),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.dp),
                    child: Text(
                      'Okay',
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                        fontSize: 16.sp,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      contentPadding: EdgeInsets.zero,
    );
  }
}
