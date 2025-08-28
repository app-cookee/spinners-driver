import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spinners_driver/app/services/api_services/environment/config.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class UserDetail extends StatefulWidget {
  final String avatar;
  final String name;
  final String? pickupTime;
  final String profileImage;

  const UserDetail({
    super.key,
    required this.avatar,
    required this.name,
    required this.pickupTime, required this.profileImage,
  });

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> with SingleTickerProviderStateMixin {
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
// log('${ApiUrls.stagingUrl}/${widget.profileImage}');
    return Row(
      children: [
        Container(
          height: 40.dp,
          width: 40.dp,
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
          
          child:(widget.profileImage.isNotEmpty&&widget.profileImage!=null)?
          ClipRRect( borderRadius: BorderRadius.circular(20.dp),
          child:

            CachedNetworkImage(
                                          imageUrl: (widget.profileImage !=
                                                      '' )
                                              ? '${ApiUrls.stagingUrl}/${widget.profileImage}'
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
          
      
          )
          
      :
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
                widget.avatar,
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
              widget.name,
              style: AppTypography.sfProRoundedSemiBold.copyWith(
                color: AppColors.neutral900,
                fontSize: 16,
              ),
            ),
            widget.pickupTime!=""?
             Text(
              'Next pickup at ${widget.pickupTime}',
               style: AppTypography.sfProRoundedRegular.copyWith(
                    color: AppColors.textGrey,
                    fontSize: 12.sp,
                  ),
            ):SizedBox.shrink()
          
          ],
        ),
      ],
    );
  }
}

class SlidingGradientTransform extends GradientTransform {
  const SlidingGradientTransform(this.slidePercent);

  final double slidePercent;

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(bounds.width * slidePercent, 0.0, 0.0);
  }
}
