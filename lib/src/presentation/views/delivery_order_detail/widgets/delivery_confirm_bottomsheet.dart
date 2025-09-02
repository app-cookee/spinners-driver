import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/delivery_bloc/delivery_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/widgets/common_textfield.dart';
import 'package:spinners_driver/src/presentation/views/widgets/custom_dropdown_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class DeliveryConfirmBottomsheet extends StatefulWidget {
  const DeliveryConfirmBottomsheet(
      {super.key, required this.orderId, required this.totalCollected, required this.orderRefId});
  final String orderId;
  final double totalCollected;
  final String orderRefId;

  @override
  State<DeliveryConfirmBottomsheet> createState() =>
      _DeliveryConfirmBottomsheetState();
}

class _DeliveryConfirmBottomsheetState
    extends State<DeliveryConfirmBottomsheet> {
  String? _selectedPayment;
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
          _orderID(),
          Gap(10.dp),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.dp),
            child: CustomDropDownWidget(offsetHeight: 22.dp,
              // labelstyle: AppTypography.sfProRoundedMedium.copyWith(fontSize: 16.dp,color: AppColors.grey1Color),
              //AppTypography.sfProRoundedMedium.copyWith(fontSize: 16.dp,color: AppColors.neutral950),
          
              onChanged: (value) {
                setState(() {
                  _selectedPayment = value.value;
                });
              },
              items: [
                CustomDropDownMenuItem(useImg: AppImages.card,label: 'Bank', value: 'swipeCard'),
                CustomDropDownMenuItem(useImg: AppImages.money,label: 'Cash', value: 'cod'),
              ],
              text: 'Payment Method',
              hint: 'Select Any',
            ),
          ),
          Gap(10.dp),
          _totalCollected(),
          Gap(24.dp),
          BlocListener<DeliveryBloc, DeliveryState>(
            listener: (context, state) {
              if (state.confirmDeliveryStatus is StatusSuccess) {
                context.router.pop();
                context.read<DeliveryBloc>().add(
                    DeliveryEvent.getOrderDetails(orderId: widget.orderId));
                TheToast.show(
                    message: 'Delivery confirmed successfully',
                    context: context,
                    isError: false);
              }
              if (state.confirmDeliveryStatus is StatusFailure) {
                TheToast.show(
                    message: state.confirmDeliveryStatus.errorMessage,
                    context: context,
                    isError: true);
              }
            },
            listenWhen: (previous, current) =>
                previous.confirmDeliveryStatus != current.confirmDeliveryStatus,
            child: BlocBuilder<DeliveryBloc, DeliveryState>(
              builder: (context, state) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: 16.dp,
                    right: 16.dp,
                  ),
                  child: PrimaryButtonWidget(
                    isLoading: state.confirmDeliveryStatus is StatusLoading,
                    onPressed: () {
                      if (_selectedPayment != null) {
                        context.read<DeliveryBloc>().add(
                            DeliveryEvent.confirmDelivery(
                                id: widget.orderId,
                                paymentMethod: _selectedPayment!,
                                receivedAmount: widget.totalCollected));
                      } else {
                        TheToast.show(
                            message: 'Please select a payment method',
                            context: context,
                            isError: true);
                      }
                    },
                    text: 'Confirm',
                  ),
                );
              },
            ),
          ),
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
        ],
      ),
    );
  }

  Widget _orderID() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.dp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Order ID',
              style: AppTypography.sfProRoundedMedium
                  .copyWith(fontSize: 16.sp, color: AppColors.textGrey)),
          Gap(6.dp),
          CommonTextField(
            hintText: '',
            textStyle: AppTypography.sfProRoundedBold
                .copyWith(fontSize: 16.sp, color: AppColors.grey1Color),
            borderRadius: 12.dp,
            initialValue:widget.orderRefId ,
            enabled: false,
          ),
        ],
      ),
    );
  }

  Widget _totalCollected() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.dp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Total Collected',
              style: AppTypography.sfProRoundedMedium
                  .copyWith(fontSize: 16.sp, color: AppColors.textGrey)),
          Gap(6.dp),
          CommonTextField(
            hintText: '',
            textStyle: AppTypography.sfProRoundedBold
                .copyWith(fontSize: 16.sp, color: AppColors.neutral950),
            borderRadius: 12.dp,
            initialValue: widget.totalCollected.toString(),
            enabled: false,
          ),
        ],
      ),
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Confirm Delivery Completion',
            style: AppTypography.sfProRoundedSemiBold
                .copyWith(fontSize: 16.sp, color: AppColors.textGrey)),
      ],
    );
  }
}
