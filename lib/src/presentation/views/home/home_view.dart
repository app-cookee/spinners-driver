import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_laundry/app/app_router/app_router.dart';
import 'package:spinners_laundry/app/constants/status/status.dart';
import 'package:spinners_laundry/app/theme/app_colors.dart';
import 'package:spinners_laundry/app/theme/app_typography.dart';
import 'package:spinners_laundry/src/application/home_bloc/home_bloc.dart';
import 'package:spinners_laundry/src/presentation/constants/app_images.dart';
import 'package:spinners_laundry/src/presentation/views/home/placeholders/service_category_placeholder.dart';
import 'package:spinners_laundry/src/presentation/views/home/widgets/home_delivery_details.dart';
import 'package:spinners_laundry/src/presentation/views/home/widgets/service_category.dart';

import 'package:spinners_laundry/src/presentation/views/home/widgets/video_stepper.dart';
import 'package:spinners_laundry/src/presentation/views/widgets/youtube_video_dialog_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(HomeEvent.getServiceCategoriesList());
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SizedBox(
        height: 100.h,
        child: Stack(
          children: [
            gradientBackground(),
            homeAppbarBubbles(),
            // backgroundlayerWithBubbles(),

            Positioned.fill(
                top: 22.h,
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          SizedBox(
                            width: 100.w,
                            height: 100.h > 800 ? 25.h : 26.h,
                            child: Stack(
                              children: [
                                // Home image at the bottom
                                Positioned(
                                  top: -16.h,
                                  left: 0,
                                  right: 0,
                                  child: Image.asset(
                                    AppImages.home,
                                    width: 100.w,
                                  ),
                                ),
                                // Description text above the image
                                Positioned(
                                  top: 100.h > 800 ? 16.h : 17.h,
                                  left: 0,
                                  right: 0,
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "Watch how we handle your clothes\nsafely, hygienically, and with care.",
                                    style: AppTypography.sfProRoundedSemiBold
                                        .copyWith(
                                      color: AppColors.white,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ),
                                // Play button above the text
                                Positioned(
                                  top: 100.h > 800 ? 17.5.h : 18.5.h,
                                  left: 0,
                                  right: 0,
                                  child: InkWell(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (_) => YoutubeVideoDialog(
                                          youtubeUrl:
                                              'https://youtu.be/xV9HnITo2C0?si=MDXrRb8FSKSVAeAw', // your URL
                                        ),
                                      );
                                    },
                                    child: Image.asset(
                                      AppImages.play,
                                      height: 75.dp,
                                      width: 80.dp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          HomeDeliveryDetails(),
                          Gap(12.dp),
                          state.getServiceCategoriesListStatus is StatusLoading ? ServiceCategoryShimmer() :
                          state.serviceCategoriesList.isNotEmpty ? ServiceCategory(services: state.serviceCategoriesList,) : SizedBox.shrink(),
                          VideoStepper(
                            steps: [
                              StepData(
                                title: 'SCHEDULE YOUR PICKUP IN SECONDS',
                                stepNumber: 1,
                                isActive: true,
                              ),
                              StepData(
                                title: 'SCHEDULE YOUR PICKUP IN SECONDS',
                                stepNumber: 2,
                                isActive: false,
                              ),
                              StepData(
                                title: 'SCHEDULE YOUR PICKUP IN SECONDS',
                                stepNumber: 3,
                                isActive: false,
                              ),
                              StepData(
                                title: 'SCHEDULE YOUR PICKUP IN SECONDS',
                                stepNumber: 4,
                                isActive: false,
                              ),
                            ],
                          ),
                          Gap(8.h)
                        ],
                      );
                    },
                  ),
                )),
            appBarContent(),
          ],
        ),
      ),
    );
  }

  Widget appBarContent() {
    return AnimatedBuilder(
        animation: _scrollController,
        builder: (context, child) {
          double scrollOffset =
              _scrollController.hasClients ? _scrollController.offset : 0.0;
          // Subtle upward movement - moves up only 20-30 pixels max
          double translateY = -(scrollOffset * 0.1).clamp(0.0, 5.0);

          return Positioned(
              left: 16.dp,
              top: 7.h + translateY,
              right: 16.dp,
              child: Column(
                children: [
                  UserDetail(
                    initial: 'N',
                    name: 'Hello, Naseeb!',
                    phone: 'you’ve earned 120 points.',
                  ),
                  Gap(12.dp),
                  banner(),
                  Gap(18.dp),
                ],
              ));
        });
  }

  Stack banner() {
    return Stack(
      children: [
        Image.asset(
          AppImages.homeCoupen,
          width: 100.w,
          height: 56.dp,
          fit: BoxFit.cover,
        ),
        Positioned(
            left: 16.dp,
            top: 12.dp,
            bottom: 10.dp,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: '🎉 ', style: TextStyle(fontSize: 16.dp)),
                      TextSpan(
                        text: 'AED 65 OFF ',
                        style: AppTypography.sfProRoundedBold.copyWith(
                          color: AppColors.discountRed,
                          fontSize: 16.sp,
                        ),
                      ),
                      TextSpan(
                          text: 'for your first order',
                          style: AppTypography.sfProRoundedSemiBold.copyWith(
                            color: AppColors.neutral900,
                            fontSize: 16.sp,
                          )),
                    ],
                  ),
                ),
                Text("Use code SPIN65",
                    style: AppTypography.sfProRoundedMedium.copyWith(
                      color: AppColors.neutral500,
                      fontSize: 12.sp,
                    ))
              ],
            )),
      ],
    );
  }

  Positioned backgroundlayerWithBubbles() {
    return Positioned(
        top: 7.h,
        left: -5.w,
        right: -5.w,
        child: Image.asset(
          fit: BoxFit.cover,
          AppImages.group,
          // width:120.w,
          // height: 304.dp,
        ));
  }

  Positioned homeAppbarBubbles() {
    return Positioned(
        top: 0,
        child: Image.asset(
          fit: BoxFit.cover,
          AppImages.homeBubbles,
          width: 100.w,
          height: 9.h,
        ));
  }

  Container gradientBackground() {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0,
                0.2,
                0.35,
                0.7,
                1
              ],
              colors: [
                AppColors.primaryColor,
                AppColors.gradientbg,
                AppColors.white,
                AppColors.white,
                AppColors.white
              ])),
      height: 100.h,
      width: 100.w,
    );
  }
}

class UserDetail extends StatelessWidget {
  final String initial;
  final String name;
  final String phone;

  const UserDetail({
    super.key,
    required this.initial,
    required this.name,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40.dp,
          width: 40.dp,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF98D5F0),
                Colors.transparent,
                Color(0xFF98D5F0)
              ],
              stops: [0.89, 0.89, 1],
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 8),
                blurRadius: 12,
                spreadRadius: 0,
                color: Colors.black.withValues(alpha: 0.08),
              ),
              const BoxShadow(
                offset: Offset(-2, -2),
                blurRadius: 2,
                spreadRadius: -2,
                color: Colors.white,
              ),
              const BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 2,
                spreadRadius: -2,
                color: Colors.white,
              ),
            ],
          ),
          child: Center(
            child: ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  AppColors.primaryColor500,
                  AppColors.darkBlue,
                ],
              ).createShader(bounds),
              child: Text(
                initial,
                style: AppTypography.sfProRoundedSemiBold.copyWith(
                  color: AppColors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: AppTypography.sfProRoundedSemiBold.copyWith(
                color: AppColors.neutral900,
                fontSize: 16,
              ),
            ),
            RichText(
              text: TextSpan(
                  text: "you’ve earned ",
                  style: AppTypography.sfProRoundedRegular.copyWith(
                    color: AppColors.grey1Color,
                    fontSize: 12,
                  ),
                  children: [
                    TextSpan(
                      text: "120 points.",
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                        color: AppColors.neutral900,
                        fontSize: 12,
                      ),
                    )
                  ]),
            ),
          ],
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            context.router.push(NotificationRoute());
          },
          child: Container(
            height: 40.dp,
            width: 40.dp,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.greyButton,
                  Colors.transparent,
                  AppColors.greyButton,
                ],
                stops: [0.89, 0.89, 1],
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 8),
                  blurRadius: 12,
                  spreadRadius: 0,
                  color: Colors.black.withValues(alpha: 0.08),
                ),
                const BoxShadow(
                  offset: Offset(-2, -2),
                  blurRadius: 2,
                  spreadRadius: -2,
                  color: Colors.white,
                ),
                const BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 2,
                  spreadRadius: -2,
                  color: Colors.white,
                ),
              ],
            ),
            child: Center(
              child: Image.asset(
                AppImages.notification,
                height: 24.dp,
                width: 24.dp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class BottomWaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(0, size.height - 61);

//     path.quadraticBezierTo(
//         size.width / 2, size.height - 4, size.width, size.height - 61);

//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }
