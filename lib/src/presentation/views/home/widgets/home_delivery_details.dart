import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_laundry/app/theme/app_colors.dart';
import 'package:spinners_laundry/app/theme/app_typography.dart';
import 'package:spinners_laundry/src/presentation/constants/app_images.dart';
import 'package:spinners_laundry/src/presentation/views/profile/account_screen.dart';
import 'package:spinners_laundry/src/presentation/views/widgets/dashed_divider.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class HomeDeliveryDetails extends StatelessWidget {
  const HomeDeliveryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsetsGeometry.symmetric(horizontal: 16.dp),
      child: Column(
        children: [
          DashedDivider(
            isRoundedRectangle: true,
            color: AppColors.neutral200,
            child: Padding(
              padding: EdgeInsets.all(12.0.dp),
             
              child: Row(
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
      children: [  CustomPaint(
                    painter: DashRectPainter(borderRadius: 6.dp,
                      strokeWidth: 1.5,
                      color: Color(0xFFF3E4B7),
                      backgroundColor: Color(0xFFFFF8CE),
                                       
                    
                    ),  child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 6.dp, horizontal: 8.dp),
                        decoration: BoxDecoration(
                            color: Color(0xFFFFF8CE),
                            borderRadius: BorderRadius.circular(6.dp)),
                        child: Text(
                          "Out for Delivery",
                          style: AppTypography.sfProRoundedSemiBold.copyWith(
                              fontSize: 10.sp, color: Color(0xFF89722C)),
                        ),
                      ),
                  ),Gap(4.dp),
                         Text("#SPN12876",style: AppTypography.sfProRoundedSemiBold.copyWith(
                                  fontSize: 12.sp, color: AppColors.black.withValues(alpha: 0.4)),)],
                      ),Gap(4.dp),
                      Text("Today, between 4:00 PM - 6:00 PM",style: AppTypography.sfProRoundedSemiBold.copyWith(
                                  fontSize: 16.sp, color: AppColors.neutral900))
                      
      
                    ],
                  ),Spacer(),
              Image.asset(AppImages.arrowRightIcon,height:36.dp,width: 36.dp ,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
