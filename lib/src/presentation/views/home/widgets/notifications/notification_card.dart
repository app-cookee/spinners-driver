import 'package:flutter/material.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class NotificationCard extends StatefulWidget {
  const NotificationCard({super.key, required this.notification, required this.isTopCard, required this.isLastCard, });
 final String notification;
  final bool isTopCard;
  final bool isLastCard;
  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
   Color _getCardColor() {
    if (widget.isTopCard) {
      return Colors.white; // White for first card (top card)
    } else if (widget.isLastCard) {
      return  AppColors.lightGrey; 
    } else {
      return AppColors.neutral50;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      margin: EdgeInsets.symmetric(horizontal: 16.dp),
      padding: EdgeInsets.symmetric(horizontal: 45.dp, vertical: 12.dp),
      decoration: BoxDecoration(
        // color:widget.isTopCard? Colors.white:widget.isLastCard? AppColors.lightGrey.withValues(alpha:0.8):AppColors.neutral50,
         color:_getCardColor(),
        borderRadius: BorderRadius.circular(8.dp),
        border: Border.all(
          color: AppColors.lightGrey,
          width: 1.2.dp,
        ),
      ),
      child: Text(widget.notification, style: AppTypography.sfProRoundedSemiBold.copyWith(color: AppColors.neutral900, fontSize: 16.dp)),
    );
  }
}