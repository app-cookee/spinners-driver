import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/widgets/qr_scanner_screen.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';


class OrderedServices extends StatelessWidget {
  const OrderedServices({
    super.key,
    required this.selectedIndex,
    required this.scannedItems,
  });

  final ValueNotifier<int?> selectedIndex;
  final ValueNotifier<Set<int>> scannedItems;

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
                // final isActive = selected == index;
                final isScanned = scanned.contains(index);

                return GestureDetector(
                  onTap: () {
                    selectedIndex.value = index;
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 8.dp),
                    padding: EdgeInsets.all(16.dp),
                    decoration: BoxDecoration(
                      // Change color based on scanned status
                      color: isScanned ? AppColors.blue1 : AppColors.neutral50,
                      borderRadius: BorderRadius.circular(12.dp),
                      gradient: isScanned
                          ? const LinearGradient(
                              colors: [AppColors.blue1, AppColors.blue1, AppColors.blue1, Color(0xffD8F1FC)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 0.33, 0.66, 1.0],
                            )
                          : null,
                      border: Border.all(
                        color: isScanned ? AppColors.primaryColor500 : AppColors.lightGrey,
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: isScanned ? AppColors.primaryColor500.withValues(alpha: 0.1) : AppColors.lightGrey.withValues(alpha: 0.1),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Image.asset(AppImages.dress, height: 32.dp, width: 32.dp),
                        Gap(8.dp),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.orderDetails.orderedItems[index].service.name,
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
                                      color: hexToColor(state.orderDetails.orderedItems[index].service.color),
                                    ),
                                  ),
                                  Gap(4.dp),
                                  Text(
                                    'x${state.orderDetails.orderedItems[index].quantity}',
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
                          onTap: isScanned
                              ? null
                              : () async {
                                  // Navigate and wait for result
                                  final result = await Navigator.push<String>(
                                    context,
                                    MaterialPageRoute(builder: (context) => const QRScannerScreen()),
                                  );

                                  // Check if QR was successfully scanned
                                  if (result != null && result.isNotEmpty) {
                                    // Update the shared scanned items set
                                    final newScannedSet = Set<int>.from(scannedItems.value);
                                    newScannedSet.add(index);
                                    scannedItems.value = newScannedSet;

                                    // Update the selected index
                                    selectedIndex.value = index;
                                  }
                                },
                          child: Container(
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
                                    //  color: Colors.blue,
                                  ),
                                  Text(
                                    'Scan',
                                    style: AppTypography.sfProRoundedSemiBold.copyWith(
                                      fontSize: 14.sp,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      );
    });
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
