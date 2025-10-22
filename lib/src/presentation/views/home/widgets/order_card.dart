// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/src/presentation/utils/launcher_utils.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

import 'package:spinners_driver/app/app_router/app_router.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/utils/map_navigation_helper.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/quick_order_label.dart';

import 'package:spinners_driver/src/presentation/views/orders/widgets/ordered_card_button.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';

class OrderCard extends StatelessWidget {
  final String pickupAt;
  final String deliveryAt;
  final String orderId;
  final String refId;
  
  final String time;
  final String status;
  final bool isDropoff;
  final bool isQuickOrder;
  final bool isExpressService;
   final String address;
   final String lat;
   final String lon;
   final VoidCallback? apiCallOnPop;
   final String mobileNumber;
  // final String notes;
  // final List service;
  const OrderCard({
    Key? key,
    required this.orderId,
    required this.refId,
    required this.time,
    required this.status,
    required this.isDropoff,
    required this.isQuickOrder,
    required this.isExpressService,
    required this.address,
    required this.lat,
    required this.lon,
    this.apiCallOnPop,
    required this.mobileNumber, required this.pickupAt, required this.deliveryAt,
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
    // log(isExpressService.toString());
    return Container(
      padding: EdgeInsets.only(top: 9.dp, bottom: 12.dp),
      margin: EdgeInsets.only(bottom: 12.dp),
      decoration: BoxDecoration(
        color: AppColors.white,boxShadow: [BoxShadow(
           color: AppColors.black.withValues(alpha: .11), 
           offset:const Offset(0, 2), blurRadius : 5,
         spreadRadius :0.0, 
           
    
        )],
        borderRadius: BorderRadius.circular(12.dp),
        border:  Border.all(color:getBorderColor()),
      
      ),
      child: Column(
        children: [
          // Order ID Row
          _orderId(),
    
          // 
          _details(),
    
          Gap(8.dp),

           _orderedCardButtons(context,)
         
        ],
      ),
    );
  }

  Widget _orderId() {
    return Padding(
      padding: EdgeInsets.only(right: 9.dp, left: 16.dp, bottom: 8.dp),
      child: Row(
        children: [
          Text("Order ID : ", style: AppTypography.sfProRoundedMedium.copyWith(fontSize: 12.dp, color: AppColors.countrycodeColor)),
          Text(refId, style: AppTypography.sfProRoundedMedium.copyWith(fontSize: 12.dp, color: AppColors.textGrey)),
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

  Container _details() {
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
                                const Spacer(),
                  Text(status=="pickupScheduled"?"Pickup Scheduled":status=="pickedUp"?"Picked Up":status=="readyForDelivery"?"Ready For Delivery":"Delivered", style: AppTypography.sfProRoundedRegular.copyWith(fontSize: 12.dp, color: getColor(status)))
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
        ],
      ),
    );
  }


Widget _orderedCardButtons(BuildContext context,) {
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
          onTap: () {(lat==null||lon==null||lat==""||lon=="")?
          TheToast.show(message: "This location is not available", context: context):
          
      MapNavigationHelper.openNavigation(  double.tryParse(lat), double.tryParse(lon),
      context
      
        );
          
          },
        ),
        OrderCardButton(
          widthFactor: 71 / 376,
          icon: AppImages.clipboardIcon,
          text: "View",
          borderColor: AppColors.greyColor,
          textColor: AppColors.grey1Color,
           onTap: () {
         if(isDropoff){
        
          context.router.push(DeliveryOrderDetailRoute(orderId: orderId,refId: refId)).then((_){
              apiCallOnPop?.call();
                

          
    
          });
         } else {
          context.router.push(OrderDetailRoute(orderId: orderId)).then((_){
    
             apiCallOnPop?.call();
          });

         }      
      },
        ),
        OrderCardButton(
          widthFactor: 36 / 376,
          icon: AppImages.phoneIcon,
          borderColor: AppColors.greyColor,
          textColor: AppColors.grey1Color,
          onTap: () {
   
     LauncherUtils.launchPhoneDialer(mobileNumber,
                      context: context);
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

Color getBorderColor() {
  final now = DateTime.now().toUtc(); // current time in UTC
  try {
    if (status == "pickupScheduled") {
      final pickupDate = DateTime.parse(pickupAt);
      if (pickupDate.isBefore(now)) {
        return Colors.red; // overdue pickup
      }
    } else if (status == "readyForDelivery") {
      final deliveryDate = DateTime.parse(deliveryAt);
      if (deliveryDate.isBefore(now)) {
        return Colors.red; // overdue delivery
      }
    }
  } catch (e) {
    // if parsing fails, fallback
    debugPrint("Date parse error: $e");
  }

  // Default border color
  return AppColors.shadowColor;
}



}
