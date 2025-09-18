// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:spinners_driver/app/services/api_services/environment/config.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/scan_new_bag_bottomsheet.dart';
import 'package:spinners_driver/src/presentation/views/widgets/custom_bottomsheet_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/qr_scanner_screen_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class OrderedServices extends StatelessWidget {
  const OrderedServices({
    super.key,
    required this.orderId,
    required this.status,
  });

  final String orderId;
  final String status;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(builder: (context, state) {
      // Get unique services by name to avoid duplicates
      final seenServices = <String>{};
      final uniqueServices = <dynamic>[];
      
      for (final orderedService  in state.orderDetails.orderedServices) {
        final serviceName = orderedService.service.name;
        if (!seenServices.contains(serviceName)) {
          seenServices.add(serviceName);
          uniqueServices.add(orderedService);
        }
      }

      return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16.dp),
          itemCount: uniqueServices.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => _orderedServiceCard(index, uniqueServices, state, context));
    });
  }

  Widget _orderedServiceCard(int index, List<dynamic> uniqueServices, OrderState state, BuildContext context) {
    final orderedService  = uniqueServices[index];
    final scannedBagsCount =  orderedService.bags.length;
    return Container(
      margin: EdgeInsets.only(bottom: 8.dp),
      padding: EdgeInsets.all(16.dp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.dp),
        gradient: scannedBagsCount > 0
            ? const LinearGradient(
                colors: [AppColors.blue1, AppColors.blue1, AppColors.blue1, Color(0xffD8F1FC)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.33, 0.66, 1.0],
              )
            : null,
        border: Border.all(
          color: scannedBagsCount > 0 ? AppColors.primaryColor500 : AppColors.lightGrey,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: scannedBagsCount > 0 ? AppColors.primaryColor500.withValues(alpha: 0.1) : AppColors.lightGrey.withValues(alpha: 0.1),
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
              // Show service icon if available, otherwise show a placeholder
              if (orderedService.service.icon.isNotEmpty)
                CachedNetworkImage(
                  imageUrl: '${ApiUrls.stagingUrl}/${orderedService .service.icon}',
                  height: 32.dp,
                  width: 32.dp,
                  placeholder: (context, url) => SizedBox(
                    height: 32.dp,
                    width: 32.dp,
                    child: Image.asset(
                      AppImages.dress,
                      //  color: hexToColor(orderedItem.service.color),
                    ),
                  ),
                  errorWidget: (context, url, error) => SizedBox(
                    height: 32.dp,
                    width: 32.dp,
                    child: Image.asset(
                      AppImages.dress,
                      //  color: hexToColor(orderedItem.service.color),
                    ),
                  ),
                )
              else
                SizedBox(
                  height: 32.dp,
                  width: 32.dp,
                  child: Image.asset(
                    AppImages.dress,
                    //  color: hexToColor(orderedItem.service.color),
                  ),
                ),
              Gap(8.dp),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderedService.service.name,
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
                            color: hexToColor(orderedService.service.color),
                          ),
                        ),
                        Gap(4.dp),
                        Text(
                          'x ${orderedService.bags.length}',
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

              if (status != 'pickedUp')
                InkWell(
                  onTap: () async {
                    final result = await Navigator.push<String>(
                      context,
                      MaterialPageRoute(builder: (context) => const QRScannerScreenWidget()),
                    );
                    
                    // Only show bottomsheet if QR value is provided
                    if (result != null && result.isNotEmpty) {
                      CustomBottomSheetWidget(
                        context: context,
                        child: ScanNewBagBottomsheet(
                          bagId: result,
                          orderId: orderId,
                          serviceId: orderedService.service.id,
                          serviceName: orderedService.service.name,
                          isQuickOrder: false,
                        ),
                      ).show();
                    }
                    // If no QR value, just return to OrderDetailScreen (no bottomsheet)
                  },
                  child: _scanButton(),
                ),
            ],
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
