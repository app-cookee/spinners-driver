// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    // context.read<NetworkBloc>().add(const NetworkEvent.observe());
    // Wait until the first frame is rendered to safely use context
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadAssetsAndNavigate();
    });
  }

  Future<void> _loadAssetsAndNavigate() async {
    // Precache all splash images
    await Future.wait([
    precacheImage(const AssetImage(AppImages.splashBgImage), context),
    precacheImage(const AssetImage(AppImages.splashLogo), context),
    precacheImage(const AssetImage(AppImages.onboardingScreen1Bg1), context),
    precacheImage(const AssetImage(AppImages.onboardingScreen1Person1), context),
    precacheImage(const AssetImage(AppImages.onboardingScreen2Bg2), context),
    precacheImage(const AssetImage(AppImages.onboardingScreen2Person2), context),
    precacheImage(const AssetImage(AppImages.onboardingScreen3Bg3), context),
    precacheImage(const AssetImage(AppImages.onboardingScreen3Person3), context),
    ]);   
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       SizedBox(
         height: 100.h,
         width: 100.w,
         child: Stack(
           clipBehavior: Clip.none,
           fit: StackFit.expand,
           children: [
             AnimatedBuilder(
             animation: _scaleAnimation,
             builder: (context, child) {
               return Transform.scale(
                 scale: _scaleAnimation.value,
                 child: child,
               );
             },
             child: Image.asset(
               AppImages.splashBgImage,
               fit: BoxFit.fill,
             ),
           ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 86.dp),
               child: Image.asset(AppImages.splashLogo),
             ),
           ],
         ),
       ),
    );
  }
}
