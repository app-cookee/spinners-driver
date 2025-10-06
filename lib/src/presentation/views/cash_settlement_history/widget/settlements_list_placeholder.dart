import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';

import 'package:the_responsive_builder/the_responsive_builder.dart';

class SettlementsListPlaceholder extends StatelessWidget {
  const SettlementsListPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(shrinkWrap: true,
      itemCount: 5,
      physics: const NeverScrollableScrollPhysics(),
      padding:const EdgeInsets.all(0),
      //     EdgeInsets.only(top: 12.dp, left: 16.dp, right: 16.dp, bottom: 16.dp),
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.only(top: 9.dp, bottom: 12.dp),
        margin: EdgeInsets.only(bottom: 12.dp),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.11),
              offset: const Offset(0, 2),
              blurRadius: 5,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(12.dp),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Order ID row
              Padding(
                padding:
                    EdgeInsets.only(right: 9.dp, left: 16.dp, bottom: 8.dp),
                child: Row(
                  children: [
                    _shimmerBox(width: 65.dp, height: 12.dp),
                    const Spacer(),
                    _shimmerBox(width: 55.dp, height: 12.dp),
                  ],
                ),
              ),

              Gap(2.dp),
    
              // Buttons row
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.dp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Gap(4.dp),
                    _shimmerBox(width:  121.dp, height: 12.dp, radius: 8.dp),
                    const Spacer(),
                    _shimmerBox(width: 138.dp, height: 12.dp, radius: 8.dp),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _shimmerBox({double? width, double? height, double radius = 4}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
