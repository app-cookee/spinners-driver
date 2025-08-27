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
  const FooterButtons({super.key, required this.orderId, required this.additionalNotesController, required this.allItemsScannedNotifier});
  final String orderId;
  final TextEditingController additionalNotesController;
  final ValueNotifier<bool> allItemsScannedNotifier;
  @override
  State<FooterButtons> createState() => _FooterButtonsState();
}

class _FooterButtonsState extends State<FooterButtons> {
  @override
  Widget build(BuildContext context) {
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
            valueListenable: widget.allItemsScannedNotifier,
            builder: (context, isAllScanned, child) {
              return PrimaryButtonWidget(
                onPressed: () {
                  final orderType = context.read<OrderBloc>().state.orderDetails.type;

                  if (isAllScanned) {
                    context.read<OrderBloc>().add(OrderEvent.confirmPickup(
                          orderId: widget.orderId,
                          driverNotes: widget.additionalNotesController.text,
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
}
