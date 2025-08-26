
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:geolocator/geolocator.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({
    super.key, 
    required this.isToggled, 
    required this.label, 
    this.onLocationFetched,
  });

  final ValueNotifier isToggled;
  final String label;
  final Function(double lat, double lng)? onLocationFetched;

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.isToggled,
      builder: (context, value, child) {
        return GestureDetector(
          onTap: () async {
            // Toggle
            if (widget.isToggled.value == 0) {
              // Turn ON
              // Only request location permission if this toggle has the onLocationFetched callback
              if (widget.onLocationFetched != null) {
                // This is the "Nearest Location" toggle - request location permission
                try {
                  final position = await _handleLocationPermissionAndFetch();
                  if (position != null) {
                    widget.isToggled.value = 1;
                    log('Lat: ${position.latitude}, Lng: ${position.longitude}');
                    
                    // Pass location to parent widget via callback
                    widget.onLocationFetched!(position.latitude, position.longitude);
                  }
                } catch (e) {
                  log('Location error: $e');
                  // Keep toggle OFF if permission not granted
                  widget.isToggled.value = 0;
                }
              } else {
                // This is the "Express Only" toggle - no location permission needed
                widget.isToggled.value = 1;
              }
            } else {
              // Turn OFF
              widget.isToggled.value = 0;
              
              // If this toggle has location callback, reset location
              if (widget.onLocationFetched != null) {
                widget.onLocationFetched!(0.0, 0.0);
              }
            }
          },
          child: Row(
            children: [
              AnimatedContainer(
                width: 48.dp,
                height: 24.dp,
                duration: const Duration(milliseconds: 500),
                decoration: BoxDecoration(
                  color: widget.isToggled.value == 1 
                      ? AppColors.greenColor 
                      : AppColors.toggleDisabled,
                  borderRadius: BorderRadius.circular(16.dp)
                ),
                child: Stack(
                  children: [
                    AnimatedAlign(
                      alignment: widget.isToggled.value == 1 
                          ? Alignment.centerRight 
                          : Alignment.centerLeft,
                      duration: const Duration(milliseconds: 200),
                      child: Container(
                        margin: EdgeInsets.only(left: 2.dp, right: 2.dp),
                        height: 20.dp,
                        width: 20.dp,
                        decoration: const BoxDecoration(
                          color: AppColors.white, 
                          shape: BoxShape.circle
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(8.dp),
              Text(
                widget.label,
                style: AppTypography.sfProRoundedMedium.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.black,
                  letterSpacing: -0.08
                )
              ),
            ],
          ),
        );
      },
    );
  }

  Future<Position?> _handleLocationPermissionAndFetch() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // return Future.error('Location services are disabled.');
        TheToast.show(message:  'Location services are disabled.', context: context);
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        TheToast.show(message:  'Location permission denied.', context: context);
        // return Future.error('Location permission denied.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
   TheToast.show(message:  'Location permissions are permanently denied. Enable from settings.', context: context);
      // return Future.error(
      //     'Location permissions are permanently denied. Enable from settings.');
    }

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }
}