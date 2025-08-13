
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_laundry/app/theme/app_colors.dart';
import 'package:spinners_laundry/app/theme/app_typography.dart';
import 'package:spinners_laundry/src/presentation/views/widgets/common_header.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final newNotifications = [
      NotificationData(
        title: 'Order #SPN09125 Placed Successfully',
        subtitle: 'Pickup is scheduled for today, 4-6 PM.',
        actionText: 'View Order',
        timeAgo: '6 minutes ago',
        hasRedDot: true,
      ),
      NotificationData(
        title: 'Order #SPN08910 Cancelled',
        subtitle:
            'Your order was cancelled. You can place a new order anytime.',
        actionText: 'Reorder',
        timeAgo: '6 minutes ago',
        hasRedDot: true,
      ),
    ];

    final thisWeekNotifications = [
      NotificationData(
        title: 'Items in Cleaning',
        subtitle: 'Your order is being carefully processed at our facility.',
        timeAgo: '6 minutes ago',
      ),
      NotificationData(
        title: 'Order #SPN08988 Delivered',
        subtitle: 'Your laundry was successfully delivered today.',
        timeAgo: '3 hours ago',
      ),
      NotificationData(
        title: 'You Earned 100 Coins!',
        subtitle:
            'Your friend used your referral code. Bonus added to your wallet.',
        actionText: 'View Wallet',
        timeAgo: 'Yesterday',
      ),
      NotificationData(
        title: 'Action Needed: Special Care Item',
        subtitle: 'One of your items may need a special cleaning service.',
        actionText: 'Review Now',
        timeAgo: 'Yesterday',
      ),
      NotificationData(
        title: 'Action Needed: Special Care Item',
        subtitle: 'One of your items may need a special cleaning service.',
        actionText: 'Review Now',
        timeAgo: 'Yesterday',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CommonHeader(
            label: "Notifications",
            bottomPadding: 16.dp,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                if (newNotifications.isNotEmpty) ...[
                  const SectionHeader(title: 'New'),
                  NotificationSection(notifications: newNotifications),
                ],

                // This Week Section
                if (thisWeekNotifications.isNotEmpty) ...[
                  const SectionHeader(title: 'This week'),
                  // const SizedBox(height: 8),
                  NotificationSection(notifications: thisWeekNotifications),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationSection extends StatelessWidget {
  final List<NotificationData> notifications;

  const NotificationSection({super.key, required this.notifications});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < notifications.length; i++) ...[
          NotificationItem(notification: notifications[i]),
          if (i < notifications.length - 1) // Add divider if not the last item
            Divider(color: AppColors.lightGrey, height: 1, thickness: 1),
        ],
      ],
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      decoration: BoxDecoration(
        color: AppColors.neutral50,
      ),
      padding: EdgeInsets.all(12.dp),
      child: Text(
        title,
        style: AppTypography.sfProRoundedSemiBold.copyWith(
          fontSize: 11.sp,
          color: AppColors.textGrey,
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final NotificationData notification;

  const NotificationItem({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0.dp),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (notification.hasRedDot) ...[
                Container(
                  width: 8.dp,
                  height: 8.dp,
                  margin: EdgeInsets.only(right: 4.dp),
                  decoration: const BoxDecoration(
                    color: AppColors.red1,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
              Expanded(
                child: Text(
                  notification.title,
                  style: AppTypography.sfProRoundedSemiBold.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.neutral950,
                  ),
                ),
              ),
            ],
          ),
          Gap(6.dp),
          Text(
            notification.subtitle,
            style: AppTypography.sfProRoundedRegular.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: AppColors.textGrey,
            ),
          ),
          if (notification.actionText != null) ...[
            Gap(6.dp),
            GestureDetector(
              onTap: () {
                // Handle action tap
              },
              child: Text(
                notification.actionText!,
                style: AppTypography.sfProRoundedSemiBold.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.primaryColor500,
                ),
              ),
            ),
          ],
          Gap(8.dp),
          Text(
            notification.timeAgo,
            style: AppTypography.sfProRoundedMedium.copyWith(
              fontSize: 9.sp,
              color: AppColors.grey1Color,
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationData {
  final String title;
  final String subtitle;
  final String? actionText;

  final String timeAgo;
  final bool hasRedDot;

  NotificationData({
    required this.title,
    required this.subtitle,
    this.actionText,
    required this.timeAgo,
    this.hasRedDot = false,
  });
}
