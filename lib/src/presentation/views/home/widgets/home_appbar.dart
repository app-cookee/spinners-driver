import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/src/application/auth_bloc/auth_bloc.dart';
import 'package:spinners_driver/src/domain/models/app_user_model/app_user_model.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/home/placeholders/userdetail_placeholder.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/user_details.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class HomeAppbar extends StatefulWidget {
  const HomeAppbar({super.key});

  @override
  State<HomeAppbar> createState() => _HomeAppbarState();
}

class _HomeAppbarState extends State<HomeAppbar> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, profileState) {
        AppUser? user = profileState.appUser;
 if(profileState.profileAuthStatus is StatusInitial||profileState.profileAuthStatus is StatusLoading){
       
        return  
         Positioned(
        left: 16.dp,
        top: 7.h,
        right: 16.dp,
        child: const UserDetailPlaceholder()
      );
    
        }
        // if no user loaded yet, trigger the event once
        if (user == null) {
        
          context.read<AuthBloc>().add(AuthEvent.profileAuth());
        }
       

        return Stack(
          children: [
            gradientBackground(),
            // homeAppbarBubbles(),
            // Image.asset(AppImages.homeBg, fit: BoxFit.cover, width: 100.w, height: 100.h),
            appBarContent(user),
          ],
        );
      },
    );
  }

  Widget gradientBackground() => Container(
        decoration: const BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   stops: const [0, 0.09, 0.33, 0.6],
          //   colors: [
          //     AppColors.primaryColor,
          //     AppColors.gradientbg.withValues(alpha: 0.8),
          //     AppColors.gradientbg.withValues(alpha: 0.1),
          //     AppColors.white,
          //   ],
          // ),
          image: DecorationImage(
            image: AssetImage(AppImages.homeBg),
            fit: BoxFit.fill,
          ),
        ),
        height: 100.h,
        width: 100.w,
      );

  Widget homeAppbarBubbles() => Positioned(
        top: 0,
        child: Image.asset(
          AppImages.homeBubbles,
          fit: BoxFit.cover,
          width: 100.w,
          height: 9.h,
        ),
      );

 Widget appBarContent(AppUser? user, ) => Positioned(
        left: 16.dp,
        top: 7.h,
        right: 16.dp,
        child: UserDetail(profileImage: user?.photo??"",
          avatar: (user?.firstName.isNotEmpty ?? false)
              ? user!.firstName[0]
              : "D",
          name: 'Good Evening, ${user?.firstName ?? "Driver"} 👋',
          pickupTime: '3:15 PM',
        ),
      );
}
