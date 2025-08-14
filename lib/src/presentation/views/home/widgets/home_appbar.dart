import 'package:flutter/material.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/user_details.dart';
import 'package:spinners_driver/src/presentation/views/profile/widgets/profile_user_detail.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        gradientBackground(),
        homeAppbarBubbles(),
        appBarContent(),
      ],
    );
  }

  Widget gradientBackground() {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0, 0.09, 0.33, 0.6,],
          colors: [
            AppColors.primaryColor,
            AppColors.gradientbg.withValues(alpha: 0.8),
            AppColors.gradientbg.withValues(alpha: 0.1),
            AppColors.white,
          ],
        ),
      ),
      height: 100.h,
      width: 100.w,
    );
  }

  Widget homeAppbarBubbles() {
    return Positioned(
        top: 0,
        child: Image.asset(
          fit: BoxFit.cover,
          AppImages.homeBubbles,
          width: 100.w,
          height: 9.h,
        ));
  }

  Widget appBarContent() {
    return Positioned(
        left: 16.dp,
        top: 7.h,
        right: 16.dp,
        child: const UserDetail(
          avatar: 'A',
          name: 'Good Evening, Ahmed 👋',
          pickupTime: '3:15 PM',
        ));
  }
}
