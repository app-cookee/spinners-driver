// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/services/api_services/environment/config.dart';
import 'package:spinners_driver/app/services/api_services/environment/env_config.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/domain/models/order_details_response_model/order_details_response_model.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/already_scanned_warning_bottomsheet.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/change_service_bottomsheet.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/invalid_bag_warning_dialog.dart';
import 'package:spinners_driver/src/presentation/views/widgets/common_textfield.dart';
import 'package:spinners_driver/src/presentation/views/widgets/custom_bottomsheet_widget.dart';
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
    this.editableId=false
  });

  final String? bagId;
  final String? orderId;
  final String? serviceId;
  final String? serviceName; // Added for display
  final bool isQuickOrder;
  final bool editableId;

  @override
  State<ScanNewBagBottomsheet> createState() => _ScanNewBagBottomsheetState();
}

class _ScanNewBagBottomsheetState extends State<ScanNewBagBottomsheet> {
  final TextEditingController bagIdController = TextEditingController();
  String? selectedServiceId;
  String? selectedServiceName;
  bool isDropdownOpen = false;

  @override
  void initState() {
    super.initState();

    context.read<OrderBloc>().add(const OrderEvent.getServicesList(limit: 100, skip: 0));
    // Auto-fill bag ID if provided
    if (widget.bagId != null) {
      bagIdController.text = widget.bagId!;
      log('Auto-filled bag ID: ${widget.bagId}');
      log(widget.editableId.toString());
    }

    // Auto-fill service if provided (for normal orders)
    if (widget.serviceId != null) {
      selectedServiceId = widget.serviceId;
      selectedServiceName = widget.serviceName;
      log('Auto-filled service: ${widget.serviceName} (${widget.serviceId})');
    }

    // Log widget parameters for debugging
    log('Widget initialized with: isQuickOrder=${widget.isQuickOrder}, orderId=${widget.orderId}, serviceId=${widget.serviceId}');
  }

  @override
  void dispose() {
    bagIdController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {

        log('Building ScanNewBagBottomsheet');
    // Check if keyboard is visible
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    final isKeyboardVisible = keyboardHeight > 0;
    
    // Calculate dynamic sizes based on dropdown state and keyboard visibility
    final double initialSize = isKeyboardVisible 
        ? 0.80 
        : (isDropdownOpen ? 0.73 : 0.5);
    final double minSize = isKeyboardVisible 
        ? 0.7 
        : (isDropdownOpen ? 0.55 : 0.4);
    final double maxSize = isKeyboardVisible 
        ? 0.95 
        : (isDropdownOpen ? 0.95 : 0.8);



    return DraggableScrollableSheet(
      initialChildSize: initialSize,
      minChildSize: minSize,
      maxChildSize: maxSize,
      snap: false,
      expand: false,
      builder: (context, controller) {
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
              // Gap(15.dp),
              // Scrollable content area (excluding buttons)
              Expanded(
                child: SingleChildScrollView(
                  controller: controller,
                  child: Column(
                    children: [
                      _bagID(widget.editableId),
                      Gap(10.dp),
                      _serviceDropdown(),
                      // Gap(24.dp),
                    ],
                  ),
                ),
              ),
              // Fixed buttons at the bottom
              _addBagButton(),
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
            ],
          ),
        );
      },
    );
  }

  Widget _bagID(bool isEditableId) {
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
            readOnly: !isEditableId,
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
                CustomDropDownWidget(offsetHeight: 4,
                  onChanged: (selectedItem) {
                    final service = services.firstWhere((s) => s.name == selectedItem.label);
                    setState(() {
                      selectedServiceId = service.id;
                      selectedServiceName = service.name;
                    });
                  },
                  onDropdownStateChanged: (isOpen) {
                    setState(() {
                      isDropdownOpen = isOpen;
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
            Navigator.of(context).pop();

            // Show success message after a short delay
            Future.delayed(const Duration(milliseconds: 300), () {
              if (mounted) {
                TheToast.show(
                  isError: false,
                  message: "Bag added successfully",
                  context: context,
                );
              }
            });
          }
        }

        // Handle failures for both APIs
        if (state.createNewBagStatus is StatusFailure) {
          final errorMessage = (state.createNewBagStatus as StatusFailure).toString();

          // Check if the error indicates bag is already assigned to another order
          if (errorMessage.toLowerCase().contains('already assigned') || errorMessage.toLowerCase().contains('another order') || errorMessage.toLowerCase().contains('bag already exists')) {
            // Show InvalidBagWarningDialog
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return const InvalidBagWarningDialog();
              },
            );
          } else {
            // Show regular error toast for other errors
            TheToast.show(
              isError: true,
              message: errorMessage,
              context: context,
            );
          }
        }

        if (state.addBagStatus is StatusFailure) {
          final errorMessage = (state.addBagStatus as StatusFailure).toString();

          // Check if the error indicates bag is already assigned to another order
          if (errorMessage.toLowerCase().contains('already assigned') || errorMessage.toLowerCase().contains('another order') || errorMessage.toLowerCase().contains('bag already exists')) {
            // Show InvalidBagWarningDialog
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return const InvalidBagWarningDialog();
              },
            );
          } else {
            // Show regular error toast for other errors
            TheToast.show(
              isError: true,
              message: errorMessage,
              context: context,
            );
          }
        }
      },
      listenWhen: (previous, current) => previous.createNewBagStatus != current.createNewBagStatus || previous.addBagStatus != current.addBagStatus,
      builder: (context, state) {
        final isLoading = state.createNewBagStatus is StatusLoading || state.addBagStatus is StatusLoading;

        return Padding(
          padding: EdgeInsets.only(
            left: 16.dp,
            right: 16.dp,
          ),
          child: PrimaryButtonWidget(
            onPressed: () {
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
                  message: "Please select a service before adding the bag",
                  context: context,
                );
                return;
              }

              // Debug logging
              log('Debug: selectedServiceId: $selectedServiceId');
              log('Debug: orderDetails.orderedItems.length: ${state.orderDetails.orderedServices.length}');
              log('Debug: orderDetails.orderedItems: ${state.orderDetails.orderedServices.map((item) => '${item.service.id}:${item.service.name}').toList()}');

              // Check if bag ID already exists in any service
              bool bagAlreadyExists = false;
              bool bagExistsInSameService = false;
              String? existingServiceName;
              String? existingServiceImage;
              Color? existingServiceColor;
              // String? existingOrderServiceId;
              String? existingScannedBagId;

              for (final service  in state.orderDetails.orderedServices) {
                // Check if scannedBags list is not empty before calling firstWhere
                if (service.bags.isNotEmpty) {
                  final existingBag = service.bags.firstWhere(
                    (bag) => bag.bagId == bagId,
                    orElse: () => const ScannedBags(),
                  );

                  if (existingBag.bagId.isNotEmpty) {
                    bagAlreadyExists = true;
                    existingServiceName = service.service.name;
                    existingServiceImage = '${EnvConfiguration.current.baseUrl.substring(0, EnvConfiguration.current.baseUrl.lastIndexOf('/') + 1)}${service.service.icon}';
                    existingServiceColor = hexToColor(service.service.color);
                    // existingOrderServiceId = item.id;
                    existingScannedBagId = existingBag.id;

                    // Check if bag exists in the same service that user is trying to add to
                    if (widget.isQuickOrder) {
                      // For quick orders, check if the service ID matches
                      if (service.service.id == selectedServiceId) {
                        bagExistsInSameService = true;
                      }
                    } else {
                      // For normal orders, check if the service ID matches
                      if (service.service.id == selectedServiceId) {
                        bagExistsInSameService = true;
                      }
                    }
                    break;
                  }
                }
              }

              if (bagAlreadyExists) {
                if (bagExistsInSameService) {
                  // Show warning bottomsheet for same service
                  Navigator.of(context).pop(); // Close current bottomsheet

                  CustomBottomSheetWidget(
                    context: context,
                    child: AlreadyScannedWarningBottomsheet(
                      bagId: bagId,
                      serviceName: existingServiceName!,
                      serviceImage: existingServiceImage!,
                      serviceColor: existingServiceColor!,
                      scannedBagId: existingScannedBagId!,
                      onBagRemoved: () {
                        // This will be called after successful removal
                      },
                    ),
                  ).show();
                } else {
                  // Show change service bottomsheet for different service
                  Navigator.of(context).pop(); // Close current bottomsheet

                  CustomBottomSheetWidget(
                    context: context,
                    child: ChangeServiceBottomsheet(
                      bagId: bagId,
                      serviceName: existingServiceName!,
                      serviceImage: existingServiceImage!,
                      serviceColor: existingServiceColor!,
                      isQuickOrder: widget.isQuickOrder,
                      orderId: widget.orderId,
                      existingScannedBagId: existingScannedBagId!,
                    ),
                  ).show();
                }
                return;
              }

              // For quick orders, we can create new bags even without existing ordered items
              // For normal orders, we need to check if the service exists in ordered items
              if (widget.isQuickOrder == false) {
                // Normal order flow - check if ordered items exist
                if (state.orderDetails.orderedServices.isEmpty) {
                  log('Error: No ordered items found in order details');
                  TheToast.show(
                    isError: true,
                    message: "No services found for this order",
                    context: context,
                  );
                  return;
                }

                // Check if the selected service exists in the ordered items
                final serviceExists = state.orderDetails.orderedServices.any(
                  (service) => service.service.id == selectedServiceId,
                );

                if (!serviceExists) {
                  log('Error: Selected service $selectedServiceId not found in ordered items');
                  TheToast.show(
                    isError: true,
                    message: "Selected service not found in this order",
                    context: context,
                  );
                  return;
                }

                // Find the ordered item for this service
                final orderedItem = state.orderDetails.orderedServices.firstWhere(
                  (item) => item.service.id == selectedServiceId,
                  orElse: () => state.orderDetails.orderedServices.first,
                );

                // Call addBag API for normal orders
                context.read<OrderBloc>().add(OrderEvent.addBag(
                      orderItemId: orderedItem.id,
                      bagId: bagId,
                    ));
              } else {
                // Quick order flow - directly call createNewBag API
                // Validate required parameters for quick orders
                if (widget.orderId == null || widget.orderId!.isEmpty) {
                  log('Error: Order ID is required for quick orders');
                  TheToast.show(
                    isError: true,
                    message: "Order ID is required for quick orders",
                    context: context,
                  );
                  return;
                }

                if (selectedServiceId == null || selectedServiceId!.isEmpty) {
                  log('Error: Service ID is required for quick orders');
                  TheToast.show(
                    isError: true,
                    message: "Please select a service for quick orders",
                    context: context,
                  );
                  return;
                }

                log('Creating new bag for quick order: bagId=$bagId, orderId=${widget.orderId}, serviceId=$selectedServiceId');
                context.read<OrderBloc>().add(OrderEvent.createNewBag(
                      bagId: bagId,
                      orderId: widget.orderId!,
                      serviceId: selectedServiceId!,
                    ));
              }
            },
            text: 'Add Bag',
            isLoading: isLoading,
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
