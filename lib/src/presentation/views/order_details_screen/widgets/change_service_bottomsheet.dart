import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/widgets/common_textfield.dart';
import 'package:spinners_driver/src/presentation/views/widgets/custom_dropdown_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class ChangeServiceBottomsheet extends StatefulWidget {
  const ChangeServiceBottomsheet({
    super.key, 
    this.bagId, 
    required this.serviceName, 
    required this.serviceImage, 
    required this.serviceColor, 
    required this.isQuickOrder,
    this.orderId,
    required this.existingScannedBagId,
  });
  final String? bagId;
  final String serviceName;
  final String serviceImage;
  final Color serviceColor;
  final bool isQuickOrder;
  final String? orderId;
  final String existingScannedBagId;

  @override
  State<ChangeServiceBottomsheet> createState() => _ChangeServiceBottomsheetState();
}

class _ChangeServiceBottomsheetState extends State<ChangeServiceBottomsheet> {
  final TextEditingController bagIdController = TextEditingController();
  String? selectedServiceId;
  String? selectedServiceName;

  @override
  void initState() {
    super.initState();
    
    // Load services list
    context.read<OrderBloc>().add(const OrderEvent.getServicesList(limit: 100, skip: 0));
    
    // Auto-fill bag ID if provided
    if (widget.bagId != null) {
      bagIdController.text = widget.bagId!;
      log('Auto-filled bag ID: ${widget.bagId}');
    }
  }

  @override
  void dispose() {
    bagIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderBloc, OrderState>(
      listener: (context, state) {
        // Handle add bag success
        if (state.addBagStatus is StatusSuccess || state.createNewBagStatus is StatusSuccess) {
          // Close bottomsheet first
          if (mounted) {
            Navigator.of(context).pop();

            // Show success message after a short delay
            Future.delayed(const Duration(milliseconds: 300), () {
              if (mounted) {
                TheToast.show(
                  isError: false,
                  message: "Bag service changed successfully",
                  context: context,
                );
              }
            });
          }
        }

        // Handle failures
        if (state.createNewBagStatus is StatusFailure) {
          final errorMessage = (state.createNewBagStatus as StatusFailure).toString();
          TheToast.show(
            isError: true,
            message: errorMessage,
            context: context,
          );
        }

        if (state.addBagStatus is StatusFailure) {
          final errorMessage = (state.addBagStatus as StatusFailure).toString();
          TheToast.show(
            isError: true,
            message: errorMessage,
            context: context,
          );
        }
      },
      listenWhen: (previous, current) => 
        previous.createNewBagStatus != current.createNewBagStatus || 
        previous.addBagStatus != current.addBagStatus,
      builder: (context, state) {
        final isLoading = state.createNewBagStatus is StatusLoading || state.addBagStatus is StatusLoading;

        return Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.dp),
              topRight: Radius.circular(24.dp),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Gap(12.dp),
              _header(),
              Gap(11.dp),
              Divider(
                thickness: 1.dp,
                color: AppColors.lightGrey,
              ),
              Gap(15.dp),
              _bagID(),
              Gap(10.dp),
              alreadyAssignedWidget(
                serviceImage: widget.serviceImage,
                serviceName: widget.serviceName,
                serviceColor: widget.serviceColor,
              ),
              Gap(14.dp),
              Image.asset(AppImages.arrowDown, width: 24.dp, height: 24.dp),
              _serviceDropdown(),
              Gap(24.dp),
              Padding(
                padding: EdgeInsets.only(left: 16.dp, right: 16.dp,),
                child: PrimaryButtonWidget(
                  onPressed: () {
                    _handleChangeService(state);
                  },
                  text: 'Change Service',
                  isLoading: isLoading,
                ),
              ),
              Gap(8.dp),
              Padding(
                padding: EdgeInsets.only(left: 16.dp, right: 16.dp, bottom: 24.dp),
                child: PrimaryButtonWidget(
                  buttonBgImage: AppImages.buttonGreyBg,
                  backgroundColor: AppColors.grey1Color,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  text: 'Cancel',
                ),
              ),
              Gap(16.dp),
            ],
          ),
        );
      },
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImages.qrIcon, width: 24.dp, height: 24.dp),
        Gap(4.dp),
                 Text(
           'Bag Already Exists',
           style: AppTypography.sfProRoundedSemiBold.copyWith(
             fontSize: 16.sp,
             color: AppColors.textGrey,
           ),
         ),
      ],
    );
  }

  Widget _bagID() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.dp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Bag ID', style: AppTypography.sfProRoundedMedium.copyWith(fontSize: 16.sp, color: AppColors.textGrey)),
          Gap(6.dp),
          CommonTextField(
            controller: bagIdController,
            hintText: 'Enter Bag ID',
            textStyle: AppTypography.sfProRoundedBold.copyWith(fontSize: 16.sp, color: AppColors.grey1Color),
            readOnly: widget.bagId != null,
          ),
        ],
      ),
    );
  }

  Widget alreadyAssignedWidget({required String serviceImage, required String serviceName, required Color serviceColor}) {
    return Container(
      padding: EdgeInsets.all(12.dp),
      decoration: BoxDecoration(
        color: const Color(0xFFFFD9D9),
        borderRadius: BorderRadius.circular(10.dp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
                     Text(
             'This bag is already assigned to a different service. Select a new service to reassign it.',
             style: AppTypography.sfProRoundedMedium.copyWith(fontSize: 12.sp, color: const Color(0xFF732D2D)),
           ),
          Gap(10.dp),
          Container(
            padding: EdgeInsets.all(8.dp),
            decoration: BoxDecoration(
              color: const Color(0xFFE0E0E0),
              borderRadius: BorderRadius.circular(8.dp),
            ),
            child: Row(
              children: [
                Image.network(serviceImage, width: 24.dp, height: 24.dp),
                Gap(8.dp),
                Text(
                  serviceName,
                  style: AppTypography.sfProRoundedSemiBold.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.neutral950,
                  ),
                ),
                const Spacer(),
                Image.asset(
                  AppImages.bag,
                  width: 20.dp,
                  height: 20.dp,
                  color: serviceColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _serviceDropdown() {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        final services = state.servicesList;
        final isLoading = state.getServicesListStatus is StatusLoading;
        final hasError = state.getServicesListStatus is StatusFailure;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.dp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Bag Color/Service', style: AppTypography.sfProRoundedMedium.copyWith(fontSize: 16.sp, color: AppColors.textGrey)),
              Gap(6.dp),

              // Show loading state while services are being fetched
              if (isLoading)
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 12.dp, vertical: 16.dp),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lightGrey),
                    borderRadius: BorderRadius.circular(8.dp),
                    color: AppColors.neutral50,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20.dp,
                        width: 20.dp,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.dp,
                          valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primaryColor500),
                        ),
                      ),
                      Gap(8.dp),
                      Text(
                        'Loading services...',
                        style: AppTypography.sfProRoundedMedium.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.neutral500,
                        ),
                      ),
                    ],
                  ),
                )
              // Show error state
              else if (hasError)
                GestureDetector(
                  onTap: () {
                    context.read<OrderBloc>().add(const OrderEvent.getServicesList(limit: 100, skip: 0));
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 12.dp, vertical: 16.dp),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.red),
                      borderRadius: BorderRadius.circular(8.dp),
                      color: AppColors.red.withValues(alpha: 0.1),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.error_outline, color: AppColors.red, size: 20.dp),
                        Gap(8.dp),
                        Expanded(
                          child: Text(
                            'Failed to load services. Tap to retry.',
                            style: AppTypography.sfProRoundedMedium.copyWith(
                              fontSize: 16.sp,
                              color: AppColors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              // Show selected service for normal orders (read-only)
              else if (!widget.isQuickOrder && selectedServiceName != null && services.isNotEmpty)
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 12.dp, vertical: 16.dp),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lightGrey),
                    borderRadius: BorderRadius.circular(8.dp),
                    color: AppColors.neutral50,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        AppImages.bag,
                        height: 20.dp,
                        width: 20.dp,
                        color: selectedServiceId != null ? hexToColor(services.firstWhere((element) => element.id == selectedServiceId, orElse: () => services.first).color) : null,
                      ),
                      Gap(8.dp),
                      Text(
                        selectedServiceName!,
                        style: AppTypography.sfProRoundedMedium.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.neutral950,
                        ),
                      ),
                    ],
                  ),
                )
              // Show dropdown for quick orders
              else if (services.isNotEmpty)
                CustomDropDownWidget(
                  onChanged: (selectedItem) {
                    final service = services.firstWhere((s) => s.name == selectedItem.label);
                    setState(() {
                      selectedServiceId = service.id;
                      selectedServiceName = service.name;
                    });
                  },
                  items: services
                      .where((service) => service.color.isNotEmpty) // Filter out services without colors
                      .map((service) => CustomDropDownMenuItem(
                            label: service.name,
                            value: service.name,
                            useImg: AppImages.bag,
                            imageColor: hexToColor(service.color),
                          ))
                      .toList(),
                  text: '',
                  hint: selectedServiceName ?? 'Choose a service',
                )
              // Show empty state
              else
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 12.dp, vertical: 16.dp),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lightGrey),
                    borderRadius: BorderRadius.circular(8.dp),
                    color: AppColors.neutral50,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.info_outline, color: AppColors.neutral500, size: 20.dp),
                      Gap(8.dp),
                      Text(
                        'No services available',
                        style: AppTypography.sfProRoundedMedium.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.neutral500,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Color hexToColor(String hex) {
    // Handle empty or invalid hex values
    if (hex.isEmpty || hex.trim().isEmpty) {
      return AppColors.neutral500; // Return a default color for empty values
    }

    hex = hex.replaceAll('#', '').trim();

    // Validate hex format
    if (!RegExp(r'^[0-9A-Fa-f]{3}$|^[0-9A-Fa-f]{6}$').hasMatch(hex)) {
      return AppColors.neutral500; // Return default color for invalid format
    }

    if (hex.length == 3) {
      hex = hex.split('').map((char) => char * 2).join();
    }
    if (hex.length == 6) {
      hex = 'FF$hex';
    }

    try {
      return Color(int.parse(hex, radix: 16));
    } catch (e) {
      log('Error parsing hex color: $hex - $e');
      return AppColors.neutral500; // Return default color on parsing error
    }
  }

  void _handleChangeService(OrderState state) {
    // Validate bag ID
    final bagId = bagIdController.text.trim();
    if (bagId.isEmpty) {
      TheToast.show(
        isError: true,
        message: "Please enter Bag ID",
        context: context,
      );
      return;
    }

    // Validate service selection
    if (selectedServiceId == null || selectedServiceId!.isEmpty) {
      TheToast.show(
        isError: true,
        message: "Please select a service",
        context: context,
      );
      return;
    }

    // Call add bag API directly for the selected service
    if (widget.isQuickOrder) {
      context.read<OrderBloc>().add(OrderEvent.createNewBag(
        bagId: bagId,
        orderId: widget.orderId!,
        serviceId: selectedServiceId!,
      ));
    } else {
      // Find the ordered item for this service
      final orderedItem = state.orderDetails.orderedItems.firstWhere(
        (item) => item.service.id == selectedServiceId,
        orElse: () => state.orderDetails.orderedItems.first,
      );

      context.read<OrderBloc>().add(OrderEvent.addBag(
        orderItemId: orderedItem.id,
        bagId: bagId,
      ));
    }
  }
}
