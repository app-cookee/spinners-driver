import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/src/application/auth_bloc/auth_bloc.dart';
import 'package:spinners_driver/src/domain/models/app_user_model/app_user_model.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/user_details.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});
 


  @override
  Widget build(BuildContext context) {
     final profileState=context.read<AuthBloc>().state;
   AppUser? user=  profileState.appUser;
    return Stack(
      children: [
        gradientBackground(),
        homeAppbarBubbles(),
        appBarContent(user),
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
            // const Color(0xFFF4F4F4)
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

  Widget appBarContent(AppUser? user) {
    return Positioned(
        left: 16.dp,
        top: 7.h,
        right: 16.dp,
        child:  UserDetail(
          avatar: user?.firstName[0]??"D",
          name: 'Good Evening, ${user?.firstName??"Driver"} 👋',
          pickupTime: '3:15 PM',
        ));
  }
}
