import 'package:flutter/material.dart';
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
import 'package:spinners_driver/src/presentation/views/widgets/qr_scanner_screen.dart';
import 'package:spinners_driver/src/presentation/views/widgets/secondary_button_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key, required this.orderState, required this.orderId, required this.selectedIndex, required this.scannedItems, required this.scannedQRCodes, required this.additionalNotesController, });
  final OrderState orderState;
  final String orderId;
  final ValueNotifier<int?> selectedIndex;
  final ValueNotifier<Set<int>> scannedItems;
  final ValueNotifier<Set<String>> scannedQRCodes;
  final TextEditingController additionalNotesController;
  @override
  Widget build(BuildContext context) {
    return Column(
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
              orderState.orderDetails.type == "normalOrder"
                  ? OrderedServices(
                      selectedIndex: selectedIndex,
                      scannedItems: scannedItems,
                      orderId: orderId,
                      scannedQRCodes: scannedQRCodes,
                      status: orderState.orderDetails.status,
                    )
                  : const SizedBox.shrink(),
              orderState.orderDetails.type != "normalOrder"
                  ? Column(
                      children: [
                        QuickOrderBags(
                          orderId: orderId,
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
    );
  }
    // Add this method to the _OrderDetailScreenState class:
  Future<void> _handleQuickOrderScan(BuildContext context) async {
    final result = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (context) => const QRScannerScreen()),
    );

    if (result != null && result.isNotEmpty) {
      // // Check if this QR has already been scanned
      // if (scannedQRCodes.value.contains(result)) {
      //   TheToast.show(
      //     isError: true,
      //     message: "This QR code has already been scanned",
      //     context: context,
      //   );
      //   return;
      // }

      // Add to scanned QR codes set
      final newScannedQRCodes = Set<String>.from(scannedQRCodes.value);
      newScannedQRCodes.add(result);
      scannedQRCodes.value = newScannedQRCodes;

      // Show bottomsheet with scanned data
      CustomBottomSheetWidget(
        context: context,
        child: ScanNewBagBottomsheet(
          bagId: result,
          orderId: orderId,
          isQuickOrder: true,
        ),
      ).show();
    }
  }
}
