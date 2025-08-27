import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/utils/no_glow_scroll_behaviour.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/footer_buttons.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/order_detail_info.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/order_info_card.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/services_widget.dart';
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
  final TextEditingController additionalNotesController = TextEditingController();
  // Track scanned items and completion status for normal orders
  final ValueNotifier<Set<int>> scannedItems = ValueNotifier<Set<int>>({});
  // Track scanned QR codes to prevent duplicates
  final ValueNotifier<Set<String>> scannedQRCodes = ValueNotifier<Set<String>>({});
  late ValueNotifier<bool> allItemsScanned;

  @override
  void initState() {
    context.read<OrderBloc>().add(OrderEvent.getOrderDetails(orderId: widget.orderId));
    log('Fetching order details for order ID: ${widget.orderId}');
    allItemsScanned = ValueNotifier<bool>(false);

    // Listen to scanned items changes to update completion status
    scannedItems.addListener(_updateCompletionStatus);

    super.initState();
  }

  void _updateCompletionStatus() {
    final state = context.read<OrderBloc>().state;
    final orderType = state.orderDetails.type;

    if (orderType == "normalOrder") {
      // For normal orders, check if all items have their required quantity of bags scanned
      bool allComplete = true;
      for (final item in state.orderDetails.orderedItems) {
        if (item.scannedBags.length < item.quantity) {
          allComplete = false;
          break;
        }
      }
      allItemsScanned.value = allComplete && state.orderDetails.orderedItems.isNotEmpty;
    } else {
      // For quick orders, check if at least one bag has been scanned
      final totalScannedBags = state.orderDetails.orderedItems.fold<int>(0, (sum, item) => sum + item.scannedBags.length);
      allItemsScanned.value = totalScannedBags > 0;
    }
  }

  @override
  void dispose() {
    additionalNotesController.dispose();
    scannedItems.removeListener(_updateCompletionStatus);
    scannedItems.dispose();
    scannedQRCodes.dispose();
    allItemsScanned.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int?> selectedIndex = ValueNotifier<int?>(null);
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
                  //    if (state.getOrderDetailStatus is StatusLoading ||
                  //     state.getOrderDetailStatus is StatusInitial) {
                  //   return QuickOrderDetailShimmer(orderId: widget.orderId);
                  // }
                  // Update completion status when state changes
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    _updateCompletionStatus();
                  });
                  return CustomScrollView(
                    slivers: [
                      _orderInfo(state),
                      OrderDetailnfo(
                        notes: state.orderDetails.driverNotes,
                        customer: _getCustomerName(state.orderDetails.customer),
                        amount: state.orderDetails.totalAmount,
                        title: "Pickup",
                        timeSlot: state.orderDetails.status == '"pickedUp' ? _formatPickedupSlot(state.orderDetails.statusHistory[0].changedAt) : _formatPickupSlot(state.orderDetails.pickupSlot) ?? '',
                        address: formatAddress(state.orderDetails.selectedAddress.place),
                      ),
                      SliverToBoxAdapter(
                        child: ServicesWidget(
                          orderState: state,
                          orderId: widget.orderId,
                          selectedIndex: selectedIndex,
                          scannedItems: scannedItems,
                          scannedQRCodes: scannedQRCodes,
                          additionalNotesController: additionalNotesController,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            if (context.watch<OrderBloc>().state.orderDetails.status != 'pickedUp')
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: FooterButtons(
                  orderId: widget.orderId,
                  additionalNotesController: additionalNotesController,
                  allItemsScannedNotifier: allItemsScanned,
                ),
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
            OrderInfoCard(
                label: "Pickup Time",
                value: formatSingleDate(
                  state.orderDetails.pickupAt,
                )),
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

  // Helper method to format pickup slot
  String? _formatPickupSlot(TimeSlot? slot) {
    if (slot == null || slot.from.isEmpty || slot.to.isEmpty) return null;
    try {
      // Parse UTC datetime and convert to local
      final from = DateTime.parse(slot.from).toLocal();
      final to = DateTime.parse(slot.to).toLocal();
      final now = DateTime.now();
      String dayLabel;
      // Check if it's today
      if (from.year == now.year && from.month == now.month && from.day == now.day) {
        dayLabel = "Today";
      }
      // Check if it's tomorrow
      else if (from.year == now.year && from.month == now.month && from.day == now.day + 1) {
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
  String _formatPickedupSlot(String time) {
    if (time.isEmpty) return "Not specified";
    try {
      // Parse UTC datetime and convert to local
      final from = DateTime.parse(time).toLocal();
      final to = from.add(const Duration(hours: 1)); // Assuming 1-hour slot
      final now = DateTime.now();
      String dayLabel;
      // Check if it's today
      if (from.year == now.year && from.month == now.month && from.day == now.day) {
        dayLabel = "Today";
      }
      // Check if it's tomorrow
      else if (from.year == now.year && from.month == now.month && from.day == now.day + 1) {
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
      return time;
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

