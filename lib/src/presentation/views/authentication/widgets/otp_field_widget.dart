import 'package:flutter/material.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class OtpFieldWidget extends StatelessWidget {
  final String otpValue;
  final VoidCallback? onTap;
  final FocusNode focusNode;

  const OtpFieldWidget({
    super.key,
    required this.otpValue,
    this.onTap,
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(focusNode);
        if (onTap != null) onTap!();
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          // OTP digit boxes
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(4, (index) {
              final char = index < otpValue.length ? otpValue[index] : '';
              final isCurrentIndex = index == otpValue.length;

              return Container(
                width: 80.w / 4,
                height: 50.w / 4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.dp),
                  border: Border.all(
                    color: AppColors.loginFieldBorderColor,
                    width: 1.5.dp,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.loginFieldBorderColor,
                      offset: Offset(2.dp, 2.dp),
                      blurRadius: 0,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Center(
                  child: isCurrentIndex && focusNode.hasFocus
                      ? Container( // Blinking cursor
                          width: 2.dp,
                          height: 20.sp,
                          color: Colors.black,
                        )
                      : Text(
                          char,
                          style: AppTypography.sfProRoundedMedium.copyWith(
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                ),
              );
            }),
          ),

          // Hidden TextField for focus + cursor handling
          Opacity(
            opacity: 0,
            child: TextField(
              readOnly: true,
              enableInteractiveSelection: false,
              focusNode: focusNode,
              autofocus: true,
              showCursor: true,
              maxLength: 4,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                counterText: "",
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
