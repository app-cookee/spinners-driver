// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/services/api_services/environment/env_config.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

import 'package:spinners_driver/app/services/api_services/environment/config.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/user_details.dart';

class ProfileUserDetail extends StatefulWidget {
  final String firstName;
    final String? lastName;
  final String phone;
  final bool active;
  final String profileImage;

  const ProfileUserDetail({
    Key? key,
    required this.firstName,
    this.lastName,
    required this.phone,
    required this.active,
    required this.profileImage,
  }) : super(key: key);

  @override
  State<ProfileUserDetail> createState() => _ProfileUserDetailState();
}

class _ProfileUserDetailState extends State<ProfileUserDetail> with SingleTickerProviderStateMixin {
    late AnimationController _shimmerController;

  
  @override
  void initState() {
    super.initState();
    _shimmerController = AnimationController.unbounded(vsync: this)
      ..repeat(min: -0.5, max: 1.5, period: const Duration(milliseconds: 1000));
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    super.dispose();
  }
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
          child:
      (widget.profileImage.isNotEmpty&&widget.profileImage!=null)?
          ClipRRect( borderRadius: BorderRadius.circular(20.dp),
          child:

            CachedNetworkImage(
                                          imageUrl: (widget.profileImage !=
                                                      '' )
                                              ? '${EnvConfiguration.current.baseUrl.substring(0, EnvConfiguration.current.baseUrl.lastIndexOf('/') + 1)}${widget.profileImage}'
                                              : '',
                                          fit: BoxFit.cover,
                                          placeholder: (context, url) =>
                                              AnimatedBuilder(
                                            animation: _shimmerController,
                                            builder: (context, child) {
                                              return Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: const [
                                                      Color(0xFFEBEBF4),
                                                      Color(0xFFF4F4F4),
                                                      Color(0xFFEBEBF4),
                                                    ],
                                                    stops: const [
                                                      0.0,
                                                      0.5,
                                                      1.0
                                                    ],
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                    transform:
                                                        SlidingGradientTransform(
                                                            _shimmerController
                                                                .value),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                          errorWidget: (context, url, error) =>
                                              const Icon(
                                            Icons.person,
                                            color: AppColors.greyColor,
                                          ),
                                        ),
          
      
          ):
          
          
           Center(
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
                widget.firstName.isNotEmpty ? widget.firstName[0].toUpperCase() : 'D',
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
              '${widget.firstName} ${widget.lastName}',
              style: AppTypography.sfProRoundedSemiBold.copyWith(
                color: AppColors.primary950,
                fontSize: 16,
              ),
            ),
            Text(
              widget.phone,
              style: AppTypography.sfProRoundedSemiBold.copyWith(
                color: AppColors.textGrey,
                fontSize: 12,
              ),
            ),
          ],
        ),
        const Spacer(),
        if(widget.active)
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
