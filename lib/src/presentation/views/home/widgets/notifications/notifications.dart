import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/notifications/notification_card.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/pickup_and_delivery_overview/pickup_and_delivery_overview.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> with TickerProviderStateMixin {
  final List<String> notifications = [
    'Pickup added at 5:00 PM - Express',
    'New delivery request available',
    'Route updated for Package #1234',
    'Customer feedback received',
    'Delivery completed successfully',
  ];
  void _removeNotification(int index) {
    setState(() {
      notifications.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(top: 3.h),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.dp),
        child: Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              AppImages.homeDottedRectangle,
              width: 100.w,
            ),
            _notificationDenotter(notifications),
            if (notifications.isNotEmpty) ...[
              Padding(
                padding: EdgeInsets.only(top: 6.h), //8.h
                child: Column(
                  children: [
                    // Stack of first 3 notifications
                    _stackedList(),

                    // const SizedBox(height: 20),
                    // // Page indicator style dots
                    // if (notifications.isNotEmpty)
                    //   Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: List.generate(notifications.length > 3 ? 3 : notifications.length, (index) {
                    //        bool isActive = index == 0;
                    //       return Container(
                    //         margin:  EdgeInsets.only(left: 3.dp,right:3.dp,top: 8.dp),
                    //         width:isActive?14.dp: 6.dp,
                    //         height: 6.dp,
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(6.dp),
                    //           color: index == 0 ? AppColors.primaryColor: AppColors.grey2Color,
                    //         ),
                    //       );
                    //     }),
                    //   ),

                    Gap(32.dp),
                    const PickupAndDeliveryOverview(),
                  ],
                ),
              ),
            ] else ...[
              Padding(
                padding: EdgeInsets.only(top: 6.h),
                child: const PickupAndDeliveryOverview(),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _stackedList() {
    return SizedBox(
      height: 6.h,
      child: Stack(
        alignment: Alignment.center,
        children: List.generate(
          notifications.length > 3 ? 3 : notifications.length,
          (i) {
            // int index = i;
            // Reverse the order so first item (index 0) is on top
            int reverseIndex = (notifications.length > 3 ? 3 : notifications.length) - 1 - i;
            int actualIndex = reverseIndex;
            // return Dismissible(
            //   key: ValueKey(notifications[index]),
            //   direction: DismissDirection.horizontal,
            //   onDismissed: (_) => _removeNotification(index),
            //   child: Transform.translate(
            //       offset: Offset(0, i * 8), // stacked look
            //       child: NotificationCard(notification: notifications[index], isTopCard: i == 2, isLastCard: i == 0)),
            // );
            return Dismissible(
              key: ValueKey('${notifications[actualIndex]}_$actualIndex'),
              direction: DismissDirection.horizontal,
              onDismissed: (_) => _removeNotification(actualIndex),
              child: Transform.translate(
                offset: Offset(0, i * 8), // stacked look (bottom cards further back)
                child: NotificationCard(
                    notification: notifications[actualIndex],
                    isTopCard: reverseIndex == 0, // Top card is the first item (index 0)
                    isLastCard: reverseIndex == (notifications.length > 3 ? 2 : notifications.length - 1)),
              ),
            );
          },
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
              fontSize: 14.dp,
            ),
          )
        ],
      ),
    );
  }
}
