import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/cash_settlement_history/widget/period_filter_button.dart';
import 'package:spinners_driver/src/presentation/views/cash_settlement_history/widget/time_period.dart';
import 'package:spinners_driver/src/presentation/views/widgets/common_textfield.dart';
import 'package:spinners_driver/src/presentation/views/widgets/dashed_divider.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class CashSettlementHistoryScreen extends StatefulWidget {
  const CashSettlementHistoryScreen({super.key});

  @override
  State<CashSettlementHistoryScreen> createState() =>
      _CashSettlementHistoryScreenState();
}

class _CashSettlementHistoryScreenState
    extends State<CashSettlementHistoryScreen> {
  final TextEditingController _searchController = TextEditingController();
  TimePeriod selectedPeriod = TimePeriod.thisMonth;

  void _onSearchChanged(String query) {
    // _currentSearchQuery = query; // Store the current search query
    // _debouncer.run(() {
    //   // if (query.isNotEmpty) {
    //   _fetchOrders(currentOrderFilter, searchQuery: query);

    //   // }
    // });
  }
 
String _formatDate(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}

Map<String, String> getDateRangeForPeriod(TimePeriod period) {
  final now = DateTime.now();
  DateTime from;
  DateTime to = now;

  switch (period) {
    case TimePeriod.thisMonth:
      from = DateTime(now.year, now.month, 1);
      break;
    case TimePeriod.lastMonth:
      final lastMonth = DateTime(now.year, now.month - 1, 1);
      from = lastMonth;
      to = DateTime(now.year, now.month, 0);
      break;
    case TimePeriod.lastThree:
      from = DateTime(now.year, now.month - 3, 1);
      break;
    case TimePeriod.lastSix:
      from = DateTime(now.year, now.month - 6, 1);
      break;
    case TimePeriod.allTime:
      from = DateTime(2000, 1, 1);
      break;
  }

  return {
    'from': _formatDate(from),
    'to': _formatDate(to),
  };
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.dp),
            child: GestureDetector(
                onTap: () => Navigator.pop(context), child: _header()),
          ),
          Gap(16.dp),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: AlignmentGeometry.topCenter,
              end: AlignmentGeometry.bottomCenter,
              colors: [
                AppColors.primaryColor.withValues(alpha: .1),
                AppColors.primaryColor.withValues(alpha: 0),
                AppColors.primaryColor.withValues(alpha: 0)
              ],
            )),
            width: 100.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const DashedDivider(
                  dashPattern: [5.5, 5],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.dp, horizontal: 16.dp),
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
                        style: AppTypography.sfProRoundedMedium.copyWith(
                            color: AppColors.textGrey, fontSize: 14.sp),
                      ),
                      const Spacer(),
                      Text("AED 120",
                          style: AppTypography.sfProRoundedSemiBold.copyWith(
                              color: AppColors.primaryColor, fontSize: 24.sp))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.dp),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: CommonTextField(
                          borderRadius: 8.dp,
                          height: 36,
                          hintStyle: AppTypography.sfProRoundedMedium.copyWith(
                              fontSize: 12.dp, color: AppColors.neutral500),
                          controller: _searchController,
                          hintText: "Search",
                          prefixIcon: Image.asset(
                            AppImages.searchIcon,
                            height: 20.dp,
                            width: 20.dp,
                          ),
                          onChanged: _onSearchChanged,
                        ),
                      ),
                      Gap(8.dp),
                      Expanded(
                          flex: 3,
                          child:  PeriodFilterButton(
                          selected: selectedPeriod,
                          onSelected: (period) {
                            setState(() => selectedPeriod = period);

                                final range = getDateRangeForPeriod(period);
    final from = range['from'];
    final to = range['to'];


    debugPrint('Selected Period: $period');
    debugPrint('From: $from, To: $to');
                          },
                        ),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(
                  top: 24.dp, left: 16.dp, right: 16.dp, bottom: 16.dp),
              itemCount: 16,
              itemBuilder: (context, index) {
                return Container(
                  // padding: EdgeInsets.only(top: 16.dp),
                  margin: EdgeInsets.only(bottom: 12.dp),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withValues(alpha: .11),
                        offset: const Offset(0, 2),
                        blurRadius: 5,
                        spreadRadius: 0.0,
                      )
                    ],
                    borderRadius: BorderRadius.circular(12.dp),
                    border: Border.all(color: AppColors.shadowColor),
                  ),
                  child: _details(),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Container _details() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.dp, vertical: 8.dp),
      width: double.infinity,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.dp),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            const Color(0xFF00AEEF).withValues(alpha: 0.12),
            const Color(0xFFF6F6F6).withValues(alpha: 0)
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(AppImages.liquidCash, height: 16.dp, width: 16.dp),
              Gap(4.dp),
              Text('Settled Amount',
                  style: AppTypography.sfProRoundedSemiBold.copyWith(
                      fontSize: 12.dp, color: AppColors.primaryColor500)),
              const Spacer(),
              Text('Date',
                  style: AppTypography.sfProRoundedSemiBold
                      .copyWith(fontSize: 12.dp, color: AppColors.dateColor))
            ],
          ),
          Gap(2.dp),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20.dp),
              SizedBox(
                  width: 100,
                  child: Text("AED 200",
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                          fontSize: 12.dp, color: AppColors.addressColor))),
              const Spacer(),
              Row(
                children: [
                  Text("26 Aug 2025",
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                          fontSize: 12.dp, color: AppColors.neutral900)),
                  //a round point here
                  Gap(4.dp),
                  Container(
                    width: 5.dp,
                    height: 5.dp,
                    decoration: const BoxDecoration(
                      color: AppColors.neutral900,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Gap(4.dp),
                  Text("09:00 AM",
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                          fontSize: 12.dp, color: AppColors.neutral900)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      padding: EdgeInsets.only(top: 7.h, bottom: 8.dp),
      width: 100.w,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AppImages.arrow,
            height: 20.dp,
            width: 20.dp,
          ),
          Gap(6.dp),
          Text(
            "Cash Settlement History",
            style: AppTypography.sfProRoundedSemiBold.copyWith(
              fontSize: 16.dp,
              color: AppColors.neutral950,
            ),
          ),
        ],
      ),
    );
  }
}
