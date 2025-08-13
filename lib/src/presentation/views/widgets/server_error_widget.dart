import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class ServerErrorWidget extends StatelessWidget {
  const ServerErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
            Opacity(
              opacity: 0.03,
              child: SizedBox(
                height: 100.h,
                width: 100.w,
                // child: Align(alignment: Alignment.center, child: Image.asset(AppImages.imgBgNoise)),
              ),
            ),
            SizedBox(
              height: 100.h,
              width: 100.w,
              // child: Align(alignment: Alignment.topRight, child: Image.asset(AppImages.imgLeaf)),
            ),
            Padding(
              padding: EdgeInsets.all(16.dp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  // Image.asset(AppImages.imgServerDown),
                  Text(
                    '500',
                    style: TextStyle(fontSize: 68.sp, fontWeight: FontWeight.bold, 
                    // color: AppColors.green
                    ),
                  ),
                  Text(
                    'Server Down!',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  Gap(15.dp),
                  Text(
                    'Oops! Something went wrong on our end.Please try again later \nor contact support if the problem persists.',
                    style: TextStyle(fontSize: 10.sp, 
                    // color: AppColors.grey
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  PrimaryButtonWidget(
                    onPressed: () {
                      log("Retry clicked");
                      Navigator.pushNamedAndRemoveUntil(context, '/', (Route<dynamic> route) => false);
                    },
                    text: "Retry",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
