// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';



class PickupOrderDetailScreenPlaceholder extends StatefulWidget {
  const PickupOrderDetailScreenPlaceholder({super.key});

  @override
  _PickupOrderDetailScreenPlaceholderState createState() => _PickupOrderDetailScreenPlaceholderState();
}

class _PickupOrderDetailScreenPlaceholderState extends State<PickupOrderDetailScreenPlaceholder> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          // Header shimmer

          SingleChildScrollView(
            padding: EdgeInsets.all(16.dp),
            child: Column(
              children: [
                _buildSmallTile(),
                Gap(8.dp),
                _buildSmallTile(),
                Gap(8.dp),
                _buildSmallTile(),

                Gap(20.dp),

                _buildStatusTrackingShimmer(),

                Gap(16.dp),

                // Second large tile
                _buildSmallTile(),

                Gap(8.dp),
                _buildLargeTile(),
                 Gap(10.dp), 
                  _buildSmallTile(),
                  Gap(8.dp),
                   _buildSmallTile(),
                // Gap(120.dp), // Space for footer
              ],
            ),
          ),

          // Footer shimmer
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: _buildShimmerFooter(),
          // ),
        ],
      ),
    );
  }

  Widget _buildSmallTile() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: double.infinity, // full width now
        // height: 55.dp,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.dp),
          border: Border.all(color: Colors.grey[200]!),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.dp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 8.dp,
                width: 60.dp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.dp),
                ),
              ),
              Gap(6.dp),
              Container(
                height: 12.dp,
                width: 40.dp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.dp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusTrackingShimmer() {
    Color base = Colors.grey[300]!;
    Color highlight = Colors.grey[100]!;

    Widget shimmerBox({double height = 16, double width = 80, double radius = 4}) {
      return Shimmer.fromColors(
        baseColor: base,
        highlightColor: highlight,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      );
    }

    Widget shimmerCircle({double size = 40}) {
      return Shimmer.fromColors(
        baseColor: base,
        highlightColor: highlight,
        child: Container(
          height: size,
          width: size,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12.dp,
      children: [
        // Left Column (Icons + Lines)
        Column(
          spacing: 3.dp,
          children: [
            shimmerCircle(size: 40.dp),
            Gap(4.dp),
            shimmerCircle(size: 40.dp),
            Gap(4.dp),
            shimmerCircle(size: 40.dp),
          ],
        ),

        // Right Column (Text placeholders)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            shimmerBox(height: 16.dp, width: 100.dp),
            Gap(4.dp),
            shimmerBox(height: 12.dp, width: 160.dp),
            Gap(30.dp),
            shimmerBox(height: 16.dp, width: 100.dp), 
            Gap(32.dp),
            shimmerBox(height: 16.dp, width: 140.dp), 
            Gap(4.dp),
            shimmerBox(height: 16.dp, width: 100.dp),
            Gap(4.dp),
            Row(
              spacing: 8.dp,
              children: [
                shimmerBox(height: 28.dp, width: 43.w),
                shimmerBox(height: 28.dp, width: 50.dp),
                shimmerBox(height: 28.dp, width: 50.dp),
              ],
            ), // Expected
          ],
        ),
      ],
    );
  }

  Widget _buildLargeTile() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: double.infinity,
        height: 110.dp,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.dp),
          border: Border.all(color: Colors.grey[200]!),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.dp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 16.dp,
                width: 120.dp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.dp),
                ),
              ),
              Gap(12.dp),
              Container(
                height: 14.dp,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.dp),
                ),
              ),
              Gap(6.dp),
              Container(
                height: 14.dp,
                width: 200.dp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.dp),
                ),
              ),
              Gap(6.dp),
              Container(
                height: 14.dp,
                width: 150.dp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.dp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
