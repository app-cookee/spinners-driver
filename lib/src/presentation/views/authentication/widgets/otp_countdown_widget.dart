import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_strings.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class OTPCountdownWidget extends StatefulWidget {
  final int initialCountdown;
  final VoidCallback onResend;

  const OTPCountdownWidget({
    super.key,
    required this.initialCountdown,
    required this.onResend,
  });

  @override
  State<OTPCountdownWidget> createState() => _OTPCountdownWidgetState();
}

class _OTPCountdownWidgetState extends State<OTPCountdownWidget> {
  late int _remainingTime;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startCountdown(widget.initialCountdown);
  }

  @override
  void didUpdateWidget(covariant OTPCountdownWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialCountdown != oldWidget.initialCountdown) {
      _startCountdown(widget.initialCountdown);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startCountdown(int seconds) {
    _timer?.cancel();
    _remainingTime = seconds;
    if (_remainingTime <= 0) return;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  String get formattedTime {
    final minutes = (_remainingTime ~/ 60).toString().padLeft(2, '0');
    final seconds = (_remainingTime % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    if (_remainingTime > 0) {
      return Row(
        children: [
          Text(
            AppStrings.otpCountDownText, // "Resend OTP in "
            style: AppTypography.sfProRoundedSemiBold.copyWith(
              fontSize: 16.sp,
              color: AppColors.textGrey,
            ),
          ),
          Text(
            formattedTime,
            style: AppTypography.sfProRoundedSemiBold.copyWith(
              fontSize: 16.sp,
              color: AppColors.neutral950,
            ),
          ),
        ],
      );
    } else {
      return InkWell(
        onTap: widget.onResend,
        child: Text(
          'Resend OTP',
          style: AppTypography.sfProRoundedSemiBold.copyWith(
            fontSize: 16.sp,
            color: Colors.blue,
          ),
        ),
      );
    }
  }
}
