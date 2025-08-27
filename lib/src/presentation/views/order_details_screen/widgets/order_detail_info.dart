import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/status_history.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class OrderDetailnfo extends StatelessWidget {
  const OrderDetailnfo({
    super.key,
    required this.notes,
    required this.customer,
    required this.amount,
    required this.title,
    required this.timeSlot,
    required this.address,
    required this.status,
  });
  final String notes;
  final String customer;
  final String amount;
  final String title;
  final String timeSlot;
  final String address;
  final String status;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.dp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            notes != ""
                ? Container(
                    width: 100.w,
                    decoration: BoxDecoration(color: AppColors.secondary50, borderRadius: BorderRadius.circular(8.dp)),
                    padding: EdgeInsets.all(12.dp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              AppImages.instructions,
                              height: 12.dp,
                              width: 12.dp,
                            ),
                            Text(
                              " Special  Notes",
                              style: AppTypography.sfProRoundedMedium.copyWith(
                                fontSize: 12.dp,
                                color: AppColors.textGrey,
                              ),
                            ),
                          ],
                        ),
                        Gap(8.dp),
                        Text(
                          notes,
                          style: AppTypography.sfProRoundedMedium.copyWith(
                            fontSize: 12.dp,
                            color: AppColors.neutral950,
                          ),
                        )
                      ],
                    ),
                  )
                : const SizedBox.shrink(),

            Gap(20.dp),

            Row(
              spacing: 12.dp,
              children: [
                Image.asset(
                  AppImages.person,
                  height: 40.dp,
                  width: 40.dp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Customer",
                      style: AppTypography.sfProRoundedMedium.copyWith(
                        fontSize: 12.dp,
                        color: AppColors.textGrey,
                      ),
                    ),
                    Text(
                      customer,
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                        fontSize: 16.dp,
                        color: AppColors.neutral950,
                      ),
                    )
                  ],
                )
              ],
            ),
            Gap(10.dp),
            _codBalance(context, amount),
            Gap(10.dp),
            StatusHistory(
              title: title,
              timeSlot: timeSlot,
              address: address,
              status: status,
            )
          ],
        ),
      ),
    );
  }

  Widget _codBalance(BuildContext context, final String amount) {
    return Row(
      spacing: 12.dp,
      children: [
        Image.asset(
          AppImages.clipboard,
          height: 40.dp,
          width: 40.dp,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cash On Delivery Amount",
              style: AppTypography.sfProRoundedMedium.copyWith(
                fontSize: 12.dp,
                color: AppColors.textGrey,
              ),
            ),
            Text(
              "AED $amount",
              style: AppTypography.sfProRoundedSemiBold.copyWith(
                fontSize: 16.dp,
                color: AppColors.neutral950,
              ),
            )
          ],
        )
      ],
    );
  }
}
