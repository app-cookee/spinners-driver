import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';

import 'package:the_responsive_builder/the_responsive_builder.dart';

class CustomDialogueWidget extends StatelessWidget {
  final String title;
  final VoidCallback onConfirm;
  final VoidCallback? onCancel;
  final String content;
  final String confirmText;
  final Color? confirmColor;
  final String? disAgreeText;
  final bool isLoading;

  const CustomDialogueWidget({
    super.key,
    this.onCancel,
    this.disAgreeText,
    this.confirmColor,
    required this.title,
    required this.onConfirm,
    required this.content,
    required this.confirmText, this.isLoading=false,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: Colors.white,
      insetPadding: EdgeInsets.symmetric(horizontal: 16.dp, vertical: 16.dp),
      alignment: AlignmentDirectional.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.dp),
        side: const BorderSide(color: AppColors.dialogeBorderColor),
      ),
      backgroundColor:
          Colors.transparent, // Make background transparent to show gradient
      content: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.dialogeBgColor,
              Color(0xFFFFFFFE),
            ], // Subtle gradient
            stops: [0.0, 0.22]
          ),
          borderRadius: BorderRadius.circular(12.dp),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 14.dp, top: 14.dp, bottom: 0.dp),
                  child: Text(
                    title,
                    style: AppTypography.sfProRoundedRegular.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.primaryButtonTextColor,
                    ),
                  ),
                ),
                Divider(color: AppColors.dividerColor),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.dp, vertical: 12.dp),
              child: Text(
                content,
                style: AppTypography.sfProRoundedSlim.copyWith(
                  fontSize: 13.sp,
                  color: AppColors.dialogeContentColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.dp, vertical: 10.dp),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        if(onCancel != null) {
                        onCancel!();
                        } else {
                          Navigator.pop(context);
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8.dp),
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(8.dp),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.dp),
                            child: Text(
                             disAgreeText ?? 'Cancel',
                              style: AppTypography.sfProRoundedMedium.copyWith(
                                fontSize: 14.sp,
                                color: AppColors.neutral500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(8.dp),
                  Expanded(
                    child: InkWell(
                      onTap: () => onConfirm(),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8.dp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.dp),
                          color: confirmColor ?? AppColors.dialogeBgRedColor,
                        ),
                        child: Center(
                          child: Padding(
                              padding: EdgeInsets.all(8.dp),
                              child: 
                              // isLoading ?
                              // SizedBox(
                              //     height: 18.sp,
                              //     width: 18.sp,
                              //     child: Loader(
                              //       height: 22.dp,
                              //       width: 22.dp,
                              //       color: confirmColor ?? AppColors.dialogeBgRedColor,
                              //     )) :
                              Text(
                                confirmText,
                                style: AppTypography.sfProRoundedMedium.copyWith(
                                  fontSize: 14.sp,
                                  color: AppColors.white,
                                ),
                              ),
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      contentPadding: EdgeInsets.zero,
    );
  }
}
