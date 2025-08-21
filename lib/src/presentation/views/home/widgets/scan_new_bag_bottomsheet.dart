import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/widgets/common_textfield.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class ScanNewBagBottomsheet extends StatefulWidget {
  const ScanNewBagBottomsheet({super.key});

  @override
  State<ScanNewBagBottomsheet> createState() => _PickupTimingBottomsheetState();
}

class _PickupTimingBottomsheetState extends State<ScanNewBagBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.dp),
          topRight: Radius.circular(24.dp),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Gap(12.dp),
          _header(),
          Gap(28.dp),
          _bagID(),
          Gap(16.h),
          Padding(
            padding: EdgeInsets.only(left: 16.dp, right: 16.dp, bottom: 24.dp),
            child: PrimaryButtonWidget(
              onPressed: () {
                context.router.pop();
              },
              text: 'Done',
            ),
          ),
        ],
      ),
    );
  }

  Widget _bagID() {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.dp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Bag ID', style: AppTypography.sfProRoundedMedium.copyWith(fontSize: 16.sp, color: AppColors.textGrey)),
          Gap(6.dp),
           CommonTextField(
            hintText: '',
           textStyle: AppTypography.sfProRoundedBold.copyWith(fontSize: 16.sp,color: AppColors.grey1Color)
          ),
        ],
      ),
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImages.qrIcon, width: 24.dp, height: 24.dp),
        Gap(4.dp),
        Text('New Bag Detected', style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 16.sp, color: AppColors.textGrey)),
      ],
    );
  }
}
