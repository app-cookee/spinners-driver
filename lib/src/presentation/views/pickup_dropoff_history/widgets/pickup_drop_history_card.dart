import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/quick_order_label.dart';

class PickDropHistoryCard extends StatelessWidget {
  final String orderId;
  final String refId;
  final String date;
  final String time;
  final String status;
  final bool isDropoff;
  final bool isQuickOrder;
  final String address;
  final String amount;
  final String paymentMethod;
  final String custName;
  const PickDropHistoryCard({
    Key? key,
    required this.orderId,
    required this.refId,
    required this.time,
    required this.date,
    required this.status,
    required this.isDropoff,
    required this.isQuickOrder,
    required this.address,
    required this.amount,
    required this.paymentMethod,
    required this.custName,
  }) : super(key: key);

  Color getColor(String status) {
    switch (status) {
      case "delivered":
        return AppColors.deliveredColor;
      case "pickedUp":
        return AppColors.pickedUpColor;
      case "readyForDelivery":
        return AppColors.readyForDeliveryColor;
      case "pickupScheduled":
        return AppColors.pickupScheduledColor;
      default:
        return AppColors.primaryColor500;
    }
  }

  @override
  Widget build(BuildContext context) {

    return 
    // InkWell(
      // onTap: () {
      //   if (isDropoff) {
      //     context.router
      //         .push(DeliveryOrderDetailRoute(orderId: orderId, refId: refId));
      //   } else {
      //     context.router.push(OrderDetailRoute(orderId: orderId));
      //   }
      // },
      // child: 
      Container(
        padding: EdgeInsets.only(top: 16.dp),
        margin: EdgeInsets.only(bottom: 12.dp),
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: .11),
              offset: const Offset(0, 2),
              blurRadius: 5,
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.circular(12.dp),
          border: Border.all(color: AppColors.shadowColor),
        ),
        child: Column(
          children: [_orderHeader(), _details()],
        ),
      );
    // );
  }

  Widget _orderHeader() {
    return Padding(
      padding: EdgeInsets.only(right: 9.dp, left: 16.dp, bottom: 8.dp),
      child: Row(
        children: [
          Text("Order ID : ",
              style: AppTypography.sfProRoundedMedium.copyWith(
                  fontSize: 12.dp, color: AppColors.countrycodeColor)),
          Text(refId,
              style: AppTypography.sfProRoundedMedium
                  .copyWith(fontSize: 12.dp, color: AppColors.textGrey)),
          const Spacer(),
          if (isQuickOrder&&!isDropoff) ...[
            Gap(4.dp),
            const QuickOrderLabel(),
          ],
          if(isDropoff) ...[
            Gap(4.dp),
            Text('AED $amount ($paymentMethod)',style: AppTypography.sfProRoundedSemiBold
                  .copyWith(fontSize: 12.dp, color: AppColors.violet))
          ]
        ],
      ),
    );
  }

  Container _details() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.dp, vertical: 8.dp),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.dp),
            bottomRight: Radius.circular(12.dp)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            const Color(0xFF00AEEF).withValues(alpha: 0.12),
            const Color(0xFFF6F6F6).withValues(alpha: 0)
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(isDropoff ? AppImages.locationIcon : AppImages.customerIcon,
                  height: 16.dp, width: 16.dp),
              Gap(4.dp),
              Text(isDropoff ? 'Location' : "Customer",
                  style: AppTypography.sfProRoundedSemiBold.copyWith(
                      fontSize: 12.dp, color: AppColors.primaryColor500)),
              const Spacer(),
              Text(
                  'Date',
                  style: AppTypography.sfProRoundedSemiBold
                      .copyWith(fontSize: 12.dp, color: AppColors.dateColor))
            ],
          ),
          Gap(2.dp),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20.dp),
              SizedBox(
                  width: 100,
                  child: Text(isDropoff ? address : custName,
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                          fontSize: 12.dp, color: AppColors.addressColor))),
              const Spacer(),
              Row(
                children: [
                  Text(date,
                      style: AppTypography.sfProRoundedSemiBold
                          .copyWith(fontSize: 12.dp, color: AppColors.neutral900)),
                  //a round point here
                  Gap(4.dp),
                  Container(
                    width: 5.dp,
                    height: 5.dp,
                    decoration: const BoxDecoration(
                      color: AppColors.neutral900,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Gap(4.dp),
                  Text(time,
                      style: AppTypography.sfProRoundedSemiBold
                          .copyWith(fontSize: 12.dp, color: AppColors.neutral900)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
