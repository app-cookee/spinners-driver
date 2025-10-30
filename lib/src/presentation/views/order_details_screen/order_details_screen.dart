import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/network_bloc/network_bloc.dart';
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
import 'package:spinners_driver/src/presentation/views/widgets/no_network_widget.dart';
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
    context
        .read<OrderBloc>()
        .add(OrderEvent.getOrderDetails(orderId: widget.orderId));
    log('Fetching order details for order ID: ${widget.orderId}');

    super.initState();
    // Clear any previous notes when initializing
    additionalNotesController.clear();
  }

  @override
  void didUpdateWidget(OrderDetailScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Clear additional notes when order changes
    if (oldWidget.orderId != widget.orderId) {
      additionalNotesController.clear();
      log('Order changed from ${oldWidget.orderId} to ${widget.orderId}, cleared additional notes');
    }
  }

  @override
  void dispose() {
    additionalNotesController.dispose();
    super.dispose();
  }

  final TextEditingController additionalNotesController =
      TextEditingController();
  final ValueNotifier<Set<String>> scannedQRCodes =
      ValueNotifier<Set<String>>({});
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoGlowScrollBehavior(),
      child: BlocBuilder<NetworkBloc, NetworkState>(
        builder: (context, networkState) {
          return Scaffold(
            backgroundColor: AppColors.white,
            body: (networkState == const NetworkState.success()) ? BlocListener<OrderBloc, OrderState>(
              listenWhen: (previous, current) =>
                  previous.orderDetails.id != current.orderDetails.id ||
                  previous.getOrderDetailStatus !=
                      current.getOrderDetailStatus ||
                  previous.orderDetails.orderedServices !=
                      current.orderDetails.orderedServices,
              listener: (context, state) {
                // Log when the listener is triggered
                log('OrderBloc state changed - Order ID: ${state.orderDetails.id}, Ordered Items: ${state.orderDetails.orderedServices.length}');

                // Clear additional notes when order details change or when a new order is fetched
                if (state.orderDetails.id.isNotEmpty &&
                    state.orderDetails.id != widget.orderId &&
                    state.getOrderDetailStatus is StatusSuccess) {
                  additionalNotesController.clear();
                  log('Order details changed, cleared additional notes for order: ${state.orderDetails.id}');
                }
                // Also clear when current order details are successfully fetched (to ensure clean state)
                if (state.orderDetails.id == widget.orderId &&
                    state.getOrderDetailStatus is StatusSuccess) {
                  // Only clear if there are no driver notes for picked up orders
                  if (state.orderDetails.status != "pickedUp" ||
                      state.orderDetails.driverNote==null) {
                    additionalNotesController.clear();
                    log('Cleared additional notes for current order: ${state.orderDetails.id}');
                  }
                }
              },
              child: BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  log('ServicesWidget  with ${state.orderDetails.orderedServices} ordered items');
                  return Stack(
                    children: [
                      GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: _header(context, state.orderDetails.refId)),
                      Padding(
                        padding: EdgeInsets.only(top: 9.8.h, bottom: 22.dp),
                        child: Builder(
                          builder: (context) {
                            if (state.getOrderDetailStatus is StatusLoading ||
                                state.getOrderDetailStatus is StatusInitial) {
                              return const PickupOrderDetailScreenPlaceholder();
                            }

                            return CustomScrollView(
                              slivers: [
                                _orderInfo(state),
                                OrderDetailnfo(
                                  notes: state.orderDetails.customerNote?.note??"",
                                  customer: _getCustomerName(
                                      state.orderDetails.customer),
                                  amount:state.orderDetails.payment
                                  .where((p) =>
                                      p.status.toLowerCase() == "pending")
                                  .map((p) => double.tryParse(p.amount) ?? 0.0)
                                  .fold(0.0, (sum, amt) => sum + amt),
                                  title: state.orderDetails.status == 'pickedUp'
                                      ? "Pickedup"
                                      : "Pickup",
                                  timeSlot:
                                      state.orderDetails.status == 'pickedUp'
                                          ? _calculatePickupTime(state)
                                          : _calculatePickupTime(state),
                                  address: formatAddress(
                                      state.orderDetails.selectedAddress.place),
                                  status: state.orderDetails.status,
                                  onNavigateTap: () {
                                    final lat = state
                                        .orderDetails.selectedAddress.latitude;
                                    final lon = state
                                        .orderDetails.selectedAddress.longitude;
                                    (lat == "" || lon == "")
                                        ? TheToast.show(
                                            message:
                                                "This location is not available",
                                            context: context)
                                        : MapNavigationHelper.openNavigation(
                                            double.tryParse(lat),
                                            double.tryParse(lon),
                                            context);
                                  },
                                  onCallTap: () {
                                    LauncherUtils.launchPhoneDialer(
                                        state.orderDetails.customer.user
                                                ?.phoneNumber ??
                                            '',
                                        context: context);
                                  },
                                  onWhatsAppTap: () {
                                    LauncherUtils.launchWhatsApp(
                                        state.orderDetails.customer.user
                                                ?.phoneNumber ??
                                            '',
                                        'Hi',
                                        context: context);
                                  },
                                ),
                                SliverToBoxAdapter(
                                  child: ServicesWidget(
                                    
                                    orderState: state,
                                    orderId: widget.orderId,
                                    scannedQRCodes: scannedQRCodes,
                                    additionalNotesController:
                                        additionalNotesController,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          // Hide footer button when loading, initial state, or order is picked up
                          if (state.getOrderDetailStatus is StatusLoading ||
                              state.getOrderDetailStatus is StatusInitial ||
                              state.orderDetails.status == 'pickedUp') {
                            return const SizedBox.shrink();
                          }
                          return Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: FooterButtons(
                              orderId: widget.orderId,
                              additionalNotesController:
                                  additionalNotesController,
                            ),
                          );
                        },
                      )
                    ],
                  );
                },
              ),
            ) : const Center(
              child: NoNetworkWidget(),
            ),
          );
        },
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
              value: state.orderDetails.type == "normalOrder"
                  ? "Normal"
                  : "Quick Order⚡",
            ),
            Gap(4.dp),
            OrderInfoCard(
                label: state.orderDetails.status == 'pickedUp'
                    ? "Pickedup Time"
                    : "Pickup Time",
                value: _calculatePickupTime(state)),
            // if (state.orderDetails.payment.isNotEmpty) ...[
            //   Gap(4.dp),
            //   OrderInfoCard(
            //     label: "Payment Method",
            //     value: (state.orderDetails.payment).map((payment) => payment.method.toString()).join().toUpperCase(),
            //   ),
            // ]
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context, String orderRefId) {
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
            "Order ID : $orderRefId",
            style: AppTypography.sfProRoundedSemiBold.copyWith(
              fontSize: 16.dp,
              color: AppColors.neutral950,
            ),
          ),
        ],
      ),
    );
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
    if (orderDetails.pickupAt.isNotEmpty &&
        orderDetails.pickupSlot.from.isNotEmpty) {
      return _formatPickupTimeWithSlot(
          orderDetails.pickupAt, orderDetails.pickupSlot);
    }

    return "Not specified";
  }

  String _formatToUAETime(String utcString) {
    if (utcString.isEmpty) return "Not specified";
    try {
      // Parse UTC datetime and convert to UAE timezone (UTC+4)
      final utcDateTime = DateTime.parse(utcString);
      final uaeDateTime =
          utcDateTime.add(const Duration(hours: 4)); // UAE is UTC+4
      final now = DateTime.now();

      String dayLabel;
      // Check if it's today
      if (uaeDateTime.year == now.year &&
          uaeDateTime.month == now.month &&
          uaeDateTime.day == now.day) {
        dayLabel = "Today";
      }
      // Check if it's tomorrow
      else if (uaeDateTime.year == now.year &&
          uaeDateTime.month == now.month &&
          uaeDateTime.day == now.day + 1) {
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
      if (uaePickupDate.year == now.year &&
          uaePickupDate.month == now.month &&
          uaePickupDate.day == now.day) {
        dayLabel = "Today";
      }
      // Check if it's tomorrow
      else if (uaePickupDate.year == now.year &&
          uaePickupDate.month == now.month &&
          uaePickupDate.day == now.day + 1) {
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
    final firstName =
        customer.user!.firstName.isNotEmpty ? customer.user!.firstName : '';
    final lastName =
        customer.user!.lastName.isNotEmpty ? customer.user!.lastName : '';
    if (firstName.isNotEmpty || lastName.isNotEmpty) {
      return "$firstName $lastName".trim();
    }
  }
  return "Customer";
}
