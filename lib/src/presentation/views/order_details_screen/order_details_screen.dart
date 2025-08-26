import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/utils/no_glow_scroll_behaviour.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/scan_new_bag_bottomsheet.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/additional_notes.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/order_detail_info.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/order_info_card.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/ordered_services.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/quick_order_bags.dart';
import 'package:spinners_driver/src/presentation/views/widgets/custom_bottomsheet_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/dashed_divider.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/qr_scanner_screen.dart';
import 'package:spinners_driver/src/presentation/views/widgets/secondary_button_widget.dart';
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
  final TextEditingController additionalNotesController = TextEditingController();
  // Track scanned items and completion status for normal orders
  final ValueNotifier<Set<int>> scannedItems = ValueNotifier<Set<int>>({});
  // Track scanned QR codes to prevent duplicates
  final ValueNotifier<Set<String>> scannedQRCodes = ValueNotifier<Set<String>>({});
  late ValueNotifier<bool> allItemsScanned;

  @override
  void initState() {
    context.read<OrderBloc>().add(const OrderEvent.getOrderDetails(orderId: /*'900dbeab-0ced-4974-834f-13db0f10a1ef'- quick ordr*/ '3ea0f455-1b80-48af-b6bd-41a84bc10311'));
    // context.read<OrderBloc>().add(OrderEvent.getOrderDetails(orderId: '900dbeab-0ced-4974-834f-13db0f10a1ef'));
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
                        timeSlot: _formatPickupSlot(state.orderDetails.pickupSlot) ?? '',
                        address: formatAddress(state.orderDetails.selectedAddress.place),
                      ),
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            Gap(20.dp),
                            Container(
                              decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [AppColors.grey, AppColors.white])),
                              width: 100.w,

                              // color: const Color.fromARGB(255, 226, 218, 218),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const DashedDivider(),
                                  Gap(20.dp),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.dp),
                                    child: Text(
                                      "Services",
                                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                                        fontSize: 12.dp,
                                        color: AppColors.textGrey,
                                      ),
                                    ),
                                  ),
                                  Gap(6.dp),
                                  state.orderDetails.type == "normalOrder"
                                      ? OrderedServices(
                                          selectedIndex: selectedIndex,
                                          scannedItems: scannedItems,
                                          orderId: widget.orderId,
                                          scannedQRCodes: scannedQRCodes,
                                        )
                                      : const SizedBox.shrink(),
                                  state.orderDetails.type != "normalOrder"
                                      ? Column(
                                          children: [
                                            QuickOrderBags(
                                              orderId: widget.orderId,
                                              scannedBags: scannedQRCodes,
                                            ),
                                            Gap(8.dp),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 16.dp),
                                              child: SecondaryButtonWidget(
                                                height: 48.dp,
                                                bordercolor: AppColors.scanblue,
                                                backgroundColor: AppColors.white,
                                                textColor: AppColors.primaryColor,
                                                style: AppTypography.sfProRoundedSemiBold.copyWith(
                                                  fontSize: 14.sp,
                                                  color: AppColors.primaryColor,
                                                ),
                                                onPressed: () async {
                                                  await _handleQuickOrderScan(context);
                                                },
                                                text: "Scan New Bag",
                                                leadingIcon: Image.asset(
                                                  height: 24.dp,
                                                  width: 24.dp,
                                                  AppImages.scanner,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      : const SizedBox.shrink(),
                                  Gap(8.dp),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.dp),
                                    child: Text(
                                      "Additional Notes",
                                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                                        fontSize: 12.dp,
                                        color: AppColors.textGrey,
                                      ),
                                    ),
                                  ),
                                  Gap(6.dp),
                                  AdditionalNotes(
                                    additionalNotesController: additionalNotesController,
                                  ),
                                  SizedBox(height: 17.h)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Positioned(bottom: 0, left: 0, right: 0, child: _footerButton(context.read<OrderBloc>().state.orderDetails.type))
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

  Widget _footerButton(
    String type,
  ) {
    final isLoading = context.watch<OrderBloc>().state.confirmPickupStatus is StatusLoading;
    final isConfirmPickup = context.watch<OrderBloc>().state.confirmPickupStatus is StatusSuccess;
    return Container(
      padding: EdgeInsets.only(top: 12.dp, left: 16.dp, right: 16.dp, bottom: 21.dp),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(offset: const Offset(0, -113), color: const Color(0xFF000000).withValues(alpha: 0), blurRadius: 32, spreadRadius: 0),
          BoxShadow(offset: const Offset(0, -72), color: const Color(0xFF000000).withValues(alpha: 0), blurRadius: 29, spreadRadius: 0),
          BoxShadow(offset: const Offset(0, -41), color: const Color(0xFF000000).withValues(alpha: 0.02), blurRadius: 24, spreadRadius: 0),
          BoxShadow(offset: const Offset(0, -18), color: const Color(0xFF000000).withValues(alpha: 0.03), blurRadius: 18, spreadRadius: 0),
          BoxShadow(offset: const Offset(0, -5), color: const Color(0xFF000000).withValues(alpha: 0.03), blurRadius: 10, spreadRadius: 0),
        ],
      ),
      child: Column(
        children: [
          ValueListenableBuilder<bool>(
            valueListenable: allItemsScanned,
            builder: (context, isAllScanned, child) {
              return PrimaryButtonWidget(
                onPressed: () {
                  final orderType = context.read<OrderBloc>().state.orderDetails.type;

                  if (isAllScanned) {
                    context.read<OrderBloc>().add(OrderEvent.confirmPickup(
                          orderId: widget.orderId,
                          driverNotes: additionalNotesController.text,
                        ));
                  } else {
                    final message = orderType == "normalOrder" ? "Please scan all required bags for each service" : "Please scan at least one bag";
                    TheToast.show(
                      isError: true,
                      message: message,
                      context: context,
                    );
                  }

                  if (isConfirmPickup) {
                    context.router.pop();
                  }
                },
                isLoading: isLoading,
                text: "Confirm Pickup",
                height: 48.dp,
                // You can add different styling for disabled state if your PrimaryButtonWidget supports it
              );
            },
          ),
          Gap(8.dp),
          SecondaryButtonWidget(
            onPressed: () {
              context.router.pop();
            },
            text: "Cancel",
            height: 48.dp,
            backgroundColor: AppColors.textGrey,
          ),
        ],
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

  // Add this method to the _OrderDetailScreenState class:
  Future<void> _handleQuickOrderScan(BuildContext context) async {
    final result = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (context) => const QRScannerScreen()),
    );

    if (result != null && result.isNotEmpty) {
      // Check if this QR has already been scanned
      if (scannedQRCodes.value.contains(result)) {
        TheToast.show(
          isError: true,
          message: "This QR code has already been scanned",
          context: context,
        );
        return;
      }

      // Add to scanned QR codes set
      final newScannedQRCodes = Set<String>.from(scannedQRCodes.value);
      newScannedQRCodes.add(result);
      scannedQRCodes.value = newScannedQRCodes;

      // Show bottomsheet with scanned data
      CustomBottomSheetWidget(
        context: context,
        child: ScanNewBagBottomsheet(
          bagId: result,
          orderId: widget.orderId,
          isQuickOrder: true,
        ),
      ).show();
    }
  }
}
