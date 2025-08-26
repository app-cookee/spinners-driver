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

class QuickOrderInvoiceDetails extends StatelessWidget {
  const QuickOrderInvoiceDetails({
    super.key,
    required this.state,
  });
  final DeliveryState state;

  @override
  Widget build(BuildContext context) {
    return state.orderDetails.orderedItems.isNotEmpty&&
     state.orderDetails.orderedItems.first.quantity!=0
        ? Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [AppColors.yellow2, AppColors.white])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DashedDivider(),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 16.dp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(20.dp),
                      Text("Reviewed & Itemized by Our Facility Team",
                          style: AppTypography.sfProRoundedSemiBold.copyWith(
                            fontSize: 12.dp,
                            color: AppColors.yellow1,
                          )),
                      Gap(12.dp),
                      ...((state.orderDetails.orderedItems).map((orderedItem) {
                        // Format name: "2 Shirts"
                        final itemName =
                            "${orderedItem.quantity} ${orderedItem.item?.name ?? ''} - ${orderedItem.item?.category?.service?.name ?? ""}";

                        // Format price: "AED 24"
                        final price =
                            "AED ${orderedItem.item?.salePrice ?? '0'}";

                        return Column(
                          children: [
                            InvoiceItemRow(
                              itemName: itemName,
                              price: price,
                            ),
                            Gap(8.dp),
                            DashedDivider(),
                            Gap(8.dp),
                          ],
                        );
                      })),


                      Gap(16.dp),
                       if (state.orderDetails.promoUsages.isNotEmpty)...[
                          InvoiceProfitRowItem(
                        title: 'Promo Applied',
                        subTitle: state.orderDetails.promoUsages.first.promoCode
                                ?.name ??
                            "",
                        content:
                            'AED ${state.orderDetails.promoUsages.first.amount}',
                      ),

                       ],
                    
                      Gap(6.dp),
                      if (state.orderDetails.payment.isNotEmpty)
                        ...state.orderDetails.payment.map((payment) {
                          return InvoiceProfitRowItem(
                            title: payment.method == "wallet"
                                ? "Wallet"
                                : payment.method,
                            content:
                                'AED ${payment.amount}',
                          );
                        }).toList(),

                    
                      
                      if (state.orderDetails.additionalCharges.isNotEmpty)...[Gap(6.dp),
                          Row(
                        children: [
                          Text(
                            "Express Surcharge",
                            style: AppTypography.sfProRoundedRegular.copyWith(
                              fontSize: 14.dp,
                              color: AppColors.neutral900,
                            ),
                          ),
                          Spacer(),
                          Text(
                              "+${((double.tryParse(state.orderDetails.additionalCharges.first.amount ?? "0") ?? 0) / ((double.tryParse(state.orderDetails.totalAmount ?? "0") ?? 0) - (double.tryParse(state.orderDetails.additionalCharges.first.amount ?? "0") ?? 0)) * 100).toStringAsFixed(2)}%",
                              style: AppTypography.sfProRoundedRegular.copyWith(
                                fontSize: 14.dp,
                                color: AppColors.secondary600,
                              )),
                          Gap(8.dp),
                          if (state.orderDetails.additionalCharges.isNotEmpty)
                            Text(
                                "AED ${state.orderDetails.additionalCharges.first.amount}",
                                style:
                                    AppTypography.sfProRoundedRegular.copyWith(
                                  fontSize: 14.dp,
                                  color: AppColors.neutral950,
                                ))
                        ],
                      ),

                      ],
                    
                      // Gap(6.dp),
                      // Row(
                      //   mainAxisAlignment:
                      //       MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text(
                      //       "Service Fee",
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
                      Gap(12.dp),
                      DashedDivider(
                        dashPattern: [6, 6],
                      ),
                      Gap(8.dp),
                      InvoiceButton(
                          imagePath: AppImages.message,
                          text: "Chat with Support"),
                      SizedBox(
                        height: 22.h + 18.dp,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        : SizedBox.shrink();
  }
}

class InvoiceProfitRowItem extends StatelessWidget {
  const InvoiceProfitRowItem({
    super.key,
    this.title,
    this.subTitle,
    this.content,
  });
  final String? title;
  final String? subTitle;
  final String? content;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title ?? '',
          style: AppTypography.sfProRoundedRegular.copyWith(
            fontSize: 14.dp,
            color: AppColors.neutral900,
          ),
        ),
        Gap(6.dp),
        if (subTitle != null)
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
          subTitle ?? '',
          style: AppTypography.sfProRoundedRegular.copyWith(
            fontSize: 14.dp,
            color: AppColors.neutral900,
          ),
        ),
        Spacer(),
        Text(content ?? '',
            style: AppTypography.sfProRoundedRegular.copyWith(
              fontSize: 14.dp,
              color: AppColors.green,
            ))
      ],
    );
  }
}
