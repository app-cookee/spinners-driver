import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/delivery_bloc/delivery_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class SpecialInstructionsWidget extends StatelessWidget {
  const SpecialInstructionsWidget({
    
    super.key, required this.state,
  });
  final DeliveryState state;

  @override
  Widget build(BuildContext context) {
    return
state.orderDetails.customerNote.isNotEmpty?     Container(
      width: 100.w,
      decoration: BoxDecoration(
          color: AppColors.secondary50,
          borderRadius: BorderRadius.circular(8.dp)),
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
                " Special Instructions",
                style: AppTypography.sfProRoundedMedium
                    .copyWith(
                  fontSize: 12.dp,
                  color: AppColors.textGrey,
                ),
              ),
            ],
          ),
          Gap(8.dp),
          Text(
            state.orderDetails.customerNote ,
            style: AppTypography.sfProRoundedMedium
                .copyWith(
              fontSize: 12.dp,
              color: AppColors.neutral950,
            ),
          ),
        ],
      ),
    ):SizedBox.shrink();
  }
}