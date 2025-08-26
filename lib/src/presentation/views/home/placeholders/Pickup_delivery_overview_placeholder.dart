

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';


class PickupDeliveryOverviewPlaceholder extends StatelessWidget {
  const PickupDeliveryOverviewPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.dp),
      width: 100.w,
      height: 27.h,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.bottomCenter,
        children: _buildShimmerCards(),
      ),
    );
  }

  List<Widget> _buildShimmerCards() {
    final cards = _getCardConfigurations();
    return cards.map((config) {
      return Padding(
        padding: EdgeInsets.only(bottom: config.bottomPadding),
        child: _buildShimmerCard(config),
      );
    }).toList();
  }

  List<_CardConfig> _getCardConfigurations() {
    return [
      _CardConfig(bottomPadding: 19.h, height: 62.dp),
      _CardConfig(bottomPadding: 12.h, height: 62.dp),
      _CardConfig(bottomPadding: 5.h, height: 62.dp),
      _CardConfig(bottomPadding: 0.h, height: 48.dp),
    ];
  }

  Widget _buildShimmerCard(_CardConfig config) {
    return Container(
      width: 100.w,
      height: config.height,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 16.dp),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Container(
          width: 100.w,
          height: 55.dp,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.dp),
          ),
        ),
      ),
    );
  }
}

class _CardConfig {
  final double bottomPadding;
  final double height;
  _CardConfig({
    required this.bottomPadding,
    required this.height,
  });
}
