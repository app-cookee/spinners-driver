// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/services/api_services/environment/config.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/scan_new_bag_bottomsheet.dart';
import 'package:spinners_driver/src/presentation/views/widgets/custom_bottomsheet_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/qr_scanner_screen.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class QuickOrderBags extends StatelessWidget {
  const QuickOrderBags({
    super.key,
    required this.orderId,
    required this.scannedBags,
  });

  final String orderId;
  final ValueNotifier<Set<String>> scannedBags;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        // Group scanned bags by service
        final Map<String, Map<String, dynamic>> serviceGroups = {};
        
        for (final item in state.orderDetails.orderedItems) {
          if (item.scannedBags.isNotEmpty) {
            final serviceId = item.service.id;
            if (!serviceGroups.containsKey(serviceId)) {
              serviceGroups[serviceId] = {
                'serviceName': item.service.name,
                'serviceId': item.service.id,
                'serviceColor': item.service.color,
                'serviceIcon': item.service.icon,
                'scannedCount': item.scannedBags.length,
                'orderItemId': item.id,
              };
            }
          }
        }

        final groupedServices = serviceGroups.values.toList();

        if (groupedServices.isEmpty) {
          return const SizedBox.shrink();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.dp),
              itemCount: groupedServices.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final service = groupedServices[index];
                return _bagCard(context, service, index);
              },
            ),
          ],
        );
      },
    );
  }

  Widget _bagCard(BuildContext context, Map<String, dynamic> bag, int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.dp),
      padding: EdgeInsets.all(16.dp),
      decoration: BoxDecoration(
        color: AppColors.blue1,
        borderRadius: BorderRadius.circular(12.dp),
        gradient: const LinearGradient(
          colors: [AppColors.blue1, AppColors.blue1, AppColors.blue1, Color(0xffD8F1FC)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.33, 0.66, 1.0],
        ),
        border: Border.all(
          color: AppColors.primaryColor500,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor500.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.network(
            '${ApiUrls.stagingUrl}/${bag['serviceIcon']}',
            height: 32.dp,
            width: 32.dp,
          ),
          Gap(8.dp),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bag['serviceName'] as String,
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
                        color: hexToColor(bag['serviceColor'] as String? ?? '#000000'),
                      ),
                    ),
                    Gap(4.dp),
                    Text(
                      'x ${bag['scannedCount']}',
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
          InkWell(
            onTap: () => _handleScanForQuickOrder(context, bag),
            child: _scanButton(),
          ),
        ],
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

  Future<void> _handleScanForQuickOrder(BuildContext context, Map<String, dynamic> serviceData) async {
    final result = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (context) => const QRScannerScreen()),
    );

    if (result != null && result.isNotEmpty) {
      
      // Check if this QR has already been scanned
      if (scannedBags.value.contains(result)) {
        TheToast.show(
          isError: true,
          message: "This QR code has already been scanned",
          context: context,
        );
        return;
      }

      // Add to scanned bags set
      final newScannedSet = Set<String>.from(scannedBags.value);
      newScannedSet.add(result);
      scannedBags.value = newScannedSet;

      // Show bottomsheet with scanned data and pre-selected service
      if (context.mounted) {
        try {
          await CustomBottomSheetWidget(
            context: context,
            child: ScanNewBagBottomsheet(
              bagId: result,
              orderId: orderId,
              serviceId: serviceData['serviceId'] as String,
              serviceName: serviceData['serviceName'] as String,
              isQuickOrder: false,
            ),
          ).show();
        } catch (e) {
          // Fallback to simple bottom sheet
          await showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => Container(
              height: 200,
              color: Colors.white,
              child: Center(
                child: Text('Error showing bottom sheet: $e'),
              ),
            ),
          );
        }
      } else {
        log('Context is not mounted');
      }
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
