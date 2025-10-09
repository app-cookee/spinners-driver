import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/delivery_bloc/delivery_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
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
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.neutral50, AppColors.white])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DashedDivider(),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
                horizontal: 16.dp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(20.dp),
                Row(
                  spacing: 2.dp,
                  children: [
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
    
    return price != "AED 0" ? Column(
      children: [
        InvoiceItemRow(
          itemName: itemName,
          price: price,
        ),
        Gap(8.dp),
        const DashedDivider(),
        Gap(8.dp),
      ],
    ) : const SizedBox.shrink();
  }).toList();
}).expand((list) => list).toList()),
   if (state.orderDetails.additionalCharges.isNotEmpty) ...[
  Gap(6.dp),
  Column(
    children: state.orderDetails.additionalCharges.map((charge) {
      final double amount = double.tryParse(charge.amount ?? "0") ?? 0;
      final double totalAmount = double.tryParse(state.orderDetails.totalAmount ?? "0") ?? 0;
      final double percentage = totalAmount > amount
          ? (amount / (totalAmount - amount)) * 100
          : 0;
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
            if (charge.type != 'Quick Order Charge')
            Text(
              "+${percentage.toStringAsFixed(2)}%",
              style: AppTypography.sfProRoundedRegular.copyWith(
                fontSize: 14.dp,
                color: AppColors.secondary600,
              ),
            ),
              if (charge.type != 'Quick Order Charge')
            Gap(8.dp),
            Text(
              "AED ${charge.amount}",
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
],


               Gap(8.dp),
Row(
                  children: [
                    Text(
                      "Total",
                      style: AppTypography
                          .sfProRoundedSemiBold
                          .copyWith(
                        fontSize: 20.dp,
                        color: AppColors.neutral950,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "AED ${state.orderDetails.totalAmount}",
                      style: AppTypography
                          .sfProRoundedSemiBold
                          .copyWith(
                        fontSize: 20.dp,
                        color: AppColors.neutral950,
                      ),
                    ),
                  ],
                ),

                if(state.orderDetails.promoUsages.isNotEmpty)...[Gap(8.dp),
               Row(
                  children: [
                    Text(
                      "Promo Applied",
                      style: AppTypography.sfProRoundedRegular
                          .copyWith(
                        fontSize: 14.dp,
                        color: AppColors.neutral900,
                      ),
                    ),
                    Gap(6.dp),
                    Container(
                      height: 3.dp,
                      width: 3.dp,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(1.dp),
                        color: AppColors.neutral900,
                      ),
                    ),
                    Gap(6.dp),
                    Text(
                    state.orderDetails.promoUsages.first.promoCode?.name??"",
                      style: AppTypography.sfProRoundedRegular
                          .copyWith(
                        fontSize: 14.dp,
                        color: AppColors.neutral900,
                      ),
                    ),
                    Spacer(),
                    Text("AED ${state.orderDetails.promoUsages.first.amount                                                 }",
                        style: AppTypography
                            .sfProRoundedRegular
                            .copyWith(
                          fontSize: 14.dp,
                          color: AppColors.green,
                        ))
                  ],
                ),
               ],
               if (state.orderDetails.payment.any((p) => p.walletTransaction != null)) ...[
  Gap(8.dp),
  Row(
    children: [
      Text(
        "Wallet Applied",
        style: AppTypography.sfProRoundedRegular.copyWith(
          fontSize: 14.dp,
          color: AppColors.neutral900,
        ),
      ),
      Spacer(),
      Text(
        "AED ${state.orderDetails.payment
            .first.walletTransaction?.amount??""}",
        style: AppTypography.sfProRoundedRegular.copyWith(
          fontSize: 14.dp,
          color: AppColors.green,
        ),
      ),
    ],
  ),
],
                  if((state.orderDetails.payment.any((p) => p.walletTransaction != null))||(state.orderDetails.additionalCharges.isNotEmpty)||(state.orderDetails.promoUsages.isNotEmpty))
              Gap(12.dp),
            if((state.orderDetails.payment.any((p) => p.walletTransaction != null))||(state.orderDetails.additionalCharges.isNotEmpty)||(state.orderDetails.promoUsages.isNotEmpty))
              DashedDivider(
                  dashPattern: [6, 6],
                ),
                Gap(8.dp),
                // Gap(6.dp),
                // Row(
                //   mainAxisAlignment:
                //       MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       "Tip for Driver",
                //       style: AppTypography.sfProRoundedRegular
                //           .copyWith(
                //         fontSize: 14.dp,
                //         color: AppColors.neutral900,
                //       ),
                //     ),
                //     // Spacer(),
                //     Text("AED 5",
                //         style: AppTypography
                //             .sfProRoundedRegular
                //             .copyWith(
                //           fontSize: 14.dp,
                //           color: AppColors.neutral950,
                //         ))
                //   ],
                // ),
                // Row(
                //   children: [
                //     Text(
                //       "Total",
                //       style: AppTypography
                //           .sfProRoundedSemiBold
                //           .copyWith(
                //         fontSize: 20.dp,
                //         color: AppColors.neutral950,
                //       ),
                //     ),
                //     Spacer(),
                //     Text(
                //       "AED ${state.orderDetails.totalAmount}",
                //       style: AppTypography
                //           .sfProRoundedSemiBold
                //           .copyWith(
                //         fontSize: 20.dp,
                //         color: AppColors.neutral950,
                //       ),
                //     ),
                //   ],
                // ),
                
             if (codAmount > 0)
  Row(
    children: [
      Text(
        "Pay on Delivery",
        style: AppTypography.sfProRoundedMedium.copyWith(
          fontSize: 14.dp,
          color: AppColors.neutral900,
        ),
      ),
      const Spacer(),
      Text(
        "AED ${codAmount.toStringAsFixed(2)}",
        style: AppTypography.sfProRoundedRegular.copyWith(
          fontSize: 14.dp,
          color: AppColors.neutral950,
        ),
      ),
    ],
  ),
                Gap(16.dp),
                if(state.orderDetails.status=="delivered")
                const InvoiceButton(
                    imagePath: AppImages.pin,
                    text: "Download Invoice (PDF)"),
                SizedBox(
                  height: 20.h + 18.dp,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}







