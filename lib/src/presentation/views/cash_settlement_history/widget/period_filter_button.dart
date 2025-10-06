
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/cash_settlement_history/cash_settlement_history_screen.dart';
import 'package:spinners_driver/src/presentation/views/cash_settlement_history/widget/time_period.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class PeriodFilterButton extends StatelessWidget {
  final TimePeriod selected;
  final ValueChanged<TimePeriod> onSelected;

  const PeriodFilterButton({
    super.key,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        highlightColor: AppColors.blue1,
      ),
      child: PopupMenuButton<TimePeriod>(
        initialValue: selected,
        onSelected: onSelected,
        offset: const Offset(0, 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.dp),
        ),
        itemBuilder: (context) => TimePeriod.values
            .map((period) => PopupMenuItem<TimePeriod>(
                  value: period,
                  child: Text(
                    period.displayName,
                    style: AppTypography.sfProRoundedMedium.copyWith(
                      fontSize: 12.sp,
                      fontWeight: selected == period
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: AppColors.black1,
                    ),
                  ),
                ))
            .toList(),
        child: Container(
          height: 36.dp,
          decoration: BoxDecoration(
            color: AppColors.filterBgColor,
            borderRadius: BorderRadius.circular(8.dp),
            border: Border.all(color: AppColors.loginFieldBorderColor),
          ),
          padding: EdgeInsets.all(6.dp),
          child: Row(mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(AppImages.calendarIcon, height: 24.dp, width: 24.dp,),
              Gap(8.dp),
              Container(
                width: 1.dp,
                height: 24.dp,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.white, Color(0xffCFCFCF), AppColors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Gap(8.dp),
              Flexible(
                child: Text(
                  selected.abbreviatedName,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: AppTypography.sfProRoundedSemiBold.copyWith(
                    fontSize: 12.dp,
                    color: AppColors.neutral900,
                  ),
                ),
              ),
              Gap(2.dp)
            ],
          ),
        ),
      ),
    );
  }
}
