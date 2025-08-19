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
      margin: EdgeInsets.symmetric(horizontal: 16.dp),
      width: 100.w,
      height: 27.h,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.bottomCenter,
        children: _buildOverviewCards(),
      ),
    );
  }

  List<Widget> _buildOverviewCards() {
    final cards = _getCardConfigurations();
    return cards.map((config) => Padding(
      padding: EdgeInsets.only(bottom: config.bottomPadding),
      child: _buildOverviewCard(config),
    )).toList();
  }

  List<_CardConfig> _getCardConfigurations() {
    return [
      _CardConfig(
        bottomPadding: 19.h,
        height: 62.dp,
        backgroundImage: AppImages.pickupRemainingCard,
        icon: AppImages.remainingPickupIcon,
        label: 'Pickup Remaining',
        value: '03',
      ),
      _CardConfig(
        bottomPadding: 12.h,
        height: 62.dp,
        backgroundImage: AppImages.deliveriesLeftCard,
        icon: AppImages.deliveriesLeftIcon,
        label: 'My Deliveries Left',
        value: '02',
      ),
      _CardConfig(
        bottomPadding: 5.h,
        height: 62.dp,
        backgroundImage: AppImages.completedPickupCard,
        icon: AppImages.checkIcon,
        label: 'Completed Pickups',
        value: '10',
      ),
      _CardConfig(
        bottomPadding: 0.h,
        height: 48.dp,
        backgroundImage: AppImages.completedDeliveryCard,
        icon: AppImages.completedDeliveriesIcon,
        label: 'Completed Deliveries',
        value: '08',
      ),
    ];
  }

  Widget _buildOverviewCard(_CardConfig config) {
    return Container(
      width: 100.w,
      height: config.height,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 16.dp),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(config.backgroundImage),
          fit: BoxFit.fill,
        ),
      ),
      child: _buildCardContent(
        icon: config.icon,
        label: config.label,
        value: config.value,
      ),
    );
  }

  Widget _buildCardContent({
    required String icon,
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Image.asset(
          icon,
          width: 24.dp,
          height: 24.dp,
          color: AppColors.white,
        ),
        Gap(12.dp),
        Expanded(
          child: Text(
            label,
            style: AppTypography.sfProRoundedSemiBold.copyWith(
              fontSize: 12.sp,
              color: AppColors.white.withValues(alpha: 0.5),
            ),
          ),
        ),
        Text(
          value,
          style: AppTypography.sfProRoundedBold.copyWith(
            fontSize: 20.sp,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}

class _CardConfig {
  final double bottomPadding;
  final double height;
  final String backgroundImage;
  final String icon;
  final String label;
  final String value;

  const _CardConfig({
    required this.bottomPadding,
    required this.height,
    required this.backgroundImage,
    required this.icon,
    required this.label,
    required this.value,
  });
}