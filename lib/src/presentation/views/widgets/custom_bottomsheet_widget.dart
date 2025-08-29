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
    print('CustomBottomSheetWidget.show() called');
    final result = await showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: true,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        print('CustomBottomSheetWidget builder called');
        return Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.dp),
              topRight: Radius.circular(24.dp),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: child,
          ),
        );
      },
    );
    return result;
  }
}