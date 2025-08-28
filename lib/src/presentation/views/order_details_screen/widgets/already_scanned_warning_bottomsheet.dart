import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/widgets/common_textfield.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class AlreadyScannedWarningBottomsheet extends StatefulWidget {
  const AlreadyScannedWarningBottomsheet({super.key, this.bagId, required this.serviceName, required this.serviceImage, required this.serviceColor});
  final String? bagId;
  final String serviceName;
  final String serviceImage;
  final Color serviceColor;
  @override
  State<AlreadyScannedWarningBottomsheet> createState() => _AlreadyScannedWarningBottomsheetState();
}

class _AlreadyScannedWarningBottomsheetState extends State<AlreadyScannedWarningBottomsheet> {
  final TextEditingController bagIdController = TextEditingController();

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
        children: [
          Gap(12.dp),
          _header(),
          Gap(11.dp),
          Divider(
            thickness: 1.dp,
            color: AppColors.lightGrey,
          ),
          Gap(15.dp),
          _bagID(),
          Gap(10.dp),
          alreadyAssignedWidget(
            serviceImage: widget.serviceImage,
            serviceName: widget.serviceName,
            serviceColor: widget.serviceColor,
          ),
          Gap(24.dp),
          Padding(
            padding: EdgeInsets.only(left: 16.dp, right: 16.dp, bottom: 24.dp),
            child: PrimaryButtonWidget(
              buttonBgImage: AppImages.redButtonBg,
              backgroundColor: const Color(0xFFD90F0F),
              onPressed: () {},
              text: 'Remove This Bag',
            ),
          ),
          Gap(8.dp),
          Padding(
            padding: EdgeInsets.only(left: 16.dp, right: 16.dp, bottom: 24.dp),
            child: PrimaryButtonWidget(
              buttonBgImage: AppImages.buttonGreyBg,
              backgroundColor: AppColors.grey1Color,
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: 'Cancel',
            ),
          ),
          Gap(16.dp),
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
        Text(
          'Already Scanned',
          style: AppTypography.sfProRoundedSemiBold.copyWith(
            fontSize: 16.sp,
            color: AppColors.textGrey,
          ),
        ),
      ],
    );
  }

  Widget _bagID() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.dp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Bag ID', style: AppTypography.sfProRoundedMedium.copyWith(fontSize: 16.sp, color: AppColors.textGrey)),
          Gap(6.dp),
          CommonTextField(
            controller: bagIdController,
            hintText: 'Enter Bag ID',
            textStyle: AppTypography.sfProRoundedBold.copyWith(fontSize: 16.sp, color: AppColors.grey1Color),
            readOnly: widget.bagId != null,
          ),
        ],
      ),
    );
  }

  Widget alreadyAssignedWidget({required String serviceImage,required String serviceName,required Color serviceColor}) {
    return Container(
      padding: EdgeInsets.all(12.dp),
      decoration: BoxDecoration(
        color: const Color(0xFFD6FFD5),
        borderRadius: BorderRadius.circular(10.dp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Bag Already Assigned to',
            style: AppTypography.sfProRoundedBold.copyWith(fontSize: 14.sp, color: const Color(0xFF2D733C)),
          ),
          Gap(10.dp),
          Container(
            padding: EdgeInsets.all(8.dp),
            decoration: BoxDecoration(
              color: const Color(0xFFE0E0E0),
              borderRadius: BorderRadius.circular(8.dp),
            ),
            child: Row(
              children: [
                Image.network(serviceImage, width: 24.dp, height: 24.dp),
                Gap(8.dp),
                Text(
                  serviceName,
                  style: AppTypography.sfProRoundedSemiBold.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.neutral950,
                  ),
                ),
                const Spacer(),
                Image.asset(AppImages.bag, width: 20.dp, height: 20.dp,color: serviceColor,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
