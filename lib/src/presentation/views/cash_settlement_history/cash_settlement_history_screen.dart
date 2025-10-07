import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/dashboard_data_bloc/dashboard_data_bloc.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/cash_settlement_history/widget/settlements_list_placeholder.dart';
import 'package:spinners_driver/src/presentation/views/cash_settlement_history/widget/period_filter_button.dart';
import 'package:spinners_driver/src/presentation/views/cash_settlement_history/widget/time_period.dart';
import 'package:spinners_driver/src/presentation/views/widgets/dashed_divider.dart';
import 'package:spinners_driver/src/presentation/views/widgets/empty_placeholder.dart';
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
  TimePeriod selectedPeriod = TimePeriod.allTime;
  final int _itemsPerPage = 13;
  late ScrollController _scrollController;

  @override
  void initState() {
    context
        .read<DashboardDataBloc>()
        .add(const DashboardDataEvent.getDashboardData());
    _fetchHistorys();
    // Separate listeners for each toggle
    _scrollController = ScrollController();

    // Add scroll listener to track scrolling state
    _scrollController.addListener(() {
      // log("Scroll listener fired - pixels: ${_scrollController.position.pixels}");

      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        _loadMoreItems();
      }
    });
    super.initState();
  }

  void _loadMoreItems() {
    // log("load more itrms");
    final orderState = context.read<OrderBloc>().state;

    // Prevent duplicate calls
    if (orderState.cashSettlmentsisLoadingMore ||
        !orderState.cashSettlmentshasMore) return;

    final range = getDateRangeForPeriod(selectedPeriod);
    final from = range['from'];
    final to = range['to'];

    // Trigger pagination with filters
    context.read<OrderBloc>().add(
          OrderEvent.paginateCashSettlmentsList(
              skip: orderState.cashSettlmentsList.length,
              limit: _itemsPerPage,
              from: from,
              to: to),
        );
  }

  void _fetchHistorys({String? from, String? to}) {
    context.read<OrderBloc>().add(
          OrderEvent.getCashSettlments(
              limit: _itemsPerPage, skip: 0, from: from, to: to),
        );
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
        // More robust: subtract 1 month from current date
        from = DateTime(now.year, now.month - 1, 1);
        // Handle negative months
        if (from.month <= 0) {
          from = DateTime(from.year - 1, from.month + 12, 1);
        }
        // Get last day of that month
        to = DateTime(from.year, from.month + 1, 0);
        break;

      case TimePeriod.lastThree:
        from = _subtractMonths(now, 3);
        from = DateTime(from.year, from.month, 1);
        break;

      case TimePeriod.lastSix:
        from = _subtractMonths(now, 6);
        from = DateTime(from.year, from.month, 1);
        break;

      case TimePeriod.allTime:
        return {};
    }

    return {
      'from': _formatDate(from),
      'to': _formatDate(to),
    };
  }

  String _formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  DateTime _subtractMonths(DateTime date, int months) {
    int newYear = date.year;
    int newMonth = date.month - months;

    while (newMonth <= 0) {
      newMonth += 12;
      newYear -= 1;
    }

    return DateTime(newYear, newMonth, date.day);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
            )
            ),
            width: 100.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const DashedDivider(
                  dashPattern: [5.5, 5],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                  padding:
                      EdgeInsets.only(left: 16.dp, top: 16.dp, bottom: 0.dp,right: 16.dp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                        ],
                      ),
                      Gap(6.dp),
                      BlocBuilder<DashboardDataBloc, DashboardDataState>(
                        builder: (context, state) {
                          return Skeletonizer(
                            enabled: (state.getDashboardDataStatus
                                    is StatusInitial ||
                                state.getDashboardDataStatus is StatusLoading),
                            child: Text(
                                "AED ${state.dashboardDataModel.totalCollectedCash}",
                                style: AppTypography.sfProRoundedSemiBold
                                    .copyWith(
                                        color: AppColors.primaryColor,
                                        fontSize: 24.sp)),
                          );
                        },
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.dp),
                  child: Row(
                    children: [
                      PeriodFilterButton(
                        selected: selectedPeriod,
                        onSelected: (period) {
                          setState(() => selectedPeriod = period);

                          final range = getDateRangeForPeriod(period);
                          final from = range['from'];
                          final to = range['to'];

                          _fetchHistorys(from: from, to: to);

                          debugPrint('Selected Period: $period');
                          debugPrint('From: $from, To: $to');
                        },
                      )
                    ],
                  ),
                ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                if (state.getCashSettlmentListStatus is StatusLoading ||
                    state.getCashSettlmentListStatus is StatusInitial) {
                  return Padding(
                    padding:
                        EdgeInsets.only(left: 16.dp, right: 16.dp, top: 16.dp),
                    child: const SettlementsListPlaceholder(),
                  );
                }
                if (state.cashSettlmentsList.isEmpty) {
                  return Padding(
                    padding: EdgeInsetsGeometry.only(top: 6.h),
                    child: const Center(child: EmptyPlaceholder()),
                  );
                }
                return RefreshIndicator(
                  onRefresh: () async {
                    setState(() => selectedPeriod = TimePeriod.allTime);
                    _fetchHistorys();
                  },
                  child: ListView.builder(
                    controller: _scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.only(
                        top: 24.dp, left: 16.dp, right: 16.dp, bottom: 16.dp),
                    itemCount: state.cashSettlmentsList.length +
                        (state.cashSettlmentsisLoadingMore ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == state.cashSettlmentsList.length) {
                        return const SpinKitCircle(
                          color: AppColors.primaryColor,
                        );
                      }
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
                        child: _details(
                            amount: state.cashSettlmentsList[index].amount,
                            time: formatUaeDateTime(
                                    state.cashSettlmentsList[index].createdAt)
                                .last,
                            date: formatUaeDateTime(
                                    state.cashSettlmentsList[index].createdAt)
                                .first),
                      );
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  List<String> formatUaeDateTime(String utcString) {
    // Parse the UTC string
    final utcDate = DateTime.parse(utcString);

    // Convert to UAE timezone (UTC+4)
    final uaeDate = utcDate.add(const Duration(hours: 4));

    // Format date part: 26 Aug 2025
    final datePart = DateFormat('dd MMM yyyy').format(uaeDate);

    // Format time part: 09:00 AM
    final timePart = DateFormat('hh:mm a').format(uaeDate);

    return [datePart, timePart];
  }

  Container _details(
      {required String date, required String time, required String amount}) {
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
                  child: Text('AED $amount',
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                          fontSize: 12.dp, color: AppColors.addressColor))),
              const Spacer(),
              Row(
                children: [
                  Text(date,
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
                  Text(time,
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
