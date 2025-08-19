import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/pickup_order_detail/widgets/order_info_card.dart';

import 'package:the_responsive_builder/the_responsive_builder.dart';


@RoutePage()
class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key, required this.orderId});
  final String orderId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.white,
      body: Stack(children: [
        GestureDetector(
              onTap: () => Navigator.pop(context), child: _header(context)),
                 Padding(
            padding: EdgeInsets.only(top: 9.8.h),child: CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.dp, right: 16.dp, top: 8.dp),
                              child: Column(
                                children: [
                                  const OrderInfoCard(
                                      label: "Order Type",
                                      value: 
                                      // state.orderDetails.type ==
                                      //         "normalOrder"
                                      //     ? "Normal"
                                      //     : 
                                          "Quick Order⚡"),
                                  Gap(4.dp),
                                  const OrderInfoCard(
                                      label: "Pickup Time",
                                      value: 
                                      // formatSingleDate(
                                      //     state.orderDetails.createdAt)
                                      "3:15 PM (in 25 min)"
                                      ),
                                ],
                              ),
                            ),
                          ),
                          SliverPersistentHeader(
                            pinned: true,
                            delegate: StickyHeaderDelegate(
                              child: Container(
                                color: AppColors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.dp, vertical: 0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Gap(4.dp),
                                      const OrderInfoCard(
                                           label: "Delivery Method",
                                        value:"Doorstep",
                                     
                                      ),
                                    
                                      Gap(4.dp),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.dp),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                
                                  // state.orderDetails.customerNote.isNotEmpty
                                  //     ?
                                       Container(
                                          width: 100.w,
                                          decoration: BoxDecoration(
                                              color: AppColors.secondary50,
                                              borderRadius:
                                                  BorderRadius.circular(8.dp)),
                                          padding: EdgeInsets.all(12.dp),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Image.asset(
                                                    AppImages.instructions,
                                                    height: 12.dp,
                                                    width: 12.dp,
                                                  ),
                                                  Text(
                                                    " Special  Notes",
                                                    style: AppTypography
                                                        .sfProRoundedMedium
                                                        .copyWith(
                                                      fontSize: 12.dp,
                                                      color: AppColors.textGrey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Gap(8.dp),
                                              Text(
                                                
                                                "Customer requested pickup after prayer time.",
                                                style: AppTypography
                                                    .sfProRoundedMedium
                                                    .copyWith(
                                                  fontSize: 12.dp,
                                                  color: AppColors.neutral950,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                    
                                  Gap(20.dp),
                                  

                                  Row(
                                    spacing: 12.dp,
                                    children: [
                                      Image.asset(
                                        AppImages.person,
                                        height: 40.dp,
                                        width: 40.dp,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Customer",
                                            style: AppTypography.sfProRoundedMedium
                                                .copyWith(
                                              fontSize: 12.dp,
                                              color: AppColors.textGrey,
                                            ),
                                          ),
                                          Text(
                                            "Ahmed Al Harthy",
                                            style: AppTypography.sfProRoundedSemiBold
                                                .copyWith(
                                              fontSize: 16.dp,
                                              color: AppColors.neutral950,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Gap(10.dp),
                                  Row(
                                    spacing: 12.dp,
                                    children: [
                                      Image.asset(
                                        AppImages.clipboard,
                                        height: 40.dp,
                                        width: 40.dp,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Cash On Delivery Amount",
                                            style: AppTypography
                                                .sfProRoundedMedium
                                                .copyWith(
                                              fontSize: 12.dp,
                                              color: AppColors.textGrey,
                                            ),
                                          ),
                                          Text("AED 45",
                                           
                                            style: AppTypography
                                                .sfProRoundedSemiBold
                                                .copyWith(
                                              fontSize: 16.dp,
                                              color: AppColors.neutral950,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Gap(10.dp),
                                  // _buildStatusTrackingUI(state)
                                  
                                ],
                              ),
                            ),
                          ),
                
                        ],
                      ),)
      ],),
    );
    
  }
    Container _header(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 7.h, left: 16.dp, right: 16.dp, bottom: 8.dp),
      width: 100.w,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AppImages.arrow,
            height: 20.dp,
            width: 20.dp,
          ),
          Gap(6.dp),
          Text(
            "Order ID: #SPN${orderId}",
            style: AppTypography.sfProRoundedSemiBold.copyWith(
              fontSize: 16.dp,
              color: AppColors.neutral950,
            ),
          ),
        ],
      ),
    );
  }

}


class StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  StickyHeaderDelegate({required this.child});

  @override
  double get minExtent => 47.dp; // Fixed height instead of 70.dp

  @override
  double get maxExtent => 47.dp; // Same as minExtent

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      elevation: overlapsContent ? 2.0 : 0.0,
      child: Container(
        color: Colors.white,
        height: maxExtent,
        child: child,
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
