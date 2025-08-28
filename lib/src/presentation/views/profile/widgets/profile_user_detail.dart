import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';


class ProfileUserDetail extends StatelessWidget {
  final String avatar;
  final String name;
  final String phone;
  final bool active;

  const ProfileUserDetail({
    super.key,
    required this.avatar,
    required this.name,
    required this.phone, required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFEFFAFE),
                Colors.transparent,
                Color(0xFFEFFAFE),
              ],
              stops: [0.89, 0.89, 1],
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 8),
                blurRadius: 12,
                spreadRadius: 0,
                color: Colors.black.withValues(alpha:  0.08),
              ),
              const BoxShadow(
                offset: Offset(-2, -2),
                blurRadius: 2,
                spreadRadius: -2,
                color: Colors.white,
              ),
              const BoxShadow(blurRadius: 0),
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
                // avatar,
                avatar.isNotEmpty ? avatar[0].toUpperCase() : 'D',
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
                color: AppColors.primary950,
                fontSize: 16,
              ),
            ),
            Text(
              phone,
              style: AppTypography.sfProRoundedSemiBold.copyWith(
                color: AppColors.textGrey,
                fontSize: 12,
              ),
            ),
          ],
        ),
        const Spacer(),
        if(active)
        Container(
          height: 20.dp,
          width: 62.dp,
          decoration: BoxDecoration(
            color: AppColors.activeGreen,
            borderRadius: BorderRadius.circular(110.dp),
            border: Border.all(
              color: AppColors.activeStrokeGreen,
              width: 1.dp,
            ),
          ),
          child: Center(
            child: Text('Active',
                textAlign: TextAlign.center,
                style: AppTypography.sfProRoundedSemiBold.copyWith(
                  color: AppColors.activeTextGreen,
                  fontSize: 12.dp,
                )),
          ),
        ),
        Gap(16.dp),
      ],
    );
  }
}
