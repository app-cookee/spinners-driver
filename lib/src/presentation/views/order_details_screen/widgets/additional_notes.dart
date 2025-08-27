import 'package:flutter/material.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class AdditionalNotes extends StatelessWidget {
  const AdditionalNotes({super.key, required this.additionalNotesController, required this.readOnly});
final TextEditingController additionalNotesController;
final bool readOnly;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.dp),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffD7E5EB),
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
                  readOnly: readOnly,
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
                      borderSide: const BorderSide(
                        color: AppColors.loginFieldBorderColor,
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.dp),
                      borderSide: const BorderSide(
                        color: AppColors.loginFieldBorderColor,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.dp),
                      borderSide: const BorderSide(
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
      ],
    );
  }
}
