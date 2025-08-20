import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/pickup_order_detail/widgets/order_detail_info.dart';
import 'package:spinners_driver/src/presentation/views/pickup_order_detail/widgets/order_info_card.dart';
import 'package:spinners_driver/src/presentation/views/pickup_order_detail/widgets/ordered_services.dart';
import 'package:spinners_driver/src/presentation/views/widgets/dashed_divider.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/qr_scanner_screen.dart';
import 'package:spinners_driver/src/presentation/views/widgets/secondary_button_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key, required this.orderId});
  final String orderId;

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
   final TextEditingController additionalNotesController =
      TextEditingController();
    @override
    void dispose() {
      additionalNotesController.dispose();
      super.dispose();
    }
  @override
  Widget build(BuildContext context) {
    final String type = "Normal";
    ValueNotifier<int?> selectedIndex = ValueNotifier<int?>(null);
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          GestureDetector(
              onTap: () => Navigator.pop(context), child: _header(context)),
          Padding(
            padding: EdgeInsets.only(top: 9.8.h, bottom: 22.dp),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 16.dp, right: 16.dp, top: 8.dp),
                    child: Column(
                      children: [
                        OrderInfoCard(
                            label: "Order Type",
                            value:
                                // state.orderDetails.type ==
                                //         "normalOrder"
                                //     ? "Normal"
                                //     :
                                type == "Quick" ? "Quick Order⚡" : "Normal"),
                        Gap(4.dp),
                        const OrderInfoCard(
                            label: "Pickup Time",
                            value:
                                // formatSingleDate(
                                //     state.orderDetails.createdAt)
                                "3:15 PM (in 25 min)"),
                      ],
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: StickyHeaderDelegate(
                    child: Container(
                      color: AppColors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.dp, vertical: 0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Gap(4.dp),
                            const OrderInfoCard(
                              label: "Delivery Method",
                              value: "Doorstep",
                            ),
                            Gap(4.dp),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                OrderDetailnfo(notes:  "Customer requested pickup after prayer time.",customer:  "Ahmed Al Harthy",amount: "45",),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Gap(20.dp),
                      Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [AppColors.grey, AppColors.white])),
                        width: 100.w,

                        // color: const Color.fromARGB(255, 226, 218, 218),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DashedDivider(),
                            Gap(20.dp),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.dp),
                              child: Text(
                                "Services",
                                style:
                                    AppTypography.sfProRoundedSemiBold.copyWith(
                                  fontSize: 12.dp,
                                  color: AppColors.textGrey,
                                ),
                              ),
                            ),
                            Gap(6.dp),
                            type == "Normal"
                                ? OrderedServices(selectedIndex: selectedIndex)
                                : SizedBox.shrink(),
                            type == "Quick"
                                ? InkWell(onTap: () {
                                   Navigator.push(context, (MaterialPageRoute(builder: (context)=>QRScannerScreen())));
                                },
                                  child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16.dp),
                                      child: SecondaryButtonWidget(
                                        height: 48.dp,
                                        bordercolor: AppColors.scanblue,
                                        backgroundColor: AppColors.white,
                                        textColor: AppColors.primaryColor,
                                        style: AppTypography.sfProRoundedSemiBold
                                            .copyWith(
                                          fontSize: 14.sp,
                                          color: AppColors.primaryColor,
                                        ),
                                        onPressed: () {},
                                        text: "Scan New Bag",
                                        leadingIcon: Image.asset(
                                          height: 24.dp,
                                          width: 24.dp,
                                          AppImages.scanner,
                                          //  color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                )
                                : SizedBox.shrink(),
                            Gap(8.dp),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.dp),
                              child: Text(
                                "Additional Notes",
                                style:
                                    AppTypography.sfProRoundedSemiBold.copyWith(
                                  fontSize: 12.dp,
                                  color: AppColors.textGrey,
                                ),
                              ),
                            ),
                            Gap(6.dp),
                          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.dp),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffD7E5EB),
                  borderRadius: BorderRadius.circular(12.dp),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 1.dp, right: 1.dp),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.dp),
                    ),
                    child: TextField(
                      controller: additionalNotesController,
                      minLines: 6,
                      maxLines: 6,
                      style: AppTypography.sfProRoundedMedium.copyWith(
                        fontSize: 12.sp,
                        color: AppColors.neutral500,
                      ),
                      decoration: InputDecoration(
                        hintText: '',
                        hintStyle: AppTypography.sfProRoundedMedium.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.neutral500,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12.dp,
                          vertical: 8.dp,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.dp),
                          borderSide: BorderSide(
                            color: AppColors.loginFieldBorderColor,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.dp),
                          borderSide: BorderSide(
                            color: AppColors.loginFieldBorderColor,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.dp),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.dp),
                          borderSide: BorderSide(
                            color: AppColors.loginFieldBorderColor,
                            width: 1.dp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
                            SizedBox(height: 17.h)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(bottom: 0, left: 0, right: 0, child: _footerButton(type))
        ],
      ),
    );
  }

  Widget _footerButton(String type) {
    return Container(
      padding:
          EdgeInsets.only(top: 12.dp, left: 16.dp, right: 16.dp, bottom: 21.dp),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -113),
              color: const Color(0xFF000000).withValues(alpha: 0),
              blurRadius: 32,
              spreadRadius: 0),
          BoxShadow(
              offset: const Offset(0, -72),
              color: const Color(0xFF000000).withValues(alpha: 0),
              blurRadius: 29,
              spreadRadius: 0),
          BoxShadow(
              offset: const Offset(0, -41),
              color: const Color(0xFF000000).withValues(alpha: 0.02),
              blurRadius: 24,
              spreadRadius: 0),
          BoxShadow(
              offset: const Offset(0, -18),
              color: const Color(0xFF000000).withValues(alpha: 0.03),
              blurRadius: 18,
              spreadRadius: 0),
          BoxShadow(
              offset: const Offset(0, -5),
              color: const Color(0xFF000000).withValues(alpha: 0.03),
              blurRadius: 10,
              spreadRadius: 0),
        ],
      ),
      child: Column(
        children: [
          PrimaryButtonWidget(
            onPressed: () {},
            text: "Confirm Pickup",
            height: 48.dp,
          ),
          Gap(8.dp),
          SecondaryButtonWidget(
            onPressed: () {},
            text: type == "Quick" ? "Cancel / Report Issue" : "Cancel",
            height: 48.dp,
            backgroundColor: AppColors.textGrey,
          ),
        ],
      ),
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
            "Order ID: #SPN${widget.orderId}",
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
