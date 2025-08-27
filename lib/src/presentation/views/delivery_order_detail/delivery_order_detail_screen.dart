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
import 'package:spinners_driver/src/presentation/views/delivery_order_detail/widgets/delivery_confirm_bottomsheet.dart';
import 'package:spinners_driver/src/presentation/views/delivery_order_detail/widgets/info_card.dart';
import 'package:spinners_driver/src/presentation/views/delivery_order_detail/widgets/delivery_order_invoice_detail.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/order_details_screen.dart';
import 'package:spinners_driver/src/presentation/views/orders/widgets/ordered_card_button.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class DeliveryOrderDetailScreen extends StatefulWidget {
  const DeliveryOrderDetailScreen(
      {super.key, required this.orderId, required this.refId});
  final String orderId;
  final String refId;

  @override
  State<DeliveryOrderDetailScreen> createState() =>
      _DeliveryOrderDetailScreenState();
}

class _DeliveryOrderDetailScreenState extends State<DeliveryOrderDetailScreen> {
  @override
  void initState() {
    context
        .read<DeliveryBloc>()
        .add(DeliveryEvent.getOrderDetails(orderId: widget.orderId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocBuilder<DeliveryBloc, DeliveryState>(
        builder: (context, dState) {
          return Stack(
            children: [
              GestureDetector(
                  onTap: () => Navigator.pop(context), child: _header(context)),
              Padding(
                padding: EdgeInsets.only(top: 9.8.h),
                child: BlocBuilder<DeliveryBloc, DeliveryState>(
                  builder: (context, state) {
                    if (state.getOrderDetailStatus is StatusLoading ||
                        state.getOrderDetailStatus is StatusInitial) {
                      return const OrderDetailShimmer();
                    }
                    return state.orderDetails.id.isEmpty
                        ? const SizedBox.shrink()
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
                                          label: "Delivery Time",
                                          value: formatSingleDate(
                                              state.orderDetails.deliveryAt,
                                              state.orderDetails.deliverySlot,
                                              state.orderDetails.status,
                                              state
                                                  .orderDetails.statusHistory)),
                                    ],
                                  ),
                                ),
                              ),
                              if (dState.orderDetails.payment
                              .where((p) => p.status.toLowerCase() == "pending")
                              .map((p) => double.tryParse(p.amount) ?? 0.0)
                              .fold(0.0, (sum, amt) => sum + amt) >
                                  0)
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
                                              label: "COD",
                                              value:
                                                  "AED ${dState.orderDetails.payment.where((p) => p.status.toLowerCase() == "pending").map((p) => double.tryParse(p.amount) ?? 0.0).fold(0.0, (sum, amt) => sum + amt).toStringAsFixed(2)}",
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
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.dp),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      state.orderDetails.customerNote.isNotEmpty
                                          ? Container(
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                  color: AppColors.secondary50,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.dp)),
                                              padding: EdgeInsets.all(12.dp),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Image.asset(
                                                        AppImages.instructions,
                                                        height: 12.dp,
                                                        width: 12.dp,
                                                      ),
                                                      Text(
                                                        " Special Notes",
                                                        style: AppTypography
                                                            .sfProRoundedMedium
                                                            .copyWith(
                                                          fontSize: 12.dp,
                                                          color: AppColors
                                                              .textGrey,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Gap(8.dp),
                                                  Text(
                                                    state.orderDetails
                                                        .customerNote,
                                                    style: AppTypography
                                                        .sfProRoundedMedium
                                                        .copyWith(
                                                      fontSize: 12.dp,
                                                      color:
                                                          AppColors.neutral950,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          : const SizedBox.shrink(),
                                      Gap(20.dp),
                                      Row(
                                        spacing: 12.dp,
                                        children: [
                                          Image.asset(
                                            AppImages.person,
                                            height: 40.dp,
                                            width: 40.dp,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Customer",
                                                style: AppTypography
                                                    .sfProRoundedMedium
                                                    .copyWith(
                                                  fontSize: 12.dp,
                                                  color: AppColors.textGrey,
                                                ),
                                              ),
                                              Text(
                                                state.orderDetails.customer
                                                        ?.user?.firstName ??
                                                    '',
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
                                                    .map((payment) => payment
                                                        .method
                                                        .toString())
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
                                    DeliveryOrderInvoiceDetails(
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
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: dState.orderDetails.id.isEmpty
                      ? const SizedBox.shrink()
                      : _footerButton(
                          orderId: dState.orderDetails.id,
                          totalItemsCount:
                              dState.orderDetails.orderedItems.length,
                          totalAmount: dState.orderDetails.payment
                              .where((p) => p.status.toLowerCase() == "pending")
                              .map((p) => double.tryParse(p.amount) ?? 0.0)
                              .fold(0.0, (sum, amt) => sum + amt))),
            ],
          );
        },
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
            "Order ID: #SPN${widget.refId}",
            style: AppTypography.sfProRoundedSemiBold.copyWith(
              fontSize: 16.dp,
              color: AppColors.neutral950,
            ),
          ),
        ],
      ),
    );
  }

  Widget _footerButton(
      {required int totalItemsCount,
      required double totalAmount,
      required String orderId}) {
    return Container(
      padding:
          EdgeInsets.only(top: 12.dp, left: 16.dp, right: 16.dp, bottom: 24.dp),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -113),
              color: const Color(0xFF000000).withValues(alpha: 0),
              blurRadius: 32,
              spreadRadius: 0),
          BoxShadow(
              offset: const Offset(0, -72),
              color: const Color(0xFF000000).withValues(alpha: 0),
              blurRadius: 29,
              spreadRadius: 0),
          BoxShadow(
              offset: const Offset(0, -41),
              color: const Color(0xFF000000).withValues(alpha: 0.02),
              blurRadius: 24,
              spreadRadius: 0),
          BoxShadow(
              offset: const Offset(0, -18),
              color: const Color(0xFF000000).withValues(alpha: 0.03),
              blurRadius: 18,
              spreadRadius: 0),
          BoxShadow(
              offset: const Offset(0, -5),
              color: const Color(0xFF000000).withValues(alpha: 0.03),
              blurRadius: 10,
              spreadRadius: 0),
        ],
      ),
      child: Column(
        children: [
          if (totalAmount > 0)
            PrimaryButtonWidget(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(24.dp)),
                    ),
                    builder: (context) => Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: DeliveryConfirmBottomsheet(
                        orderId: orderId,
                        totalCollected: totalAmount,
                      ),
                    ),
                  );
                },
                text: "Receive Amount",
                leadingIcon: Row(
                  children: [
                    Text(
                      '$totalItemsCount item${totalItemsCount > 1 ? 's' : ''}',
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                        fontSize: 12.dp,
                        color: AppColors.white,
                      ),
                    ),
                    Gap(6.dp),
                    Container(
                      height: 16.dp,
                      width: 1.dp,
                      color: const Color(0xff80C7EA),
                    ),
                    Gap(6.dp),
                    Text(
                      'AED ${totalAmount.toStringAsFixed(0)}',
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                        fontSize: 12.dp,
                        color: AppColors.white,
                      ),
                    ),
                    Gap(4.dp),
                    Gap(15.w)
                  ],
                )),
          Gap(8.dp),
          PrimaryButtonWidget(
            buttonBgImage: AppImages.buttonGreyBg,
            backgroundColor: AppColors.grey1Color,
            onPressed: () {},
            text: 'Report Issue',
          ),
        ],
      ),
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
              isStatusCompleted('readyForDelivery') ||
              isStatusCompleted('recieved') ||
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Delivery Section
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            shouldShowAsCompleted('delivered')
                ? Transform.rotate(
                    angle: 3.14159, // 180 degrees for upside down arrow
                    child: Image.asset(AppImages.orderStatus,
                        height: 40.dp, width: 40.dp),
                  )
                : Image.asset(AppImages.arrowdown, height: 40.dp, width: 40.dp),
            _buildStatusSection(
              dateString: formatSingleDate(
                  state.orderDetails.deliveryAt,
                  state.orderDetails.deliverySlot,
                  state.orderDetails.status,
                  state.orderDetails.statusHistory),
              title:
                  shouldShowAsCompleted('delivered') ? "Delivered" : "Delivery",
              isCompleted: shouldShowAsCompleted('delivered'),
              isActuallyCompleted: isStatusCompleted('delivered'),
              statusHistory: state.orderDetails.statusHistory,
              statusKey: 'delivered',
              deliveryLocation: state.orderDetails.selectedAddress?.place,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStatusSection({
    required String dateString,
    required String title,
    required bool isCompleted,
    required bool isActuallyCompleted,
    required List<OrderStatus> statusHistory,
    required String statusKey,
    String? deliveryLocation,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTypography.sfProRoundedMedium.copyWith(
            fontSize: 12.dp,
            color: AppColors.textGrey,
          ),
        ),
        Text(
          dateString,
          style: AppTypography.sfProRoundedSemiBold.copyWith(
            fontSize: 16.dp,
            color: AppColors.neutral950,
          ),
        ),
        if (!isCompleted && deliveryLocation != null) ...[
          Gap(4.dp),
          Text(
            "Delivery Location: $deliveryLocation",
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
        Gap(6.dp),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            OrderCardButton(
              widthFactor: 201 / 376,
              icon: AppImages.mapIcon,
              text: "Navigate",
              borderColor: AppColors.primaryColor,
              backgroundColor: AppColors.blue1,
              textColor: AppColors.primaryColor,
              onTap: () {},
            ),
            Gap(4.dp),
            OrderCardButton(
              widthFactor: 40 / 376,
              icon: AppImages.phoneIcon,
              borderColor: AppColors.greyColor,
              textColor: AppColors.grey1Color,
              onTap: () {},
            ),
            Gap(4.dp),
            OrderCardButton(
              widthFactor: 40 / 376,
              icon: AppImages.whatsapp,
              borderColor: AppColors.greyColor,
              textColor: AppColors.grey1Color,
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }

// Helper method to get completion time for a status
  String _getCompletionTime(String statusKey, List<OrderStatus> statusHistory) {
    try {
      final status = statusHistory.firstWhere(
        (s) => s.status == statusKey,
      );
      return status.changedAt.isNotEmpty
          ? formatUtcToLocal(status.changedAt)
          : "";
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

  String formatSingleDate(
    String utcDate,
    TimeSlot? slot,
    String status,
    List<OrderStatus> statusHistory,
  ) {
    DateTime? date;
    DateTime? fromTime;
    DateTime? toTime;

    if (status.toLowerCase() == "delivered") {
      // Find the delivered status from history
      final deliveredStatus = statusHistory.firstWhere(
        (s) => s.status.toLowerCase() == "delivered",
        orElse: () => const OrderStatus(),
      );

      if (deliveredStatus.changedAt.isNotEmpty) {
        date = DateTime.parse(deliveredStatus.changedAt).toLocal();
      }
    } else {
      // Use deliveryAt date + slot time
      date = DateTime.parse(utcDate).toLocal();

      if (slot != null && slot.from.isNotEmpty && slot.to.isNotEmpty) {
        fromTime = DateTime.parse(slot.from).toLocal();
        toTime = DateTime.parse(slot.to).toLocal();
      }
    }

    if (date == null) return "";

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final tomorrow = today.add(const Duration(days: 1));
    final targetDate = DateTime(date.year, date.month, date.day);

    final dateFormat = DateFormat('MMM d, y');
    final timeFormat = DateFormat('h:mm a');

    if (fromTime != null && toTime != null) {
      // Case when slot is used (show range)
      final timeText =
          "${timeFormat.format(fromTime)} - ${timeFormat.format(toTime)}";

      if (targetDate == today) {
        return "Today, $timeText";
      } else if (targetDate == tomorrow) {
        return "Tomorrow, $timeText";
      } else {
        return "${dateFormat.format(date)}, $timeText";
      }
    } else {
      // Case when exact datetime is used (delivered)
      if (targetDate == today) {
        return "Today, ${timeFormat.format(date)}";
      } else if (targetDate == tomorrow) {
        return "Tomorrow, ${timeFormat.format(date)}";
      } else {
        return "${dateFormat.format(date)} – ${timeFormat.format(date)}";
      }
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
class StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  StickyHeaderDelegate({required this.child});

  @override
  double get minExtent => 47.dp; // Fixed height instead of 70.dp

  @override
  double get maxExtent => 47.dp; // Same as minExtent

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      elevation: overlapsContent ? 2.0 : 0.0,
      child: Container(
        color: Colors.white,
        height: maxExtent,
        child: child,
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}