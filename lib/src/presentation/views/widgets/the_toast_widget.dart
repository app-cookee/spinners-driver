import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';

class TheToast {
  static Future<void> show({
    required String message,
    required BuildContext context,
    bool isError = true,
    bool shouldPopAfter = false,
    Color? color
  }) async {
    // If we need to pop after showing the toast, we should wait for the toast to complete
    if (shouldPopAfter) {
      await _showToast(message, context, isError,color);
      // Only try to pop if the context is still mounted
      if (context.mounted) {
        Navigator.pop(context);
      }
    } else {
      // Just show the toast without waiting if we don't need to pop
      _showToast(message, context, isError,color);
    }
  }

  // Private method to show the toast without popping
  static Future<void> _showToast(
    String message,
    BuildContext context,
    bool isError,
    Color? color
  ) async {
    return Flushbar(
      message: message,
      flushbarStyle: FlushbarStyle.GROUNDED,
      icon: color!=null?const SpinKitFadingCircle(size: 20,
        color: AppColors.white,)
:
      isError
          ? const Icon(Icons.error, color: AppColors.white)
          : const Icon(Icons.check_circle, color: AppColors.white),
      flushbarPosition: FlushbarPosition.TOP,
      animationDuration: const Duration(milliseconds: 500),
      backgroundColor: color ?? (isError ? Colors.red : AppColors.primaryColor),
      duration: const Duration(seconds: 2),
    ).show(context);
  }
}