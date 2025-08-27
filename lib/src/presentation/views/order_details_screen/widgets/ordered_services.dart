// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/services/api_services/environment/config.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/scan_new_bag_bottomsheet.dart';
import 'package:spinners_driver/src/presentation/views/widgets/custom_bottomsheet_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/qr_scanner_screen.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class OrderedServices extends StatelessWidget {
  const OrderedServices({
    super.key,
    required this.selectedIndex,
    required this.scannedItems,
    required this.orderId,
    required this.scannedQRCodes, required this.status,
  });

  final ValueNotifier<int?> selectedIndex;
  final ValueNotifier<Set<int>> scannedItems;
  final String orderId;
  final ValueNotifier<Set<String>> scannedQRCodes;
  final String status;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(builder: (context, state) {
      return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16.dp),
        itemCount: state.orderDetails.orderedItems.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => ValueListenableBuilder<int?>(
          valueListenable: selectedIndex,
          builder: (context, selected, child) {
            return ValueListenableBuilder<Set<int>>(
              valueListenable: scannedItems,
              builder: (context, scanned, child) {
                final isScanned = scanned.contains(index);
                return _orderedServiceCard(index, isScanned, state, context);
              },
            );
          },
        ),
      );
    });
  }

  Widget _orderedServiceCard(int index, bool isScanned, OrderState state, BuildContext context) {
    final orderedItem = state.orderDetails.orderedItems[index];
    final scannedBagsCount = orderedItem.scannedBags.length;
    final isFullyScanned = scannedBagsCount >= orderedItem.quantity;
    // The color should change when all items are scanned
    // The scannedBags array is only updated after successful API calls
    // If the API fails, the scannedBags won't be updated, so the color won't change
    // Additionally, we don't show completed color during loading operations
    final isOperationInProgress = (state.addBagStatus is StatusLoading || state.createNewBagStatus is StatusLoading);
    final shouldShowCompletedColor = isFullyScanned && !isOperationInProgress;

    return GestureDetector(
      onTap: () {
        selectedIndex.value = index;
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8.dp),
        padding: EdgeInsets.all(16.dp),
        decoration: BoxDecoration(
          color: shouldShowCompletedColor ? AppColors.blue1 : AppColors.neutral50,
          borderRadius: BorderRadius.circular(12.dp),
          gradient: shouldShowCompletedColor
              ? const LinearGradient(
                  colors: [AppColors.blue1, AppColors.blue1, AppColors.blue1, Color(0xffD8F1FC)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 0.33, 0.66, 1.0],
                )
              : null,
          border: Border.all(
            color: shouldShowCompletedColor ? AppColors.primaryColor500 : AppColors.lightGrey,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: shouldShowCompletedColor ? AppColors.primaryColor500.withValues(alpha: 0.1) : AppColors.lightGrey.withValues(alpha: 0.1),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  '${ApiUrls.stagingUrl}/${orderedItem.service.icon}',
                  height: 32.dp,
                  width: 32.dp,
                ),
                Gap(8.dp),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        orderedItem.service.name,
                        style: AppTypography.sfProRoundedSemiBold.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.neutral950,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Gap(4.dp),
                      Row(
                        children: [
                          SizedBox(
                            height: 20.dp,
                            width: 20.dp,
                            child: Image.asset(
                              AppImages.bag,
                              color: hexToColor(orderedItem.service.color),
                            ),
                          ),
                          Gap(4.dp),
                          Text(
                            'x ${orderedItem.quantity}',
                            style: AppTypography.sfProRoundedBold.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.primaryColor500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Only show scan button if service is not fully scanned
                // if (!isFullyScanned)
                if(status!='pickedUp')
                  InkWell(
                    onTap: () async {
                      await _handleScanForNormalOrder(context, orderedItem, index);
                    },
                    child: _scanButton(),
                  ),
              ],
            ),
           
          ],
        ),
      ),
    );
  }

  Widget _scanButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.dp, vertical: 6.dp),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: .14),
            spreadRadius: 0,
            blurRadius: 2,
            offset: const Offset(0, 0),
          )
        ],
        border: Border.all(color: AppColors.scanblue),
        borderRadius: BorderRadius.circular(8.dp),
      ),
      child: Row(
        spacing: 4.dp,
        children: [
          Image.asset(
            height: 24.dp,
            width: 24.dp,
            AppImages.scanner,
          ),
          Text(
            'Scan',
            style: AppTypography.sfProRoundedSemiBold.copyWith(
              fontSize: 14.sp,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _handleScanForNormalOrder(BuildContext context, dynamic orderedItem, int index) async {
    log('Scan button tapped for service: ${orderedItem.service.name}');
    log('Current scanned bags: ${orderedItem.scannedBags.length}');
    log('Required quantity: ${orderedItem.quantity}');
    
    // Navigate and wait for QR scan result
    final result = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (context) => const QRScannerScreen()),
    );

    log('QR scan result: $result');

    if (result != null && result.isNotEmpty) {
      // Check if this QR has already been scanned across all services
      if (scannedQRCodes.value.contains(result)) {
        log('QR code already scanned: $result');
        TheToast.show(
          isError: true,
          message: "This QR code has already been scanned",
          context: context,
        );
        return;
      }

      log('Showing bottomsheet for bag: $result');
      log('Service ID: ${orderedItem.service.id}');
      log('Service Name: ${orderedItem.service.name}');

      // Add to scanned QR codes set to prevent duplicates
      final newScannedQRCodes = Set<String>.from(scannedQRCodes.value);
      newScannedQRCodes.add(result);
      scannedQRCodes.value = newScannedQRCodes;

      // Show bottomsheet with scanned data and auto-filled service
      CustomBottomSheetWidget(
        context: context,
        child: ScanNewBagBottomsheet(
          bagId: result,
          orderId: orderId,
          serviceId: orderedItem.service.id, // Auto-fill the service
          serviceName: orderedItem.service.name, // Pass service name for display
          isQuickOrder: false,
        ),
      ).show();
    } else {
      log('No QR result received');
    }
  }

  Color hexToColor(String hex) {
    hex = hex.replaceAll('#', '');
    if (hex.length == 3) {
      hex = hex.split('').map((char) => char * 2).join();
    }
    if (hex.length == 6) {
      hex = 'FF$hex';
    }
    return Color(int.parse(hex, radix: 16));
  }
}