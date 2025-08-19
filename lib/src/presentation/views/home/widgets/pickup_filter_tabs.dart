import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class PickupFilterTabs extends StatefulWidget {
  const PickupFilterTabs({super.key});

  @override
  State<PickupFilterTabs> createState() => _PickupFilterTabsState();
}

class _PickupFilterTabsState extends State<PickupFilterTabs> {
  final ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);

  @override
  void dispose() {
    selectedIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      width: 100.w,
      padding: EdgeInsets.all(2.dp),
      margin: EdgeInsets.symmetric(horizontal: 16.dp),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(8.dp),
      ),
      child: Row(
        children: [
          // All
          _buildTabItem(
            label: 'All',
            index: 0,
            onTap: () => selectedIndexNotifier.value = 0,
          ),
          _buildTabItem(
            label: 'Pickup',
            index: 1,
            onTap: () => selectedIndexNotifier.value = 1,
          ),
          _buildTabItem(
            label: 'Dropoff',
            index: 2,
            onTap: () => selectedIndexNotifier.value = 2,
            isDropoff: true,
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem({
    required String label,
    required int index,
    required VoidCallback onTap,
    bool isDropoff = false,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: ValueListenableBuilder<int>(
          valueListenable: selectedIndexNotifier,
          builder: (context, selectedIndex, child) {
            return Container(
              decoration: BoxDecoration(
                color: selectedIndex == index ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(6.dp),
                boxShadow: selectedIndex == index
                    ? [
                        BoxShadow(
                          color: AppColors.black.withValues(alpha: 0.12),
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        )
                      ]
                    : [],
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (isDropoff)
                    Container(
                      height: 10.dp,
                      width: 10.dp,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryColor,
                        border: Border.all(
                          color: AppColors.lightSkyBlue,
                          width: 2,
                        ),
                      ),
                    ),
                  if (isDropoff) Gap(4.dp),
                  Text(
                    label,
                    style: AppTypography.sfProRoundedSemiBold.copyWith(
                      letterSpacing: -0.08,
                      color: selectedIndex == index ? AppColors.neutral950 : AppColors.textGrey,
                      fontSize: 12.dp,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
