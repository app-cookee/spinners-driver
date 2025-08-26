import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:spinners_driver/app/app_router/app_router.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/quick_order_label.dart';
import 'package:spinners_driver/src/presentation/views/order_details_screen/widgets/scan_new_bag_bottomsheet.dart';
import 'package:spinners_driver/src/presentation/views/orders/widgets/ordered_card_button.dart';

import 'package:the_responsive_builder/the_responsive_builder.dart';

class OrderCard extends StatelessWidget {
  final String orderId;
  
  final String time;
  final String status;
  final bool isDropoff;
  final bool isQuickOrder;
  final bool isExpressService;
   final String address;
  // final String notes;
  // final List service;
  const OrderCard({
    super.key,
    required this.orderId,
  
    required this.time,
    required this.status,
    required this.isDropoff,
    required this.isQuickOrder,
    required this.isExpressService, required this.address,
    // required this.notes,
    //  required this.service,
  });

  Color getColor(String status) {
    switch (status) {
      case "Completed":
        return AppColors.green;
      case "In Progress":
        return AppColors.yellow;
      default:
        return AppColors.primaryColor500;
    }
  }

  @override
  Widget build(BuildContext context) {
    // log(isExpressService.toString());
    return InkWell(
      onTap: () {
        // if(trailingButton != null){
        //   context.router.push(QuickOrderDetailRoute(orderId: orderId));
        // } else{
         if(!isDropoff){
          context.router.push(OrderDetailRoute(orderId: orderId));
         }
        // }
        
      },
      child: Container(
        padding: EdgeInsets.only(top: 9.dp, bottom: 12.dp),
        margin: EdgeInsets.only(bottom: 12.dp),
        decoration: BoxDecoration(
          color: AppColors.white,boxShadow: [BoxShadow(
             color: AppColors.black.withValues(alpha: .11), 
             offset:const Offset(0, 2), blurRadius : 5,
           spreadRadius :0.0, 
             

          )],
          borderRadius: BorderRadius.circular(12.dp),
          border: Border.all(color: AppColors.shadowColor),
        
        ),
        child: Column(
          children: [
            // Order ID Row
            _orderId(),

            // Services
            _services(),

            Gap(8.dp),

            // // Pickup Row
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16.dp),
            //   child: Row(
            //     children: [
            //       Image.asset(isDropoff ? AppImages.box : AppImages.bike, height: 16.dp, width: 16.dp),
            //       const Spacer(),
            //       Text(status, style: AppTypography.sfProRoundedRegular.copyWith(fontSize: 12.dp, color: getColor(status)))
            //     ],
            //   ),
            // ),
            // Gap(2.dp),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16.dp),
            //   child: Row(
            //     children: [
            //       Text(isDropoff ? 'Drop-off' : "Pickup", style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 12.dp, color: AppColors.black)),
            //       const Spacer(),
            //       Text(time, style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 12.dp, color: AppColors.neutral900))
            //     ],
            //   ),
            // ),

            // Dotted Divider
            // _divider(),
             _orderedCardButtons(context)
           
          ],
        ),
      ),
    );
  }

  Widget _orderId() {
    return Padding(
      padding: EdgeInsets.only(right: 9.dp, left: 16.dp, bottom: 8.dp),
      child: Row(
        children: [
          Text("Order ID", style: AppTypography.sfProRoundedMedium.copyWith(fontSize: 12.dp, color: AppColors.countrycodeColor)),
          Gap(6.dp),
          Text(orderId, style: AppTypography.sfProRoundedMedium.copyWith(fontSize: 12.dp, color: AppColors.textGrey)),
          const Spacer(),
          if(isExpressService)...[  
            _expressLabel(),],
          if (isQuickOrder) ...[
          
            Gap(4.dp),
            const QuickOrderLabel(),
          ],
        ],
      ),
    );
  }

  Container _services() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.dp, vertical: 8.dp),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [const Color(0xFF00AEEF).withValues(alpha: 0.12), const Color(0xFFF6F6F6).withValues(alpha: 0)],
        ),
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [  Image.asset(isDropoff ? AppImages.box : AppImages.bike, height: 16.dp, width: 16.dp),Gap(4.dp),
              Text(isDropoff ? 'Drop-off' : "Pickup", style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 12.dp, color: AppColors.primaryColor500)),
                                 Spacer(),
                  Text(status, style: AppTypography.sfProRoundedRegular.copyWith(fontSize: 12.dp, color: getColor(status)))
            ],
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox
            (
              width: 100,
              child: Text(address,style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 12.dp, color: AppColors.addressColor))),
            const Spacer(),
            Text(time, style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 12.dp, color: AppColors.neutral900))

          ],)
        
              //  Wrap(
              //     spacing: 8.dp,
              //     runSpacing: 6.dp,
              //     children: services.map((label) {
              //       return Row(
              //         mainAxisSize: MainAxisSize.min,
              //         children: [
              //           Image.asset(AppImages.bag, height: 16.dp, width: 16.dp),
              //           Gap(2.dp),
              //           Text(label, style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 12.dp, color: AppColors.neutral950)),
              //         ],
              //       );
              //     }).toList(),
              //   ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 8.dp),
      child: DottedBorder(
        options: CustomPathDottedBorderOptions(
          padding: EdgeInsets.zero,
          customPath: (size) => Path()
            ..moveTo(0, 0)
            ..lineTo(size.width, 0),
          dashPattern: [3, 2], // [dot size, space size]
          color: AppColors.lightGrey,
          strokeWidth: 1,
        ),

        // Horizontal line
        child: const SizedBox(
          height: 1,
          width: double.infinity,
        ),
      ),
    );
  }
Widget _orderedCardButtons(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12.dp),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OrderCardButton(
          widthFactor: 201 / 376,
          icon: AppImages.mapIcon,
          text: "Navigate",
          borderColor: AppColors.primaryColor,
          backgroundColor: AppColors.blue1,
          textColor: AppColors.primaryColor,
          onTap: () {
          
          },
        ),
        OrderCardButton(
          widthFactor: 71 / 376,
          icon: AppImages.clipboardIcon,
          text: "View",
          borderColor: AppColors.greyColor,
          textColor: AppColors.grey1Color,
          onTap: () {
            
          },
        ),
        OrderCardButton(
          widthFactor: 36 / 376,
          icon: AppImages.phoneIcon,
          borderColor: AppColors.greyColor,
          textColor: AppColors.grey1Color,
          onTap: () {
          
          },
        ),
      ],
    ),
  );
}


  Widget _expressLabel() {
    return Container(
        padding:EdgeInsets.all(1.3.dp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.dp),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF908CFF),
              Color(0xFF2720FF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      child: Container(
        padding:EdgeInsets.symmetric(horizontal: 8.dp, vertical: 8.dp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.dp),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFF5F4FF),
              Color(0xFFD2CFFF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Text('Express',style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize:10.sp,color:AppColors.blueColor),),
      ),
    );
  }
}
