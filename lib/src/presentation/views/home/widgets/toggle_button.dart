import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key, required this.isToggled, required this.label});
 final ValueNotifier isToggled;
 final String label;
  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  @override
  Widget build(BuildContext context) {
   return ValueListenableBuilder(
      valueListenable: widget.isToggled,
      builder: (context, value, child) {
        return GestureDetector(
          onTap: () {
            if (widget.isToggled.value == 0) {
              widget.isToggled.value = 1;
            } else {
              widget.isToggled.value = 0;
            }
          },
          child: Row(
            children: [
              AnimatedContainer(
                width: 48.dp,
                height: 24.dp,
                duration: const Duration(milliseconds: 500),
                decoration: BoxDecoration(color: widget.isToggled.value == 1 ? AppColors.greenColor : AppColors.greenColor.withValues(alpha: 0.3), borderRadius: BorderRadius.circular(16.dp)),
                child: Stack(
                  children: [
                    AnimatedAlign(
                      alignment: widget.isToggled.value == 1 ? Alignment.centerRight : Alignment.centerLeft,
                      duration: const Duration(milliseconds: 200),
                      child: Container(
                        margin: EdgeInsets.only(left: 2.dp, right: 2.dp),
                        height: 20.dp,
                        width: 20.dp,
                        decoration: const BoxDecoration(color: AppColors.white, shape: BoxShape.circle),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(8.dp),
              Text(widget.label,style:AppTypography.sfProRoundedMedium.copyWith(fontSize: 16.sp,color: AppColors.black)),
            ],
          ),
        );
      },
    );
  }
}