// ignore_for_file: use_build_context_synchronously

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
                          scannedBags: widget.scannedQRCodes,
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
                              // await _handleQuickOrderScan(context);
                              final result = await Navigator.push<String>(
                                context,
                                MaterialPageRoute(builder: (context) => const QRScannerScreen()),
                              );

                              CustomBottomSheetWidget(
                                context: context,
                                child: ScanNewBagBottomsheet(
                                  bagId: result,
                                  orderId: widget.orderId,
                                  isQuickOrder: true,
                                ),
                              ).show();
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
                additionalNotesController: widget.additionalNotesController,
                readOnly: widget.orderState.orderDetails.status == "pickedUp",
              ),
              SizedBox(height: 17.h)
            ],
          ),
        )
      ],
    );
  }

}
