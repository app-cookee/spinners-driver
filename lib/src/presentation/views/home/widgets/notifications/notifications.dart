import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/notifications/stacked_card_list.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/pickup_and_delivery_overview/pickup_and_delivery_overview.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  late final ValueNotifier<List<String>> notificationsNotifier;

  @override
  void initState() {
    super.initState();
    notificationsNotifier = ValueNotifier([
      'Pickup added at 5:00 PM - Express',
      'New delivery request available',
      'Route updated for Package #1234',
      'Customer feedback received',
      'Delivery completed successfully',
    ]);
  }

  @override
  void dispose() {
    notificationsNotifier.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
     
      margin: EdgeInsets.only( top: 5.h),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 6.dp,
        ),
        child: ValueListenableBuilder<List<String>>(
          valueListenable: notificationsNotifier,
          builder: (context, notifications, child) {
            return Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  AppImages.homeDottedRectangle,
                  width: 100.w,
                ),
                _notificationDenotter(notifications),
                if(notifications.isNotEmpty)
               Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Column(
                    children: [
                      StackedCardList(
                        notifications: notifications,
                        notificationsNotifier: notificationsNotifier,
                      ),
                      Gap(12.dp),
                       const PickupAndDeliveryOverview(),
                    ],
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }

Widget _notificationDenotter(List<String> notifications) {
    return Container(
      color: AppColors.white,
      padding: EdgeInsets.symmetric(horizontal: 8.dp, vertical: 3.5.dp),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AppImages.bellIcon,
            width: 24.dp,
            height: 24.dp,
            color: AppColors.countrycodeColor,
          ),
          Gap(4.dp),
          Text(
            '${notifications.length} New Assignments',
            style: AppTypography.sfProRoundedMedium.copyWith(
              color: AppColors.neutral500, 
              fontSize: 14.dp
            ),
          )
        ],
      ),
    );
  }

}
