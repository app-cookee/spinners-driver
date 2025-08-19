import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class PickupAndDeliveryOverview extends StatelessWidget {
  const PickupAndDeliveryOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16.dp,
      ),
      width: 100.w,
      height: 27.h,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 19.h),
            child: _pickupRemainingCard(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: _myDeliveriesLeftCard(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: _completedPickupCard(),
          ),
          _completedDeliveryCard(),
        ],
      ),
    );
  }

  Widget _completedDeliveryCard() {
    return Container(
      width: 100.w,
      height: 48.dp,
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AppImages.completedDeliveryCard), fit: BoxFit.fill)),
      child: _overviewContent(
        icon: AppImages.completedDeliveriesIcon,
        label: 'Completed Deliveries',
        value: '5',
      ),
    );
  }

  Widget _completedPickupCard() {
    return Container(
      width: 100.w,
      height: 62.dp,
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AppImages.completedPickupCard), fit: BoxFit.fill)),
       child: _overviewContent(
        icon: AppImages.checkIcon,
        label: 'Completed Deliveries',
        value: '5',
      ),
    );
  }

  Widget _myDeliveriesLeftCard() {
    return Container(
      width: 100.w,
      height: 62.dp,
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AppImages.deliveriesLeftCard), fit: BoxFit.fill)),
       child: _overviewContent(
        icon: AppImages.deliveriesLeftIcon,
        label: 'Completed Deliveries',
        value: '5',
      ),
    );
  }

  Widget _pickupRemainingCard() {
    return Container(
      width: 100.w,
      height: 62.dp,
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AppImages.pickupRemainingCard), fit: BoxFit.fill)),
       child: _overviewContent(
        icon: AppImages.remainingPickupIcon,
        label: 'Completed Deliveries',
        value: '5',
      ),
    );
  }

  Widget _overviewContent({required String icon,required String label, required String value}) {
    return Row(
      children: [
       Image.asset(icon, width: 24.dp, height: 24.dp,color: AppColors.white,),
       Gap(12.dp),
       Text(label,style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 12.sp),),
       Spacer(),
       Text(value,style: AppTypography.sfProRoundedBold.copyWith(fontSize: 20.sp),),
      ],
    );
  }
}
