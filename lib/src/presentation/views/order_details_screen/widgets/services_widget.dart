// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/additional_notes.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/ordered_services.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/quick_order_bags.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/scan_new_bag_bottomsheet.dart';
import 'package:spinners_driver/src/presentation/views/widgets/custom_bottomsheet_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/dashed_divider.dart';
import 'package:spinners_driver/src/presentation/views/widgets/qr_scanner_screen_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/secondary_button_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({
    super.key,
    required this.orderState,
    required this.orderId,
    required this.scannedQRCodes,
    required this.additionalNotesController, 
  });
  final OrderState orderState;
  final String orderId;
  final ValueNotifier<Set<String>> scannedQRCodes;
  final TextEditingController additionalNotesController;


  @override
  State<ServicesWidget> createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
  @override
  void initState() {
    super.initState();
    _populateAdditionalNotes();
  }

  @override
  void didUpdateWidget(ServicesWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Update additional notes when order state changes
    if (oldWidget.orderState.orderDetails.id != widget.orderState.orderDetails.id ||
        oldWidget.orderState.orderDetails.status != widget.orderState.orderDetails.status ||
        oldWidget.orderState.orderDetails.driverNote?.note != widget.orderState.orderDetails.driverNote?.note) {
      _populateAdditionalNotes();
    }
  }
  

  void _populateAdditionalNotes() {
    // If status is pickedUp and there are driver notes, populate the controller
    if (widget.orderState.orderDetails.status == "pickedUp" && widget.orderState.orderDetails.driverNote != null&& widget.orderState.orderDetails.driverNote!.note.isNotEmpty) {
      widget.additionalNotesController.text = widget.orderState.orderDetails.driverNote!.note;
    } else {
      // Clear the controller if there are no driver notes or status is not pickedUp
      // This ensures notes from previous orders don't persist
      widget.additionalNotesController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Debug logging to see when the widget rebuilds
    log('ServicesWidget rebuilding with ${widget.orderState.orderDetails.orderedServices.length} ordered items');
       
    for (final service in widget.orderState.orderDetails.orderedServices) {
         log('Single Service $service');

    log('Service ${service.service.name}: ${service.bags.length} bags');
  }

    return BlocListener<OrderBloc, OrderState>(
      listenWhen: (previous, current) => previous.orderDetails.orderedServices != current.orderDetails.orderedServices,
      listener: (context, state) {
        log('ServicesWidget: Order details changed - ${state.orderDetails.orderedServices.length} ordered items');
        for (final item in state.orderDetails.orderedServices) {
          log('Service ${item.service.name}: ${item.bags.length} bags');
        }
      },
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
                if (widget.orderState.orderDetails.orderedServices.isNotEmpty) ...[
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
                ],
                widget.orderState.orderDetails.type == "normalOrder"
                    ? OrderedServices(
                        orderId: widget.orderId,
                        status: widget.orderState.orderDetails.status,
                      )
                    : const SizedBox.shrink(),
                widget.orderState.orderDetails.type != "normalOrder"
                    ? Column(
                        children: [
                          QuickOrderBags(
                            orderId: widget.orderId,
                            // scannedBags: widget.scannedQRCodes,
                            status: widget.orderState.orderDetails.status,
                          ),
                          if (widget.orderState.orderDetails.status != 'pickedUp') ...[
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
                                  // await _handleQuickOrderScan(context);
                                  final result = await Navigator.push<Map<String, dynamic>>(
                                    context,
                                    MaterialPageRoute(builder: (context) => const QRScannerScreenWidget()),
                                  );

                                  // Only show bottomsheet if QR value is provided
                                  if (result != null && result.isNotEmpty) {
                                      final bagId = result["bagId"];
                                  final isManual = result["isManual"] ;
                                    CustomBottomSheetWidget(
                                      context: context,
                                      child: ScanNewBagBottomsheet(
                                        serviceMenuId:widget.orderState.orderDetails.serviceMenu?.id ,
                                          bagId:bagId,
                                    editableId: isManual,
                                        orderId: widget.orderId,
                                        isQuickOrder: true,
                                      ),
                                    ).show();
                                  }
                                  // If no QR value, just return to OrderDetailScreen (no bottomsheet)
                                },
                                text: "Scan New Bag",
                                leadingIcon: Image.asset(
                                  height: 24.dp,
                                  width: 24.dp,
                                  AppImages.scanner,
                                ),
                              ),
                            ),
                          ]
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
                  additionalNotesController: widget.additionalNotesController,
                  readOnly: widget.orderState.orderDetails.status == "pickedUp",
                ),
                SizedBox(height: 17.h)
              ],
            ),
          )
        ],
      ),
    );
  }
}
