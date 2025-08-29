import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/app_router/app_router.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/constants/storage_constants.dart';
import 'package:spinners_driver/app/services/local_storage_service.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/auth_bloc/auth_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/home/placeholders/userdetail_placeholder.dart';
import 'package:spinners_driver/src/presentation/views/profile/widgets/account_settings.dart';
import 'package:spinners_driver/src/presentation/views/profile/widgets/dashed_coupen_box.dart';
import 'package:spinners_driver/src/presentation/views/profile/widgets/profile_user_detail.dart';
import 'package:spinners_driver/src/presentation/views/profile/widgets/update_details_bottom_sheet.dart';
import 'package:spinners_driver/src/presentation/views/widgets/custom_bottomsheet_widget.dart';

import 'package:spinners_driver/src/presentation/views/widgets/custom_dialogue_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/dashed_divider.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';

import 'package:the_responsive_builder/the_responsive_builder.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue1,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          // if (state.logOutStatus is StatusSuccess) {
          //   Navigator.of(context).pop(true);
          //   context.router.pushAndPopUntil(
          //     const SplashRoute(),
          //     predicate: (route) => true,
          //   );
          //   LocalStorage.remove(StorageKey.accessToken);
          //   LocalStorage.remove(StorageKey.refreshToken);
          // }
          // if (state.logOutStatus is StatusFailure) {
          //   TheToast.show(
          //       message: state.logOutStatus.errorMessage,
          //       context: context,
          //       isError: true);
          // }
        },
        listenWhen: (previous, current) =>
            previous.logOutStatus != current.logOutStatus,
        child: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 30.h,
              width: 100.w,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    AppColors.primaryColor.withValues(alpha: 0.2),
                    AppColors.gradientbg.withValues(alpha: 0)
                  ])),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset(
              AppImages.bubbles,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            top: 8.h.dp,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.only(left: 16.dp),
                    child: BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        if (state.profileAuthStatus is StatusLoading) {
                          return const UserDetailPlaceholder();
                        }
                        return ProfileUserDetail(
                          profileImage: state.appUser?.photo ?? '',
                          active: state.appUser?.active ?? false,
                          name: (state.appUser?.firstName.isNotEmpty ?? false)
                              ? state.appUser!.firstName
                              : "Driver",
                          phone:
                              (state.appUser?.phoneNumber.isNotEmpty ?? false)
                                  ? state.appUser!.phoneNumber
                                  : "",
                        );
                      },
                    ),
                  ),
                  Gap(21.dp),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          AppColors.primaryColor.withValues(alpha: 0.1),
                          AppColors.primaryColor.withValues(alpha: 0)
                        ])),
                    width: 100.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const DashedDivider(),
                        Padding(
                          padding: EdgeInsets.all(16.dp),
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.moneysIcon,
                                height: 24.dp,
                                width: 24.dp,
                              ),
                              Gap(4.dp),
                              Text(
                                "Cash In Hand",
                                style:
                                    AppTypography.sfProRoundedMedium.copyWith(
                                  color: AppColors.textGrey,
                                  fontSize: 14.sp,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "AED 120",
                                style:
                                    AppTypography.sfProRoundedSemiBold.copyWith(
                                  color: AppColors.primaryColor,
                                  fontSize: 24.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 16.dp),
                    child: CustomPaint(
                      painter: DashRectPainter(
                          gapLength: 4,
                          strokeWidth: 1,
                          color: AppColors.lightGrey,
                          backgroundColor: AppColors.white),
                      child: Container(
                        padding: EdgeInsets.all(12.dp),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12.dp)),
                        width: 100.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const DashedCouponBox(),
                            Gap(14.dp),
                            Text(
                              'Vehicle No : A 34567',
                              style: AppTypography.sfProRoundedSemiBold
                                  .copyWith(
                                      color: AppColors.secondary950,
                                      fontSize: 12.dp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Gap(20.dp),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.dp, left: 16.dp, right: 16.dp, bottom: 24.dp),
                    child: Column(
                      spacing: 6.dp,
                      children: [
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return AccountSettings(
                                onTap: () {
                                  CustomBottomSheetWidget(
                                          child: UpdateDetailsBottomSheet(
                                            firstName:
                                                state.appUser?.firstName ?? "",
                                            lastName:
                                                state.appUser?.lastName ?? "",
                                          ),
                                          context: context)
                                      .show();
                                },
                                imagePath: AppImages.arrowRight,
                                text: "Personal Details");
                          },
                        ),
                        AccountSettings(
                          onTap: () {
                            context.router.push(const PickUpDropoffHistoryRoute());
                          },
                            imagePath: AppImages.arrowRight,
                            text: "Pickup & Dropoff History"),
                        const AccountSettings(
                            imagePath: AppImages.arrowRight,
                            text: "Cash Settlement History"),
                        const AccountSettings(
                            imagePath: AppImages.arrowRight,
                            text: "Terms of Service"),
                        AccountSettings(
                          imagePath: AppImages.arrowRight,
                          text: "Log Out",
                          textColor: AppColors.redText,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => CustomDialogueWidget(
                                title: 'Are you sure you want to Logout?',
                                content:
                                    "Once you log out, you'll need to sign in again to continue. Are you sure you want to proceed?",
                                confirmText: 'Logout',
                                onCancel: () {
                                  Navigator.of(context).pop(false);
                                },
                                onConfirm: () {
                                  context
                                      .read<AuthBloc>()
                                      .add(AuthEvent.logOut());
                                  Navigator.of(context).pop(true);
                                  context.router.pushAndPopUntil(
                                    const SplashRoute(),
                                    predicate: (route) => true,
                                  );
                                  LocalStorage.remove(StorageKey.accessToken);
                                  LocalStorage.remove(StorageKey.refreshToken);
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsetsGeometry.only(left: 16.dp, top: 3.h),
                    child: Text(
                      "App Version 1.0.0",
                      style: AppTypography.sfProRoundedMedium.copyWith(
                          color: AppColors.versionColor, fontSize: 9.dp),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class DashRectPainter extends CustomPainter {
  final double strokeWidth;
  final Color color;
  final Color backgroundColor;
  final double dashLength;
  final double gapLength;
  final double borderRadius;

  DashRectPainter({
    required this.strokeWidth,
    required this.color,
    required this.backgroundColor,
    this.dashLength = 5.0,
    this.gapLength = 3.0,
    this.borderRadius = 12.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint dashPaint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final Paint gapPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final Path outerPath = Path()
      ..addRRect(RRect.fromRectAndRadius(
        Offset.zero & size,
        Radius.circular(borderRadius),
      ));

    final PathMetrics pathMetrics = outerPath.computeMetrics();
    for (final metric in pathMetrics) {
      double distance = 0.0;
      while (distance < metric.length) {
        final Path dashPath =
            metric.extractPath(distance, distance + dashLength);
        canvas.drawPath(dashPath, dashPaint);
        distance += dashLength;

        final Path gapPath = metric.extractPath(distance, distance + gapLength);
        canvas.drawPath(gapPath, gapPaint);
        distance += gapLength;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
