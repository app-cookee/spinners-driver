import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/delivery_bloc/delivery_bloc.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class DeliveryDetailsWidget extends StatefulWidget {
  const DeliveryDetailsWidget({super.key, required this.state});
  final DeliveryState state;

  @override
  State<DeliveryDetailsWidget> createState() => _DeliveryDetailsWidgetState();
}

class _DeliveryDetailsWidgetState extends State<DeliveryDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Row(
        //   spacing: 12.dp,
        //   children: [
        //     Image.asset(
        //       AppImages.person,
        //       height: 40.dp,
        //       width: 40.dp,
        //     ),
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           "Driver Info",
        //           style: AppTypography.sfProRoundedMedium.copyWith(
        //             fontSize: 12.dp,
        //             color: AppColors.textGrey,
        //           ),
        //         ),
        //         Text(
        //           "Ahmed Al Harthy",
        //           style: AppTypography.sfProRoundedSemiBold.copyWith(
        //             fontSize: 16.dp,
        //             color: AppColors.neutral950,
        //           ),
        //         )
        //       ],
        //     )
        //   ],
        // ),
        // Gap(10.dp),
        if (widget.state.orderDetails.payment.isNotEmpty) ...[
          Row(
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
                    "Payment Method",
                    style: AppTypography.sfProRoundedMedium.copyWith(
                      fontSize: 12.dp,
                      color: AppColors.textGrey,
                    ),
                  ),
                  Text(
                    (widget.state.orderDetails.payment)
                        .map((payment) => payment.method.toString())
                        .join(),
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
        ],

        _buildStatusTrackingUI(widget.state)
      ],
    );
  }

Widget _buildStatusTrackingUI(DeliveryState state) {
  // Get completed statuses from status history
  final Set<String> completedStatuses =
      state.orderDetails.statusHistory.map((status) => status.status).toSet();
  // Helper function to check if a status is completed
  bool isStatusCompleted(String status) {
    return completedStatuses.contains(status);
  }
  // Helper function to determine if status should show as completed (cascading logic)
  bool shouldShowAsCompleted(String status) {
    switch (status) {
      case 'pickedUp':
        return isStatusCompleted('pickedUp') ||
            isStatusCompleted('processing') ||
            isStatusCompleted('readyForDelivery') || isStatusCompleted('recieved')||
            isStatusCompleted('delivered');
      case 'processing':
        return isStatusCompleted('processing') ||
            isStatusCompleted('readyForDelivery') ||
            isStatusCompleted('delivered');
      case 'readyForDelivery':
        return isStatusCompleted('readyForDelivery') ||
            isStatusCompleted('delivered');
      case 'delivered':
        return isStatusCompleted('delivered');
      default:
        return false;
    }
  }
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Pickup Section
      Row(
        spacing: 8,
        children: [
          shouldShowAsCompleted('pickedUp')
              ? Image.asset(AppImages.orderStatus, height: 40.dp, width: 40.dp)
              : Image.asset(AppImages.arrowup, height: 40.dp, width: 40.dp),
          _buildStatusSection(
            title: shouldShowAsCompleted('pickedUp') ? "Picked up" : "Pickup",
            isCompleted: shouldShowAsCompleted('pickedUp'),
            isActuallyCompleted: isStatusCompleted('pickedUp'),
            statusHistory: state.orderDetails.statusHistory,
            statusKey: 'pickedUp',
            expectedSlot: shouldShowAsCompleted('pickedUp')
                ? null
                : _formatDeliverySlot(state.orderDetails.pickupSlot),
          ),
        ],
      ),
      // Line 1
      Container(
        margin: EdgeInsets.only(left: 20.dp, right: 20.dp),
        height: 34.dp,
        width: 1,
        color: shouldShowAsCompleted('processing')
            ? AppColors.green
            : AppColors.lightGrey,
      ),
      // Processing Section
      Row(
        spacing: 8,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 13.5.dp, right: 13.5.dp),
            child: CircleAvatar(
              radius: 6.5,
              backgroundColor: shouldShowAsCompleted('processing')
                  ? AppColors.green
                  : AppColors.lightGrey,
            ),
          ),
          _buildStatusSection(
            title: "Processing",
            isCompleted: shouldShowAsCompleted('processing'),
            isActuallyCompleted: isStatusCompleted('processing'),
            statusHistory: state.orderDetails.statusHistory,
            statusKey: 'processing',
          ),
        ],
      ),
      // Line 2
      Container(
        margin: EdgeInsets.only(left: 20.dp, right: 20.dp),
        height: 34.dp,
        width: 1,
        color: shouldShowAsCompleted('readyForDelivery')
            ? AppColors.green
            : AppColors.lightGrey,
      ),
      // Out For Delivery Section
      Row(
        spacing: 8,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 13.5.dp, right: 13.5.dp),
            child: CircleAvatar(
              radius: 6.5,
              backgroundColor: shouldShowAsCompleted('readyForDelivery')
                  ? AppColors.green
                  : AppColors.lightGrey,
            ),
          ),
          _buildStatusSection(
            title: "Out For Delivery",
            isCompleted: shouldShowAsCompleted('readyForDelivery'),
            isActuallyCompleted: isStatusCompleted('readyForDelivery'),
            statusHistory: state.orderDetails.statusHistory,
            statusKey: 'readyForDelivery',
          ),
        ],
      ),
      // Line 3
      Container(
        margin: EdgeInsets.only(left: 20.dp, right: 20.dp),
        height: 34.dp,
        width: 1,
        color: shouldShowAsCompleted('delivered')
            ? AppColors.green
            : AppColors.lightGrey,
      ),
      // Delivery Section
      Row(
        spacing: 8,
        children: [
          shouldShowAsCompleted('delivered')
              ? Transform.rotate(
                  angle: 3.14159, // 180 degrees for upside down arrow
                  child: Image.asset(AppImages.orderStatus, height: 40.dp, width: 40.dp),
                )
              : Image.asset(AppImages.arrowdown, height: 40.dp, width: 40.dp),
          _buildStatusSection(
            title: shouldShowAsCompleted('delivered') ? "Delivered" : "Delivery",
            isCompleted: shouldShowAsCompleted('delivered'),
            isActuallyCompleted: isStatusCompleted('delivered'),
            statusHistory: state.orderDetails.statusHistory,
            statusKey: 'delivered',
            expectedSlot: shouldShowAsCompleted('delivered')
                ? null
                : _formatDeliverySlot(state.orderDetails.deliverySlot),
          ),
        ],
      ),
    ],
  );
}
Widget _buildStatusSection({
  required String title,
  required bool isCompleted,
  required bool isActuallyCompleted,
  required List<OrderStatus> statusHistory,
  required String statusKey,
  String? expectedSlot,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: AppTypography.sfProRoundedSemiBold.copyWith(
          fontSize: 16.dp,
          color: AppColors.neutral950,
        ),
      ),
      if (!isCompleted && expectedSlot != null) ...[
        Gap(4.dp),
        Text(
          "Expected: $expectedSlot",
          style: AppTypography.sfProRoundedRegular.copyWith(
            fontSize: 12.dp,
            color: AppColors.neutral500,
          ),
        ),
      ],
      SizedBox(
        child: isActuallyCompleted
            ? Padding(
                padding: EdgeInsets.only(top: 2.dp),
                child: Text(
                  _getCompletionTime(statusKey, statusHistory),
                  style: AppTypography.sfProRoundedRegular.copyWith(
                    fontSize: 10.dp,
                    color: AppColors.green,
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ),
    ],
  );
}
// Helper method to get completion time for a status
String _getCompletionTime(String statusKey, List<OrderStatus> statusHistory) {
  try {
    final status = statusHistory.firstWhere(
      (s) => s.status == statusKey,
    );
    return status.changedAt.isNotEmpty ? formatUtcToLocal(status.changedAt) : "";
  } catch (e) {
    return "";
  }
}
// Helper method to format delivery slot
String? _formatDeliverySlot(TimeSlot? slot) {
  if (slot == null || slot.from.isEmpty || slot.to.isEmpty) return null;
  try {
    // Parse UTC datetime and convert to local
    final from = DateTime.parse(slot.from).toLocal();
    final to = DateTime.parse(slot.to).toLocal();
    final now = DateTime.now();
    String dayLabel;
    // Check if it's today
    if (from.year == now.year &&
        from.month == now.month &&
        from.day == now.day) {
      dayLabel = "Today";
    }
    // Check if it's tomorrow
    else if (from.year == now.year &&
        from.month == now.month &&
        from.day == now.day + 1) {
      dayLabel = "Tomorrow";
    }
    // For other dates, show month and day
    else {
      dayLabel = DateFormat('MMM d').format(from);
    }
    final timeFormat = DateFormat('h:mm a');
    return "$dayLabel, ${timeFormat.format(from)} – ${timeFormat.format(to)}";
  } catch (e) {
    // Fallback if parsing fails
    return "${slot.day} – ${slot.from} to ${slot.to}";
  }
}
// Helper method to format changedAt timestamp for status history
String formatUtcToLocal(String utcString) {
  if (utcString.isEmpty) return "";
  try {
    // Parse UTC datetime and convert to local
    DateTime utcDateTime = DateTime.parse(utcString);
    DateTime localDateTime = utcDateTime.toLocal();
    final now = DateTime.now();
    // Check if it's today
    if (localDateTime.year == now.year &&
        localDateTime.month == now.month &&
        localDateTime.day == now.day) {
      return "Today, ${DateFormat('h:mm a').format(localDateTime)}";
    }
    // Check if it's tomorrow
    else if (localDateTime.year == now.year &&
        localDateTime.month == now.month &&
        localDateTime.day == now.day + 1) {
      return "Tomorrow, ${DateFormat('h:mm a').format(localDateTime)}";
    }
    // For other dates
    else {
      return DateFormat("MMM d, h:mm a").format(localDateTime);
    }
  } catch (e) {
    return utcString;
  }
}
    String formatSingleDate(String utcDate) {
  final date = DateTime.parse(utcDate).toLocal();
  final now = DateTime.now();

  final today = DateTime(now.year, now.month, now.day);
  final tomorrow = today.add(Duration(days: 1));
  final targetDate = DateTime(date.year, date.month, date.day);

  final timeFormat = DateFormat('h:mm a');

  if (targetDate == today) {
    return "Today, ${timeFormat.format(date)}";
  } else if (targetDate == tomorrow) {
    return "Tomorrow, ${timeFormat.format(date)}";
  } else {
    return DateFormat('MMM d, y – h:mm a').format(date);
  }
}


  // String formatUtcToLocal(String utcString) {
  //   if (utcString.isEmpty) return "";

  //   try {
  //     // Parse as UTC
  //     DateTime utcDateTime = DateTime.parse(utcString);

  //     // Convert to local time
  //     DateTime localDateTime = utcDateTime.toLocal();

  //     // Format to desired output
  //     return DateFormat("MMM dd, yyyy – h:mm a").format(localDateTime);
  //   } catch (e) {
  //     // In case of parsing error
  //     return utcString;
  //   }
  // }

  String formatDeliverySlot(Map<String, dynamic> deliverySlot) {
    final from = DateTime.parse(deliverySlot['from']).toLocal();
    final to = DateTime.parse(deliverySlot['to']).toLocal();

    final now = DateTime.now();
    String dayLabel;

    // Check if it's today or tomorrow
    if (from.year == now.year &&
        from.month == now.month &&
        from.day == now.day) {
      dayLabel = "Today";
    } else if (from.year == now.year &&
        from.month == now.month &&
        from.day == now.day + 1) {
      dayLabel = "Tomorrow";
    } else {
      // Fallback to weekday name
      dayLabel = DateFormat('EEEE').format(from);
    }

    // Format time range
    final timeFormat = DateFormat('h:mm a');
    final fromTime = timeFormat.format(from);
    final toTime = timeFormat.format(to);

    return "$dayLabel, $fromTime – $toTime";
  }

  // String _getCompletionTime(String status, List<Orderstatus> statusHistory) {
  //   try {
  //     final statusItem = statusHistory.firstWhere(
  //       (item) => item.status == status,
  //     );
  //     return formatSingleDate(statusItem.changedAt);
  //   } catch (e) {
  //     return "";
  //   }
  // }
}
