import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/delivery_bloc/delivery_bloc.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/delivery_order_detail/placeholder/order_detail_shimmer.dart';
import 'package:spinners_driver/src/presentation/views/delivery_order_detail/widgets/info_card.dart';
import 'package:spinners_driver/src/presentation/views/delivery_order_detail/widgets/order_invoice_detail.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/order_details_screen.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class DeliveryOrderDetailScreen extends StatefulWidget {
  const DeliveryOrderDetailScreen({super.key, required this.orderId, required this.id});
  final String orderId;
  final String id;

  @override
  State<DeliveryOrderDetailScreen> createState() => _DeliveryOrderDetailScreenState();
}

class _DeliveryOrderDetailScreenState extends State<DeliveryOrderDetailScreen> {
  @override
  void initState() {
    context
        .read<DeliveryBloc>()
        .add(DeliveryEvent.getOrderDetails(orderId: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          GestureDetector(
              onTap: () => Navigator.pop(context), child: _header(context)),
          Padding(
            padding: EdgeInsets.only(top: 9.8.h),
            child: BlocBuilder<DeliveryBloc, DeliveryState>(
              builder: (context, state) {
                if (state.getOrderDetailStatus is StatusLoading ||
                    state.getOrderDetailStatus is StatusInitial) {
                  return OrderDetailShimmer(orderId: widget.orderId);
                }
                return state.orderDetails.id.isEmpty
                    ? SizedBox.shrink()
                    : CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.dp, right: 16.dp, top: 8.dp),
                              child: Column(
                                children: [
                                  InfoCard(
                                      label: "Order Type",
                                      value: state.orderDetails.type ==
                                              "normalOrder"
                                          ? "Normal"
                                          : "Quick Order⚡"),
                                  Gap(4.dp),
                                  InfoCard(
                                      label: "Placed on",
                                      value: formatSingleDate(
                                          state.orderDetails.createdAt)
                                      // "Jun 29, 2025 – 1:35 PM"
                                      ),
                                ],
                              ),
                            ),
                          ),
                          SliverPersistentHeader(
                            pinned: true,
                            delegate: StickyHeaderDelegate(
                              child: Container(
                                color: AppColors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.dp, vertical: 0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Gap(4.dp),
                                      InfoCard(
                                        gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            stops: [
                                              0,
                                              0.33,
                                              0.66,
                                              1
                                            ],
                                            colors: [
                                              Color(0xFFFFFDED),
                                              Color(0xFFFFFDED),
                                              Color(0xFFFFFDED),

                                              // AppColors.gradientBrown.withValues(alpha: 0),
                                              Color(0xFFF7F4DD)
                                            ]),
                                        label: "Status",
                                        value:
                                            (state.orderDetails.status=="processing"?"Processing":
                                            state.orderDetails.status=="accepted"?"Accepted":
                                            state.orderDetails.status=="pickupScheduled"?"Pickup Scheduled":
                                           state.orderDetails.status=="pickedUp"?"Picked Up":   
                                       state.orderDetails.status=="recieved"?"Recieved":    
                                         state.orderDetails.status=="readyForDelivery"?"Out for Delivery": 
                                               state.orderDetails.status=="delivered"?"Delivered":
                                               state.orderDetails.status=="cancelled"?"cancelled":state.orderDetails.status),
                                        valueColor: AppColors.yellow,
                                      ),
                                      Gap(4.dp),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.dp),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //..............DAMAGE NOTIFICATION COMMENETD FOR NOW....................................

                                  // Container(
                                  //   width: 100.w,
                                  //   decoration: BoxDecoration(
                                  //       color: AppColors.lightPink,
                                  //       borderRadius: BorderRadius.circular(8.dp)),
                                  //   padding: EdgeInsets.all(12.dp),
                                  //   child: Column(
                                  //     crossAxisAlignment: CrossAxisAlignment.start,
                                  //     children: [
                                  //       Row(
                                  //         mainAxisAlignment:
                                  //             MainAxisAlignment.spaceBetween,
                                  //         children: [
                                  //           Row(
                                  //             mainAxisSize: MainAxisSize.min,
                                  //             children: [
                                  //               Image.asset(
                                  //                 AppImages.damage,
                                  //                 height: 12.dp,
                                  //                 width: 12.dp,
                                  //               ),
                                  //               Text(
                                  //                 " Damage Notifications",
                                  //                 style: AppTypography
                                  //                     .sfProRoundedMedium
                                  //                     .copyWith(
                                  //                   fontSize: 12.dp,
                                  //                   color: AppColors.textGrey,
                                  //                 ),
                                  //               ),
                                  //             ],
                                  //           ),
                                  //           Text(
                                  //             "2 Issues Detected",
                                  //             style: AppTypography
                                  //                 .sfProRoundedSemiBold
                                  //                 .copyWith(
                                  //               fontSize: 12.dp,
                                  //               color: AppColors.red,
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //       Gap(8.dp),
                                  //       //empty
                                  //       // Row(
                                  //       //   mainAxisSize: MainAxisSize.min,
                                  //       //   children: [
                                  //       //     Text(
                                  //       //       "No damage reported for this order ",
                                  //       //       style: AppTypography.sfProRoundedMedium
                                  //       //           .copyWith(
                                  //       //         fontSize: 12.dp,
                                  //       //         color: AppColors.neutral950,
                                  //       //       ),
                                  //       //     ),
                                  //       //     Image.asset(
                                  //       //       AppImages.tick,
                                  //       //       height: 12.dp,
                                  //       //       width: 12.dp,
                                  //       //     ),
                                  //       //   ],
                                  //       // ),
                                  //       DressListWidget(),
                                  //     ],
                                  //   ),
                                  // ),
                                  // Gap(4.dp),
                                  state.orderDetails.customerNote.isNotEmpty
                                      ? Container(
                                          width: 100.w,
                                          decoration: BoxDecoration(
                                              color: AppColors.secondary50,
                                              borderRadius:
                                                  BorderRadius.circular(8.dp)),
                                          padding: EdgeInsets.all(12.dp),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                                    style: AppTypography
                                                        .sfProRoundedMedium
                                                        .copyWith(
                                                      fontSize: 12.dp,
                                                      color: AppColors.textGrey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Gap(8.dp),
                                              Text(
                                                state.orderDetails.customerNote,
                                                style: AppTypography
                                                    .sfProRoundedMedium
                                                    .copyWith(
                                                  fontSize: 12.dp,
                                                  color: AppColors.neutral950,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      : SizedBox.shrink(),
                                  Gap(20.dp),
                                  //..................DRIVER INFO COMMENTED FOR NOW.................

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
                                  //           style: AppTypography.sfProRoundedMedium
                                  //               .copyWith(
                                  //             fontSize: 12.dp,
                                  //             color: AppColors.textGrey,
                                  //           ),
                                  //         ),
                                  //         Text(
                                  //           "Ahmed Al Harthy",
                                  //           style: AppTypography.sfProRoundedSemiBold
                                  //               .copyWith(
                                  //             fontSize: 16.dp,
                                  //             color: AppColors.neutral950,
                                  //           ),
                                  //         )
                                  //       ],
                                  //     )
                                  //   ],
                                  // ),
                                  // Gap(10.dp),
                                  Row(
                                    spacing: 12.dp,
                                    children: [
                                      Image.asset(
                                        AppImages.clipboard,
                                        height: 40.dp,
                                        width: 40.dp,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Payment Method",
                                            style: AppTypography
                                                .sfProRoundedMedium
                                                .copyWith(
                                              fontSize: 12.dp,
                                              color: AppColors.textGrey,
                                            ),
                                          ),
                                          Text(
                                            (state.orderDetails.payment)
                                                .map((payment) =>
                                                    payment.method.toString())
                                                .join(),
                                            style: AppTypography
                                                .sfProRoundedSemiBold
                                                .copyWith(
                                              fontSize: 16.dp,
                                              color: AppColors.neutral950,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Gap(10.dp),
                                  _buildStatusTrackingUI(state)
                                  
                                ],
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: Column(
                              children: [
                                Gap(20.dp),
                                OrderInvoiceDetails(
                                  state: state,
                                )
                              ],
                            ),
                          )
                        ],
                      );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 9.3.h),
            child: Container(
              color: Colors.white,
              width: 100.w,
              height: 4.dp,
            ),
          ),
          Positioned(bottom: 0, left: 0, right: 0, child: _footerButton()),
        ],
      ),
    );
  }

  Container _header(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 7.h, left: 16.dp, right: 16.dp, bottom: 8.dp),
      width: 100.w,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AppImages.arrow,
            height: 20.dp,
            width: 20.dp,
          ),
          Gap(6.dp),
          Text(
            "Order ID: #SPN${widget.orderId}",
            style: AppTypography.sfProRoundedSemiBold.copyWith(
              fontSize: 16.dp,
              color: AppColors.neutral950,
            ),
          ),
        ],
      ),
    );
  }

  Widget _footerButton() {
    return Container(
      padding:
          EdgeInsets.only(top: 12.dp, left: 16.dp, right: 16.dp, bottom: 24.dp),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -113),
              color: Color(0xFF000000).withValues(alpha: 0),
              blurRadius: 32,
              spreadRadius: 0),
          BoxShadow(
              offset: Offset(0, -72),
              color: Color(0xFF000000).withValues(alpha: 0),
              blurRadius: 29,
              spreadRadius: 0),
          BoxShadow(
              offset: Offset(0, -41),
              color: Color(0xFF000000).withValues(alpha: 0.02),
              blurRadius: 24,
              spreadRadius: 0),
          BoxShadow(
              offset: Offset(0, -18),
              color: Color(0xFF000000).withValues(alpha: 0.03),
              blurRadius: 18,
              spreadRadius: 0),
          BoxShadow(
              offset: Offset(0, -5),
              color: Color(0xFF000000).withValues(alpha: 0.03),
              blurRadius: 10,
              spreadRadius: 0),
        ],
      ),
      child: PrimaryButtonWidget(onPressed: () {}, text: "Call Driver"),
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
            isStatusCompleted('readyForDelivery') ||isStatusCompleted('recieved')||
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

}
