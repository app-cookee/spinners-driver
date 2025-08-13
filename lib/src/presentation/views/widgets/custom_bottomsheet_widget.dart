import 'package:flutter/material.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class CustomBottomSheetWidget {
  CustomBottomSheetWidget({
    required this.context,
    required this.child,
  });
  final BuildContext context;
  final Widget child;

  Future show() async {
    final result = await showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.dp),
          topRight: Radius.circular(24.dp),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: child,
        );
      },
    );
    return result;
  }
}