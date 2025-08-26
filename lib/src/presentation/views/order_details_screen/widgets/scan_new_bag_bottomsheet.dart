// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
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

class ScanNewBagBottomsheet extends StatefulWidget {
  const ScanNewBagBottomsheet({
    super.key,
    this.bagId,
    this.orderId,
    this.serviceId,
    this.serviceName,
    this.isQuickOrder = false,
  });

  final String? bagId;
  final String? orderId;
  final String? serviceId;
  final String? serviceName; // Added for display
  final bool isQuickOrder;

  @override
  State<ScanNewBagBottomsheet> createState() => _ScanNewBagBottomsheetState();
}

class _ScanNewBagBottomsheetState extends State<ScanNewBagBottomsheet> {
  final TextEditingController bagIdController = TextEditingController();
  String? selectedServiceId;
  String? selectedServiceName;

  @override
  void initState() {
    super.initState();
    log('ScanNewBagBottomsheet initialized');
    log('Bag ID: ${widget.bagId}');
    log('Service ID: ${widget.serviceId}');
    log('Service Name: ${widget.serviceName}');
    log('Is Quick Order: ${widget.isQuickOrder}');
    
    context.read<OrderBloc>().add(const OrderEvent.getServicesList(limit: 100, skip: 0));
    // Auto-fill bag ID if provided
    if (widget.bagId != null) {
      bagIdController.text = widget.bagId!;
      log('Auto-filled bag ID: ${widget.bagId}');
    }
    
    // Auto-fill service if provided (for normal orders)
    if (widget.serviceId != null) {
      selectedServiceId = widget.serviceId;
      selectedServiceName = widget.serviceName;
      log('Auto-filled service: ${widget.serviceName} (${widget.serviceId})');
    }
  }

  @override
  void dispose() {
    bagIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          _serviceDropdown(),
          Gap(24.dp),
          _addBagButton(),
          Gap(8.dp),
          Padding(
            padding: EdgeInsets.only(left: 16.dp, right: 16.dp, bottom: 24.dp),
            child: PrimaryButtonWidget(
              buttonBgImage: AppImages.buttonGreyBg,
              backgroundColor: AppColors.grey1Color,
              onPressed: () {
                context.router.pop();
              },
              text: 'Cancel',
            ),
          ),
          Gap(30.h)
        ],
      ),
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
                        color: selectedServiceId != null 
                          ? hexToColor(services.firstWhere(
                              (element) => element.id == selectedServiceId,
                              orElse: () => services.first
                            ).color)
                          : null,
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
  Widget _addBagButton() {
    return BlocConsumer<OrderBloc, OrderState>(
             listener: (context, state) {
         // Handle success for both APIs
         if (state.createNewBagStatus is StatusSuccess || state.addBagStatus is StatusSuccess) {
           // Close bottomsheet first
           if (mounted) {
             context.router.pop();
             
             // Show success message after a short delay
             Future.delayed(const Duration(milliseconds: 300), () {
               if (mounted) {
                 TheToast.show(
                   isError: false,
                   message: "Bag added successfully",
                   context: context,
                 );
                 
                 // Refresh order details after another short delay
                 Future.delayed(const Duration(milliseconds: 200), () {
                   if (mounted) {
                     context.read<OrderBloc>().add(OrderEvent.getOrderDetails(orderId: widget.orderId!));
                   }
                 });
               }
             });
           }
         }
        
        // Handle failures for both APIs
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
      builder: (context, state) {
        final isLoading = state.createNewBagStatus is StatusLoading || state.addBagStatus is StatusLoading;

        return Padding(
          padding: EdgeInsets.only(
            left: 16.dp,
            right: 16.dp,
          ),
          child: PrimaryButtonWidget(
            onPressed:() => isLoading ? null : _handleAddBag(),
            text: 'Add Bag',
            isLoading: isLoading,
          ),
        );
      },
    );
  }

  void _handleAddBag() {
    // Business Logic:
    // - For both normal and quick orders: Each service has a 'quantity' (original order) and 'scannedBags' (actual scanned)
    // - When adding bags: We increment scannedBags count, NOT the original quantity
    // - UI shows completion by comparing scannedBags.length with quantity
    // - addBag API: Adds bag to existing service (increments scanned count)
    // - createNewBag API: Creates first bag for a service
    
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
    
    // // Validate bag ID format - should not be a URL
    // if (bagId.startsWith('http://') || bagId.startsWith('https://') || bagId.contains('wa.me')) {
    //   TheToast.show(
    //     isError: true,
    //     message: "Invalid Bag ID format. Please scan a valid QR code.",
    //     context: context,
    //   );
    //   return;
    // }

    // Validate service selection
    if (selectedServiceId == null || selectedServiceId!.isEmpty) {
      TheToast.show(
        isError: true,
        message: "Please select a service",
        context: context,
      );
      return;
    }

    // Validate order ID
    if (widget.orderId == null || widget.orderId!.isEmpty) {
      TheToast.show(
        isError: true,
        message: "Order ID is required",
        context: context,
      );
      return;
    }

    // Determine which API to call based on order type and existing bags
    final state = context.read<OrderBloc>().state;
    
    // For both quick orders and normal orders, check if bags already exist for this service
    final orderedItem = state.orderDetails.orderedItems.firstWhere(
      (item) => item.service.id == selectedServiceId,
      orElse: () => state.orderDetails.orderedItems.first,
    );
    
    if (orderedItem.scannedBags.isNotEmpty) {
      // If bags already exist for this service, use addBag to add to existing service
      // This will increment the scanned bags count for this service (not the original quantity)
      // The UI compares scannedBags.length with quantity to show completion status
      if (orderedItem.id.isNotEmpty) {
        log('Adding bag to existing service: ${orderedItem.service.name} (${widget.isQuickOrder ? 'Quick Order' : 'Normal Order'})');
        log('Current scanned bags: ${orderedItem.scannedBags.length}');
        log('Original quantity: ${orderedItem.quantity}');
        log('order item id: ${orderedItem.id}');
        context.read<OrderBloc>().add(OrderEvent.addBag(
          orderItemId: orderedItem.id,
          bagId: bagId,
        ));
      } else {
        TheToast.show(
          isError: true,
          message: "Invalid order item ID",
          context: context,
        );
      }
    } else {
      // If no bags exist for this service, use createNewBag to create new service entry
      // This creates the first bag for this service
      log('Creating new bag for service: ${orderedItem.service.name} (${widget.isQuickOrder ? 'Quick Order' : 'Normal Order'})');
      log('Current scanned bags: ${orderedItem.scannedBags.length}');
      log('Original quantity: ${orderedItem.quantity}');
      
      context.read<OrderBloc>().add(OrderEvent.createNewBag(
        bagId: bagId,
        orderId: widget.orderId!,
        serviceId: selectedServiceId!,
      ));
    }
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImages.qrIcon, width: 24.dp, height: 24.dp),
        Gap(4.dp),
        Text(
          'New Bag Detected',
          style: AppTypography.sfProRoundedSemiBold.copyWith(
            fontSize: 16.sp,
            color: AppColors.textGrey,
          ),
        ),
      ],
    );
  }
}