import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class QuickPickupButton extends StatelessWidget {
  const QuickPickupButton({super.key, required this.buttonText});
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.dp),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF6A61F3),
            Color(0xFF43D995),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(8.5.dp),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFEFEEFF), Color(0xFFEFFFEE)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(8.dp),
        ),
        padding: EdgeInsets.all(8.dp),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Custom gradient icon
            ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [Color(0xFF637BFF), Color(0xFF3FE6A1)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds);
                },
                child: Image.asset(
                  AppImages.zip,
                  height: 20.dp,
                  width: 20.dp,
                  fit: BoxFit.cover,
                )),
            Gap(4.dp),
            Text(
              buttonText,
              style: AppTypography.sfProRoundedSemiBold
                  .copyWith(fontSize: 14, color: AppColors.secondary950),
            ),
          ],
        ),
      ),
    );
  }
}
