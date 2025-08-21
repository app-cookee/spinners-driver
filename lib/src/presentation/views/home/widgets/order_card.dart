import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/app_router/app_router.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/quick_order_label.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/scan_new_bag_bottomsheet.dart';
import 'package:spinners_driver/src/presentation/views/widgets/custom_bottomsheet_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class OrderCard extends StatelessWidget {
  final String orderId;
  final List<String> services;
  final String time;
  final String status;
  final bool isDropoff;
  final bool isQuickOrder;
  final bool isService;
  final String notes;
  const OrderCard({
    super.key,
    required this.orderId,
    required this.services,
    required this.time,
    required this.status,
    required this.isDropoff,
    required this.isQuickOrder,
    required this.isService,
    required this.notes,
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
    return InkWell(
      onTap: () {
        // if(trailingButton != null){
        //   context.router.push(QuickOrderDetailRoute(orderId: orderId));
        // } else{
         if(!isDropoff){
          context.router.push(OrderDetailRoute(orderId: orderId));
         }
        // }
        CustomBottomSheetWidget(context: context, child: const ScanNewBagBottomsheet()).show();
      },
      child: Container(
        padding: EdgeInsets.only(top: 9.dp, bottom: 12.dp),
        margin: EdgeInsets.only(bottom: 12.dp),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.dp),
          border: Border.all(color: AppColors.lightGrey),
        ),
        child: Column(
          children: [
            // Order ID Row
            _orderId(),

            // Services
            _services(),

            Gap(8.dp),

            // Pickup Row
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.dp),
              child: Row(
                children: [
                  Image.asset(isDropoff ? AppImages.box : AppImages.bike, height: 16.dp, width: 16.dp),
                  const Spacer(),
                  Text(status, style: AppTypography.sfProRoundedRegular.copyWith(fontSize: 12.dp, color: getColor(status)))
                ],
              ),
            ),
            Gap(2.dp),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.dp),
              child: Row(
                children: [
                  Text(isDropoff ? 'Drop-off' : "Pickup", style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 12.dp, color: AppColors.black)),
                  const Spacer(),
                  Text(time, style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 12.dp, color: AppColors.neutral900))
                ],
              ),
            ),

            // Dotted Divider
            _divider(),
            _footerButtons(),
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
          Text("#$orderId", style: AppTypography.sfProRoundedMedium.copyWith(fontSize: 12.dp, color: AppColors.textGrey)),
          if (isQuickOrder) ...[
            const Spacer(),
            _expressLabel(),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(!isService ? "Notes" : "Services", style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 10.dp, color: AppColors.primaryColor500)),
          Gap(6.dp),
          !isService
              ? Text(notes, style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 12.dp, color: AppColors.neutral950))
              : Wrap(
                  spacing: 8.dp,
                  runSpacing: 6.dp,
                  children: services.map((label) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(AppImages.check, height: 16.dp, width: 16.dp),
                        Gap(2.dp),
                        Text(label, style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 12.dp, color: AppColors.neutral950)),
                      ],
                    );
                  }).toList(),
                ),
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

  Widget _footerButtons() {
    return Row(
      spacing:6.dp,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildButton(
          icon: AppImages.mapIcon,
          label: 'Navigate',
          isNavigate: true,
          onPressed: () {},
        ),
        _buildButton(
          icon: AppImages.clipboardIcon,
          label: 'View',
          isNavigate: false,
          onPressed: () {},
        ),
        _buildButton(
          icon: AppImages.phoneIcon,
          label: 'Navigate',
          isNavigate: false,
          isPhone: true,
          onPressed: () {},
        )
      ],
    );
  }

  Widget _buildButton({required String icon, required String label, required VoidCallback onPressed, bool isNavigate = false, bool isPhone = false}) {
    return Container(
      padding: isNavigate ? EdgeInsets.symmetric(horizontal: 60.5.dp, vertical: 8.dp) : EdgeInsets.all(8.dp),
      decoration: BoxDecoration(
        color: isNavigate ? AppColors.blue1 : AppColors.transparent,
        borderRadius: BorderRadius.circular(8.dp),
        border: Border.all(color: isNavigate ? AppColors.primaryColor : AppColors.lightGrey),
      ),
      child: Row(
        children: [
          Image.asset(icon, height: 20.dp, width: 20.dp),
          if (!isPhone) ...[
            Gap(4.dp),
            Text(label, style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 14.dp, color: AppColors.grey1Color)),
          ]
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
        padding:EdgeInsets.symmetric(horizontal: 8.dp, vertical: 6.5.dp),
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
