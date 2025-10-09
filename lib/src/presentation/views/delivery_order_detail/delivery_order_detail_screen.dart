import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/delivery_bloc/delivery_bloc.dart';
import 'package:spinners_driver/src/application/network_bloc/network_bloc.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/utils/launcher_utils.dart';
import 'package:spinners_driver/src/presentation/utils/map_navigation_helper.dart';
import 'package:spinners_driver/src/presentation/views/delivery_order_detail/placeholder/order_detail_shimmer.dart';
import 'package:spinners_driver/src/presentation/views/delivery_order_detail/widgets/delivery_confirm_bottomsheet.dart';
import 'package:spinners_driver/src/presentation/views/delivery_order_detail/widgets/info_card.dart';
import 'package:spinners_driver/src/presentation/views/delivery_order_detail/widgets/delivery_order_invoice_detail.dart';
import 'package:spinners_driver/src/presentation/views/orders/widgets/ordered_card_button.dart';
import 'package:spinners_driver/src/presentation/views/widgets/no_network_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';
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
    return BlocBuilder<NetworkBloc, NetworkState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.white,
          body: (state == const NetworkState.success()) ? BlocBuilder<DeliveryBloc, DeliveryState>(
            builder: (context, dState) {
              return Stack(
                children: [
                  GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: _header(context)),
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
                                                  state.orderDetails
                                                      .deliverySlot,
                                                  state.orderDetails.status,
                                                  state.orderDetails
                                                      .statusHistory)),
                                          Gap(4.dp),
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (dState.orderDetails.payment
                                          .where((p) =>
                                              p.status.toLowerCase() ==
                                              "pending")
                                          .map((p) =>
                                              double.tryParse(p.amount) ?? 0.0)
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
                                                  backgroundColor:
                                                      const Color(0xFFFEF5D8),
                                                  label: "Pending Amount",
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.dp),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                           (state.orderDetails.customerNote?.note!=null&&state.orderDetails.customerNote?.note!="")
                                              ? Container(
                                                  width: 100.w,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          AppColors.secondary50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.dp)),
                                                  padding:
                                                      EdgeInsets.all(12.dp),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Image.asset(
                                                            AppImages
                                                                .instructions,
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
                                                        .customerNote?.note??"",
                                                        style: AppTypography
                                                            .sfProRoundedMedium
                                                            .copyWith(
                                                          fontSize: 12.dp,
                                                          color: AppColors
                                                              .neutral950,
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
                                                  if (state
                                                          .orderDetails
                                                          .customer
                                                          ?.user
                                                          ?.firstName !=
                                                      '')
                                                    Text(
                                                      '${state.orderDetails.customer?.user?.firstName ?? ''} ${state.orderDetails.customer?.user?.lastName ?? ''}',
                                                      style: AppTypography
                                                          .sfProRoundedSemiBold
                                                          .copyWith(
                                                        fontSize: 16.dp,
                                                        color: AppColors
                                                            .neutral950,
                                                      ),
                                                    )
                                                ],
                                              )
                                            ],
                                          ),
                                          // Gap(10.dp),
                                          // Row(
                                          //   spacing: 12.dp,
                                          //   children: [
                                          //     Image.asset(
                                          //       AppImages.clipboard,
                                          //       height: 40.dp,
                                          //       width: 40.dp,
                                          //     ),
                                          //     Column(
                                          //       crossAxisAlignment:
                                          //           CrossAxisAlignment.start,
                                          //       children: [
                                          //         Text(
                                          //           "Payment Method",
                                          //           style: AppTypography
                                          //               .sfProRoundedMedium
                                          //               .copyWith(
                                          //             fontSize: 12.dp,
                                          //             color: AppColors.textGrey,
                                          //           ),
                                          //         ),
                                          //         Text(
                                          //           (state.orderDetails.payment)
                                          //               .map((payment) => payment
                                          //                   .method
                                          //                   .toString())
                                          //               .join(),
                                          //           style: AppTypography
                                          //               .sfProRoundedSemiBold
                                          //               .copyWith(
                                          //             fontSize: 16.dp,
                                          //             color: AppColors.neutral950,
                                          //           ),
                                          //         )
                                          //       ],
                                          //     )
                                          //   ],
                                          // ),
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
                      child: dState.orderDetails.id.isEmpty||dState.orderDetails.status=="delivered"
                          ? const SizedBox.shrink()
                         
                          : _footerButton(state: dState,
                              isCompleted: dState.orderDetails.statusHistory
                                  .map((status) => status.status)
                                  .toSet()
                                  .contains('delivered'),
                              orderId: dState.orderDetails.id,
                              totalItemsCount:
                                  dState.orderDetails.orderedServices.length,
                              totalAmount: dState.orderDetails.payment
                                  .where((p) =>
                                      p.status.toLowerCase() == "pending")
                                  .map((p) => double.tryParse(p.amount) ?? 0.0)
                                  .fold(0.0, (sum, amt) => sum + amt))),
                ],
              );
            },
          ) : const Center(
          child: NoNetworkWidget(),
        ),
        );
      },
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
            "Order ID : ${widget.refId}",
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
      required bool isCompleted,
      required String orderId,
      required DeliveryState state}) {
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
          if (totalAmount > 0 && isCompleted == false)
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
                        orderRefId: widget.refId,
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
                      'AED $totalAmount',
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                        fontSize: 12.dp,
                        color: AppColors.white,
                      ),
                    ),
                    Gap(4.dp),
                    Gap(15.w)
                  ],
                )),
          if (!(totalAmount > 0) && isCompleted == false)
            BlocListener<DeliveryBloc, DeliveryState>(
              listener: (context, state) {
                if (state.confirmDeliveryStatus is StatusSuccess) {
                  context.read<DeliveryBloc>().add(
                      DeliveryEvent.getOrderDetails(orderId: widget.orderId));
                  TheToast.show(
                      message: 'Delivery confirmed successfully',
                      context: context,
                      isError: false);
                }
                if (state.confirmDeliveryStatus is StatusFailure) {
                  TheToast.show(
                      message: state.confirmDeliveryStatus.errorMessage,
                      context: context,
                      isError: true);
                }
              },
              listenWhen: (previous, current) =>
                  previous.confirmDeliveryStatus !=
                  current.confirmDeliveryStatus,
              child: BlocBuilder<DeliveryBloc, DeliveryState>(
                builder: (context, state) {
                  return PrimaryButtonWidget(
                    isLoading: state.confirmDeliveryStatus is StatusLoading,
                    onPressed: () {
                      context.read<DeliveryBloc>().add(
                          DeliveryEvent.confirmDelivery(
                              id: orderId,
                              paymentMethod: 'cod',
                              receivedAmount: 0));
                    },
                    text: "Confirm Delivery",
                  );
                },
              ),
            ),
          Gap(8.dp),
           
          PrimaryButtonWidget(
            buttonBgImage: AppImages.buttonGreyBg,
            backgroundColor: AppColors.grey1Color,
            onPressed: () {
              LauncherUtils.launchWhatsApp(state.orderDetails.store?.contactNumber??"", "");
            },
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
              lat: state.orderDetails.selectedAddress?.latitude ?? '',
              lon: state.orderDetails.selectedAddress?.longitude ?? '',
              mobileNumber:
                  state.orderDetails.customer?.user?.phoneNumber ?? '',
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
    required String lat,
    required String lon,
    String? deliveryLocation,
    required String mobileNumber,
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
                onTap: () {
                  (lat == null || lon == null || lat == "" || lon == "")
                      ? TheToast.show(
                          message: "This location is not available",
                          context: context)
                      : MapNavigationHelper.openNavigation(
                          double.tryParse(lat), double.tryParse(lon), context);
                },
              ),
              Gap(4.dp),
              OrderCardButton(
                widthFactor: 40 / 376,
                icon: AppImages.phoneIcon,
                borderColor: AppColors.greyColor,
                textColor: AppColors.grey1Color,
                onTap: () {
                  LauncherUtils.launchPhoneDialer(mobileNumber,
                      context: context);
                },
              ),
              Gap(4.dp),
              OrderCardButton(
                widthFactor: 40 / 376,
                icon: AppImages.whatsapp,
                borderColor: AppColors.greyColor,
                textColor: AppColors.grey1Color,
                onTap: () {
                  LauncherUtils.launchWhatsApp(mobileNumber, 'Hi',
                      context: context);
                },
              ),
            ],
          )
        ]
      ],
    );
  }

// Helper method to format changedAt timestamp for status history
  String formatUtcToUae(String utcString) {
    if (utcString.isEmpty) return "";
    try {
      // Convert UTC to UAE time (UTC+4)
      DateTime uaeDateTime = convertUtcToUaeTime(utcString);
      DateTime nowInUae =
          convertUtcToUaeTime(DateTime.now().toUtc().toIso8601String());

      // Check if it's today in UAE
      if (uaeDateTime.year == nowInUae.year &&
          uaeDateTime.month == nowInUae.month &&
          uaeDateTime.day == nowInUae.day) {
        return "Today, ${DateFormat('h:mm a').format(uaeDateTime)}";
      }
      // Check if it's tomorrow in UAE
      else if (uaeDateTime.year == nowInUae.year &&
          uaeDateTime.month == nowInUae.month &&
          uaeDateTime.day == nowInUae.day + 1) {
        return "Tomorrow, ${DateFormat('h:mm a').format(uaeDateTime)}";
      }
      // For other dates
      else {
        return DateFormat("MMM d, h:mm a").format(uaeDateTime);
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
        date = convertUtcToUaeTime(deliveredStatus.changedAt);
      }
    } else {
      // Use deliveryAt date + slot time
      date = convertUtcToUaeTime(utcDate);

      if (slot != null && slot.from.isNotEmpty && slot.to.isNotEmpty) {
        fromTime = convertUtcToUaeTime(slot.from);
        toTime = convertUtcToUaeTime(slot.to);
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
}

DateTime convertUtcToUaeTime(String utcString) {
  if (utcString.isEmpty) return DateTime.now();
  try {
    DateTime utcDateTime = DateTime.parse(utcString);
    // UAE is UTC+4
    return utcDateTime.add(const Duration(hours: 4));
  } catch (e) {
    return DateTime.now();
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
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
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
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
