import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class StatusHistory extends StatelessWidget {
  const StatusHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              spacing: 8,
              children: [
                Image.asset(AppImages.arrowup, height: 40.dp, width: 40.dp),
                _buildStatusSection(
                  title: "Pickup",
                  expectedSlot: "Today, 2:00 PM – 4:00 PM",
                ),
              ],
            ),
            Gap(4.dp),
            Text(
              "Pickup Location: Flat 204, Al-Hail North, Muscat",
              style: AppTypography.sfProRoundedRegular.copyWith(
                fontSize: 12.sp,
                color: AppColors.neutral500,
              ),
            ),
            Gap(4.dp),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width:
                      //  56.w,
                      ((100.w - 32.dp) / 212) * 100,
                  padding: EdgeInsets.symmetric(vertical: 8.dp),
                  decoration: BoxDecoration(
                    color: AppColors.blue1,
                    borderRadius: BorderRadius.circular(8.dp),
                    border: Border.all(color: AppColors.primaryColor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.mapIcon,
                        height: 20.dp,
                        width: 20.dp,
                        fit: BoxFit.cover,
                      ),
                      Gap(4.dp),
                      Text("Navigate",
                          style: AppTypography.sfProRoundedSemiBold.copyWith(
                              fontSize: 14.sp, color: AppColors.primaryColor)),
                    ],
                  ),
                ),
                Gap(4.dp),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.dp, vertical: 8.dp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.dp),
                    border: Border.all(color: AppColors.greyColor),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        AppImages.phoneIcon,
                        height: 20.dp,
                        width: 20.dp,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Gap(4.dp),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.dp, vertical: 8.dp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.dp),
                    border: Border.all(color: AppColors.greyColor),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        AppImages.whatsapp,
                        height: 20.dp,
                        width: 20.dp,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget _buildStatusSection({
    required String title,
    required String expectedSlot,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTypography.sfProRoundedMedium.copyWith(
            fontSize: 12.dp,
            color: AppColors.neutral500,
          ),
        ),
        Gap(4.dp),
        Text(
          expectedSlot.toString(),
          style: AppTypography.sfProRoundedSemiBold.copyWith(
            fontSize: 16.dp,
            color: AppColors.neutral950,
          ),
        ),
      ],
    );
  }
}
