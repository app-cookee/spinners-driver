import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/secondary_button_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';
class FooterButtons extends StatefulWidget {
  const FooterButtons({
    super.key,
    required this.orderId,
    required this.additionalNotesController,
  });
  final String orderId;
  final TextEditingController additionalNotesController;
  @override
  State<FooterButtons> createState() => _FooterButtonsState();
}

class _FooterButtonsState extends State<FooterButtons> {
  /// Checks if the order can be confirmed based on bag scanning requirements
  bool _canConfirmPickup(OrderState state) {
    final orderDetails = state.orderDetails;
    final orderType = orderDetails.type;
    final orderedItems = orderDetails.orderedItems;

    // If no ordered items, cannot confirm
    if (orderedItems.isEmpty) {
      return false;
    }

    // For normal orders, all bags must be scanned
    if (orderType == 'normalOrder') {
      for (final item in orderedItems) {
        // Check if the number of scanned bags equals the quantity for each service
        if (item.scannedBags.length < item.quantity) {
          return false;
        }
      }
      return true;
    } else {
      // For non-normal orders (express, quick, etc.), at least one bag must be scanned
      int totalScannedBags = 0;
      for (final item in orderedItems) {
        totalScannedBags += item.scannedBags.length;
      }
      return totalScannedBags > 0;
    }
  }

  /// Gets the appropriate error message based on order type and scanning status
  String _getErrorMessage(OrderState state) {
    final orderDetails = state.orderDetails;
    final orderType = orderDetails.type;
    final orderedItems = orderDetails.orderedItems;

    if (orderedItems.isEmpty) {
      return "No items found in this order";
    }

    if (orderType == 'normalOrder') {
      // Check which services are missing bags
      List<String> missingServices = [];
      for (final item in orderedItems) {
        if (item.scannedBags.length < item.quantity) {
          missingServices.add(item.service.name);
        }
      }
      
      if (missingServices.isNotEmpty) {
        return "Please scan all bags for: ${missingServices.join(', ')}";
      }
    } else {
      // For non-normal orders, check if any bags are scanned
      int totalScannedBags = 0;
      for (final item in orderedItems) {
        totalScannedBags += item.scannedBags.length;
      }
      
      if (totalScannedBags == 0 && orderType!='normalOrder') {
        return "Please scan at least one bag to confirm pickup";
      }
      if(orderType=='normalOrder' && totalScannedBags==0){
        return "Please scan at least one bag for each service";
      }
    }

    return "Unable to confirm pickup";
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrderBloc, OrderState>(
      listener: (context, state) {
        // Handle success state here
        if (state.confirmPickupStatus is StatusSuccess) {
          context.router.pop();
        }
      },
      listenWhen: (previous, current) => current.confirmPickupStatus != previous.confirmPickupStatus,
      child: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          final isLoading = state.confirmPickupStatus is StatusLoading;
          final canConfirm = _canConfirmPickup(state);
          
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
                PrimaryButtonWidget(
                  onPressed: canConfirm ? () {
                    context.read<OrderBloc>().add(OrderEvent.confirmPickup(
                          orderId: widget.orderId,
                          driverNotes: widget.additionalNotesController.text,
                        ));
                  } : () {
                    // Show error message when conditions are not met
                    TheToast.show(
                      isError: true,
                      message: _getErrorMessage(state),
                      context: context,
                    );
                  },
                  // onPressed: () {
                  //      context.read<OrderBloc>().add(OrderEvent.confirmPickup(
                  //         orderId: widget.orderId,
                  //         driverNotes: widget.additionalNotesController.text,
                  //       ));
                  // },
                  isLoading: isLoading,
                  text: "Confirm Pickup",
                  height: 48.dp,
                  backgroundColor: canConfirm ? null : AppColors.grey1Color,
                  // You can add different styling for disabled state if your PrimaryButtonWidget supports it
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
        },
      ),
    );
  }
}