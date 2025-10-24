import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/delivery_bloc/delivery_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/utils/app_utils.dart';
import 'package:spinners_driver/src/presentation/views/delivery_order_detail/widgets/invoice_button.dart';
import 'package:spinners_driver/src/presentation/views/delivery_order_detail/widgets/invoice_item_row.dart';
import 'package:spinners_driver/src/presentation/views/widgets/dashed_divider.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class DeliveryOrderInvoiceDetails extends StatelessWidget {
  const DeliveryOrderInvoiceDetails({
    super.key, required this.state,
  });
  final DeliveryState state;

  @override
  Widget build(BuildContext context) {
    // log(state.orderDetails.promoUsages.first.promoCode?.name.toString());
    final codAmount = state.orderDetails.payment
                              .where((p) => p.status.toLowerCase() == "pending")
                              .map((p) => double.tryParse(p.amount) ?? 0.0)
                              .fold(0.0, (sum, amt) => sum + amt);

final totalPaidAmount = state.orderDetails.payment
    // include only successful payments
    .where((p) =>
        p.status.toLowerCase() == "authorized" ||
        p.status.toLowerCase() == "completed")
    // sum up all their amounts
    .map((p) => double.tryParse(p.amount) ?? 0.0)
    .fold(0.0, (sum, amt) => sum + amt)
    // subtract wallet only if it exists
    -
    ((state.orderDetails.payment.isNotEmpty &&
            state.orderDetails.payment.first.walletTransaction != null)
        ? state.orderDetails.payment.first.walletTransaction!.amount
        : 0.0);

    log(totalPaidAmount.toString(),name:"total paid amount");

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.neutral50,  AppColors.white,AppColors.white])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DashedDivider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20.dp),
              Row(
                spacing: 2.dp,
                children: [
                  Gap(14.dp),
                  Image.asset(
                    AppImages.basket,
                    height: 17.dp,
                    width: 13.dp,
                  ),
                  Text("Invoice Details",
                      style: AppTypography
                          .sfProRoundedSemiBold
                          .copyWith(
                        fontSize: 12.dp,
                        color: AppColors.textGrey,
                      )),
                ],
              ),
              Gap(12.dp),
                     
          ...(state.orderDetails.orderedServices.map((orderedService) {
            return orderedService.item.map((orderItem) {
              final itemName = "${orderItem.quantity} ${orderItem.item?.name ?? 'Unknown Item'}";
              final totalPrice = orderItem.quantity * (int.tryParse(orderItem.soldPrice) ?? 0);
              final price = "AED $totalPrice";
              final itemService="${orderedService.service?.name??""}-${orderItem.item?.category?.name??""}";
              
              return price != "AED 0" ? Column(
                children: [
                  InvoiceItemRow(
                    itemName: itemName,
                    price: price,
                    itemDetails: itemService,
                  ),
                  Gap(8.dp),
                  const DashedDivider(),
                  Gap(8.dp),
                ],
              ) : const SizedBox.shrink();
            }).toList();
          }).expand((list) => list).toList()),
          //show the total amount of items named as Service Cost
          Gap(4.dp),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 16.dp),
                child: Row(
                  children: [
                    Text(
                      "Total items service cost",
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                fontSize: 14.sp,
                color: AppColors.neutral950,
                            ),
                    ),
                    Spacer(),
                    Text(
                      "AED ${state.orderDetails.orderedServices.fold<double>(0.0, (sum, orderedItem) => sum + orderedItem.item.fold<double>(0.0, (itemSum, item) => itemSum + (item.quantity * double.parse(item.soldPrice.isNotEmpty ? item.soldPrice : '0.0')))).toStringAsFixed(2)}",
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                fontSize: 14.sp,
                color: AppColors.neutral950,
                            ),
                    ),
                  ],
                ),
              ),
              Gap(16.dp),
             if (state.orderDetails.additionalCharges.isNotEmpty) ...[
            // Gap(6.dp),
            Container(
              decoration: const BoxDecoration(gradient: LinearGradient(begin: AlignmentGeometry.topCenter,end: AlignmentGeometry.bottomCenter,
                colors: [Color(0xFFF1F0FF),Color(0xFFFFFFFF)])),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [  const DashedDivider(),
                Gap(20.dp),
                    Row(
                      children: [Gap(16.dp),
                        Text(
                            "Additional Charges",
                            style: AppTypography.sfProRoundedSemiBold.copyWith(
                                        fontSize: 14.sp,
                                        color: AppColors.neutral950,
                                  ),
                          ),
                      ],
                    ),
                    Gap(8.dp),
                  Padding(
                    padding:EdgeInsetsGeometry.symmetric(horizontal: 16.dp),
                    child: Column(
                      children: state.orderDetails.additionalCharges.map((charge) {
                                final double totalAmount =
                                double.tryParse(state.orderDetails.totalAmount ?? "0") ?? 0;
                    
                        // sum of all additional charges
                        final double totalAdditionalCharges = state.orderDetails.additionalCharges
                                .map((c) => double.tryParse(c.amount ?? "0") ?? 0)
                                .fold(0, (a, b) => a + b);
                    
                        // base amount = total - additional charges
                        final double baseAmount = totalAmount - totalAdditionalCharges;
                    
                        // current charge amount
                        final double amount = double.tryParse(charge.amount ?? "0") ?? 0;
                    
                        // percentage for this charge (relative to base)
                        final double percentage =
                                baseAmount > 0 ? (amount / baseAmount) * 100 : 0;
                        return Padding(
                              padding: EdgeInsets.only(bottom: 6.dp),
                              child: Row(
                                children: [
                                  Text(
                                  charge.type == 'Quick Order Charge'
                                                  ? 'Quick Order Charge'
                                                  : charge.type,
                    style: AppTypography.sfProRoundedRegular.copyWith(
                      fontSize: 14.dp,
                      color: AppColors.neutral900,
                    ),
                                  ),
                                  const Spacer(),
                                  if (charge.type== 'Express Service Charge')
                                  Text(
                    "+${AppUtils.format(percentage)}%",
                    style: AppTypography.sfProRoundedRegular.copyWith(
                      fontSize: 14.dp,
                      color: AppColors.secondary600,
                    ),
                                  ),
                    if (charge.type  == 'Express Service Charge')
                                  Gap(8.dp),
                                  Text(
                    "AED ${amount.toStringAsFixed(2)}",
                    style: AppTypography.sfProRoundedRegular.copyWith(
                      fontSize: 14.dp,
                      color: 
                      // charge.type=='quickOrderCharge'? AppColors.green : 
                      AppColors.neutral950,
                    ),
                                  ),
                                ],
                              ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
          
          
             Gap(8.dp),
          Column(
            children: [
              DashedDivider(),
              
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 16.dp,vertical: 8.dp),
                child: Row(
                      children: [
                        Text(
                          "Total",
                          style: AppTypography
                              .sfProRoundedMedium
                              .copyWith(
                            fontSize: 18.dp,
                            color: AppColors.neutral950,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "AED ${  double.tryParse(state.orderDetails.totalAmount)?.toStringAsFixed(2) ?? "0.00"}",
                          style: AppTypography
                              .sfProRoundedMedium
                              .copyWith(
                             fontSize: 18.dp,
                            color: AppColors.neutral950,
                          ),
                        ),
                      ],
                    ),
              ),
              const DashedDivider()
            ],
          ),
                  
          
          
          
              if (state.orderDetails.promoUsages.isNotEmpty ||
    state.orderDetails.payment.any((p) => p.walletTransaction != null)||totalPaidAmount>0) ...[
  Column(
    children: [
      Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFEFFFF1), Color(0xFFFFFFFF)],
          ),
        ),
        padding: EdgeInsets.only(left: 16.dp,right: 16.dp,top: 20.dp,bottom: 16.dp), 
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
                    "Applied Promos & Payments",
                    style: AppTypography.sfProRoundedSemiBold.copyWith(
                      fontSize: 12.dp,
                      color: AppColors.neutral950,
                    ),
                  ),
                  Gap(8.dp),
      
            
            // --- Promo Applied ---
            if (state.orderDetails.promoUsages.isNotEmpty) ...[
              Row(
                children: [
                  Text(
                    "Promo Applied",
                    style: AppTypography.sfProRoundedRegular.copyWith(
                      fontSize: 14.dp,
                      color: AppColors.paidGreen,
                    ),
                  ),
                  Gap(6.dp),
                  Container(
                    height: 3.dp,
                    width: 3.dp,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.paidGreen,
                    ),
                  ),
                  Gap(6.dp),
                  Text(
                    state.orderDetails.promoUsages.first.promoCode?.name ?? "",
                    style: AppTypography.sfProRoundedRegular.copyWith(
                      fontSize: 14.dp,
                      color: AppColors.paidGreen,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "AED ${double.tryParse(state.orderDetails.promoUsages.first.amount)??0.0.toStringAsFixed(2)}",
                    style: AppTypography.sfProRoundedMedium.copyWith(
                      fontSize: 14.dp,
                      color: AppColors.green,
                    ),
                  ),
                ],
              ),
              Gap(6.dp),
            ],
      
            // --- Wallet Applied ---
            if (state.orderDetails.payment.any((p) => p.walletTransaction != null)) ...[
              Row(
                children: [
                  Text(
                    "Wallet Applied",
                    style: AppTypography.sfProRoundedRegular.copyWith(
                      fontSize: 14.dp,
                      color: AppColors.paidGreen,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "AED ${state.orderDetails.payment.first.walletTransaction?.amount.toStringAsFixed(2)?? ""}",
                    style: AppTypography.sfProRoundedMedium.copyWith(
                      fontSize: 14.dp,
                      color: AppColors.green,
                    ),
                  ),
                ],
              ),
              Gap(6.dp),
            ],
      
            // --- Paid Amount ---
            if (totalPaidAmount > 0) ...[
              Row(
                children: [
                  Text(
                    "Paid Amount",
                    style: AppTypography.sfProRoundedSemiBold.copyWith(
                      fontSize: 14.dp,
                      color: AppColors.paidGreen,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "AED ${totalPaidAmount.toStringAsFixed(2)}",
                    style: AppTypography.sfProRoundedSemiBold.copyWith(
                      fontSize: 14.dp,
                      color: AppColors.green,
                    ),
                  ),
                ],
              ),
            ],
         
          ],
        ),
      ),
         const DashedDivider()
    ],
  ),
],

           
              Gap(20.dp),
            
            
              
           if (codAmount > 0)
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 16.dp),
              child: Row(
                children: [
                  Text(
                    "Pay on Delivery",
                    style: AppTypography.sfProRoundedSemiBold.copyWith(
                      fontSize: 20.dp,
                      color: AppColors.neutral950,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "AED ${codAmount.toStringAsFixed(2)}",
                    style: AppTypography.sfProRoundedSemiBold.copyWith(
                      fontSize: 20.dp,
                      color: AppColors.neutral950,
                    ),
                  ),
                ],
              ),
            ),
              Gap(16.dp),
            
              SizedBox(
                height: 20.h + 18.dp,
              )
            ],
          ),
        ],
      ),
    );
  }
}







