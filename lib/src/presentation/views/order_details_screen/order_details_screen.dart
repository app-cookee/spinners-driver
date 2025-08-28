import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/utils/launcher_utils.dart';
import 'package:spinners_driver/src/presentation/utils/map_navigation_helper.dart';
import 'package:spinners_driver/src/presentation/utils/no_glow_scroll_behaviour.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/placeholder/pickup_order_detail_screen_placeholder.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/footer_buttons.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/order_detail_info.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/order_info_card.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/services_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';
import 'package:intl/intl.dart';

@RoutePage()
class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key, required this.orderId});
  final String orderId;

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  void initState() {
    context.read<OrderBloc>().add(OrderEvent.getOrderDetails(orderId: widget.orderId));
    log('Fetching order details for order ID: ${widget.orderId}');

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  final TextEditingController additionalNotesController = TextEditingController();
  final ValueNotifier<Set<String>> scannedQRCodes = ValueNotifier<Set<String>>({});
  @override
  Widget build(BuildContext context) {
    final refId = context.read<OrderBloc>().state.orderDetails.refId;
    return ScrollConfiguration(
      behavior: NoGlowScrollBehavior(),
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Stack(
          children: [
            GestureDetector(onTap: () => Navigator.pop(context), child: _header(context, refId)),
            Padding(
              padding: EdgeInsets.only(top: 9.8.h, bottom: 22.dp),
              child: BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  if (state.getOrderDetailStatus is StatusLoading || state.getOrderDetailStatus is StatusInitial) {
                    return const PickupOrderDetailScreenPlaceholder();
                  }
                
                  return CustomScrollView(
                    slivers: [
                      _orderInfo(state),
                      OrderDetailnfo(
                        notes: state.orderDetails.driverNotes,
                        customer: _getCustomerName(state.orderDetails.customer),
                        amount: state.orderDetails.totalAmount,
                        title: state.orderDetails.status == 'pickedUp' ? "Pickedup" : "Pickup",
                        timeSlot: state.orderDetails.status == 'pickedUp' ? _calculatePickupTime(state) : _calculatePickupTime(state),
                        address: formatAddress(state.orderDetails.selectedAddress.place),
                        status: state.orderDetails.status,
                        onNavigateTap: () {
                          final lat = state.orderDetails.selectedAddress.latitude;
                          final lon = state.orderDetails.selectedAddress.longitude;
                          (lat == "" || lon == "")
                              ? TheToast.show(message: "This location is not available", context: context)
                              : MapNavigationHelper.openNavigation(double.tryParse(lat), double.tryParse(lon), context);
                        },
                        onCallTap: () {
                          LauncherUtils.launchPhoneDialer(state.orderDetails.customer.user?.phoneNumber ?? '', context: context);
                        },
                        onWhatsAppTap: () {
                          LauncherUtils.launchWhatsApp(state.orderDetails.customer.user?.phoneNumber ?? '', 'Hi', context: context);
                        },
                      ),
                      SliverToBoxAdapter(
                        child: ServicesWidget(
                          orderState: state,
                          orderId: widget.orderId,
                          scannedQRCodes: scannedQRCodes,
                          additionalNotesController: additionalNotesController,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                // Hide footer button when loading, initial state, or order is picked up
                if (state.getOrderDetailStatus is StatusLoading || state.getOrderDetailStatus is StatusInitial || state.orderDetails.status == 'pickedUp') {
                  return const SizedBox.shrink();
                }
                return Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: FooterButtons(
                    orderId: widget.orderId,
                    // additionalNotesController: additionalNotesController,
                   
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _orderInfo(OrderState state) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 16.dp, right: 16.dp, top: 8.dp),
        child: Column(
          children: [
            OrderInfoCard(
              label: "Order Type",
              value: state.orderDetails.type == "normalOrder" ? "Normal" : "Quick Order⚡",
            ),
            Gap(4.dp),
            OrderInfoCard(label: "Pickup Time", value: _calculatePickupTime(state)),
            if (state.orderDetails.payment.isNotEmpty) ...[
              Gap(4.dp),
              OrderInfoCard(
                label: "Payment Method",
                value: (state.orderDetails.payment).map((payment) => payment.method.toString()).join().toUpperCase(),
              ),
            ]
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context, int orderRefId) {
    final loading = context.read<OrderBloc>().state.getOrderDetailStatus is StatusLoading || context.read<OrderBloc>().state.getOrderDetailStatus is StatusInitial;
    return Container(
      padding: EdgeInsets.only(top: 7.h, left: 16.dp, right: 16.dp, bottom: 8.dp),
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
          if (loading) _shimmerContainer(),
          Text(
            "Order ID: #SPN$orderRefId",
            style: AppTypography.sfProRoundedSemiBold.copyWith(
              fontSize: 16.dp,
              color: AppColors.neutral950,
            ),
          ),
        ],
      ),
    );
  }

  Widget _shimmerContainer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: 20.dp,
        width: 20.w,
        decoration: BoxDecoration(
          color: AppColors.neutral50,
          borderRadius: BorderRadius.circular(2.dp),
        ),
      ),
    );
  }

  String formatSingleDate(String utcDate) {
    try {
      // Handle empty or null date strings
      if (utcDate.isEmpty) {
        return "Not specified";
      }

      final date = DateTime.parse(utcDate).toLocal();
      final now = DateTime.now();

      final today = DateTime(now.year, now.month, now.day);
      final tomorrow = today.add(const Duration(days: 1));
      final targetDate = DateTime(date.year, date.month, date.day);

      final timeFormat = DateFormat('h:mm a');

      if (targetDate == today) {
        return "Today, ${timeFormat.format(date)}";
      } else if (targetDate == tomorrow) {
        return "Tomorrow, ${timeFormat.format(date)}";
      } else {
        return DateFormat('MMM d, y – h:mm a').format(date);
      }
    } catch (e) {
      // Return a fallback value if date parsing fails
      return "Invalid date format";
    }
  }

  String _calculatePickupTime(OrderState state) {
    final orderDetails = state.orderDetails;
    final status = orderDetails.status.toLowerCase();

    // If status is 'pickedup', show time from changedAt in status history
    if (status == 'pickedup') {
      // Find the pickedup status from history
      final pickedupStatus = orderDetails.statusHistory.firstWhere(
        (s) => s.status.toLowerCase() == 'pickedup',
        orElse: () => const OrderStatus(),
      );

      if (pickedupStatus.changedAt.isNotEmpty) {
        return _formatToUAETime(pickedupStatus.changedAt);
      }
      return "Not specified";
    }

    // If status is not pickedup, take day from pickupAt and time from pickup time slot
    if (orderDetails.pickupAt.isNotEmpty && orderDetails.pickupSlot.from.isNotEmpty) {
      return _formatPickupTimeWithSlot(orderDetails.pickupAt, orderDetails.pickupSlot);
    }

    return "Not specified";
  }

  String _formatToUAETime(String utcString) {
    if (utcString.isEmpty) return "Not specified";
    try {
      // Parse UTC datetime and convert to UAE timezone (UTC+4)
      final utcDateTime = DateTime.parse(utcString);
      final uaeDateTime = utcDateTime.add(const Duration(hours: 4)); // UAE is UTC+4
      final now = DateTime.now();

      String dayLabel;
      // Check if it's today
      if (uaeDateTime.year == now.year && uaeDateTime.month == now.month && uaeDateTime.day == now.day) {
        dayLabel = "Today";
      }
      // Check if it's tomorrow
      else if (uaeDateTime.year == now.year && uaeDateTime.month == now.month && uaeDateTime.day == now.day + 1) {
        dayLabel = "Tomorrow";
      }
      // For other dates, show month and day
      else {
        dayLabel = DateFormat('MMM d').format(uaeDateTime);
      }

      final timeFormat = DateFormat('h:mm a');
      return "$dayLabel, ${timeFormat.format(uaeDateTime)}";
    } catch (e) {
      return "Invalid date format";
    }
  }

  String _formatPickupTimeWithSlot(String pickupAt, TimeSlot pickupSlot) {
    try {
      // Parse pickupAt date and pickup slot times
      final pickupDate = DateTime.parse(pickupAt);
      final fromTime = DateTime.parse(pickupSlot.from);
      final toTime = DateTime.parse(pickupSlot.to);

      // Convert to UAE timezone (UTC+4)
      final uaePickupDate = pickupDate.add(const Duration(hours: 4));
      final uaeFromTime = fromTime.add(const Duration(hours: 4));
      final uaeToTime = toTime.add(const Duration(hours: 4));

      final now = DateTime.now();
      String dayLabel;

      // Check if it's today
      if (uaePickupDate.year == now.year && uaePickupDate.month == now.month && uaePickupDate.day == now.day) {
        dayLabel = "Today";
      }
      // Check if it's tomorrow
      else if (uaePickupDate.year == now.year && uaePickupDate.month == now.month && uaePickupDate.day == now.day + 1) {
        dayLabel = "Tomorrow";
      }
      // For other dates, show month and day
      else {
        dayLabel = DateFormat('MMM d').format(uaePickupDate);
      }

      final timeFormat = DateFormat('h:mm a');
      return "$dayLabel, ${timeFormat.format(uaeFromTime)} – ${timeFormat.format(uaeToTime)}";
    } catch (e) {
      return "Invalid date format";
    }
  }
}

String formatAddress(String address) {
  return address
      .split('\n') // Split by newlines
      .where((line) => line.trim().isNotEmpty) // Remove empty lines
      .map((line) => line.trim()) // Trim whitespace from each line
      .join(', '); // Join with commas
}

String _getCustomerName(Customer customer) {
  if (customer.user != null) {
    final firstName = customer.user!.firstName.isNotEmpty ? customer.user!.firstName : '';
    final lastName = customer.user!.lastName.isNotEmpty ? customer.user!.lastName : '';
    if (firstName.isNotEmpty || lastName.isNotEmpty) {
      return "$firstName $lastName".trim();
    }
  }
  return "Customer";
}
