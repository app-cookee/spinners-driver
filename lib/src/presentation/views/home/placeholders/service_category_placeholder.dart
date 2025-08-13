import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class ServiceCategoryShimmer extends StatelessWidget {
  const ServiceCategoryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.dp),
      child: SizedBox(
        height: 100.h > 800 ? 73.h : 80.h,
        child: ListView.builder(
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => const _ShimmerCard(),
        ),
      ),
    );
  }
}

class _ShimmerCard extends StatelessWidget {
  const _ShimmerCard();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        margin: EdgeInsets.only(bottom: 12.dp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.dp),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.dp),
                color: Colors.grey.shade300,
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: -3.5.dp,
                    bottom: 58.dp,
                    child: Container(
                      width: 162.dp,
                      height: 106.dp,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8.dp),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.dp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20.dp,
                          width: 80.dp,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(6.dp),
                          ),
                        ),
                        Gap(6.dp),
                        Container(
                          height: 20.dp,
                          width: 140.dp,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(4.dp),
                          ),
                        ),
                        Gap(12.dp),
                        Container(
                          height: 16.dp,
                          width: 180.dp,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(4.dp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12.dp),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12.dp),
                  bottomRight: Radius.circular(12.dp),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(3, (_) {
                  return Container(
                    height: 32.dp,
                    width: 80.dp,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(8.dp),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
