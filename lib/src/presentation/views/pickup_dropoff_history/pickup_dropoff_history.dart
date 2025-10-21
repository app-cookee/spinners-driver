import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/utils/debouncer.dart';
import 'package:spinners_driver/src/presentation/views/cash_settlement_history/widget/period_filter_button.dart';
import 'package:spinners_driver/src/presentation/views/cash_settlement_history/widget/time_period.dart';
import 'package:spinners_driver/src/presentation/views/orders/order_screen.dart';
import 'package:spinners_driver/src/presentation/views/pickup_dropoff_history/widgets/pickup_drop_filter_tabs.dart';
import 'package:spinners_driver/src/presentation/views/pickup_dropoff_history/widgets/pickup_drop_history_card.dart';
import 'package:spinners_driver/src/presentation/views/pickup_dropoff_history/widgets/pickup_drop_list_placeholder.dart';
import 'package:spinners_driver/src/presentation/views/widgets/common_textfield.dart';
import 'package:spinners_driver/src/presentation/views/widgets/empty_placeholder.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class PickUpDropoffHistoryScreen extends StatefulWidget {
  const PickUpDropoffHistoryScreen({super.key});

  @override
  State<PickUpDropoffHistoryScreen> createState() =>
      _PickUpDropoffHistoryScreenState();
}

class _PickUpDropoffHistoryScreenState
    extends State<PickUpDropoffHistoryScreen> {
   
  TimePeriod selectedPeriod = TimePeriod.allTime;

 
String _formatDate(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}
// Alternative approach using a more robust date calculation
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

// Helper function to properly subtract months
DateTime _subtractMonths(DateTime date, int months) {
  int newYear = date.year;
  int newMonth = date.month - months;
  
  while (newMonth <= 0) {
    newMonth += 12;
    newYear -= 1;
  }
  
  return DateTime(newYear, newMonth, date.day);
}

  final _pickup = [
    OrderFilter.pickedUp,
  ];
  final _dropOff = [
    OrderFilter.delivered,
  ];
  final int _itemsPerPage = 10;
  List<OrderFilter> currentOrderFilter = [];
  final _debouncer = Debouncer(milliseconds: 600);
  late ScrollController _scrollController;
  final TextEditingController _searchController = TextEditingController();
  String _currentSearchQuery = "";
  @override
  void initState() {
    currentOrderFilter = _pickup;
    //   final range = getDateRangeForPeriod(selectedPeriod);
    //  final from = range['from'];
    //  final to = range['to'];
  
    _fetchOrders(currentOrderFilter,);
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
    if (orderState.myOrdersisLoadingMore || !orderState.myOrdershasMore) return;

    // Convert filters to string
    final statusStrings = currentOrderFilter.map(statusToString).toList();
    final statusString = statusStrings.join(',');


     final range = getDateRangeForPeriod(selectedPeriod);
     final from = range['from'];
     final to = range['to'];

    // Trigger pagination with filters
    context.read<OrderBloc>().add(
          OrderEvent.paginateMyOrdersList(
              skip: orderState.myordersList.length, 
              limit: _itemsPerPage,
              filter: statusString,
             
              searchText:
                  _currentSearchQuery.isEmpty ? null : _currentSearchQuery,
                  from: from,
                  to: to
               
                  ),
        );
  }

  void _onSearchChanged(String query) {
    _currentSearchQuery = query; // Store the current search query
       final range = getDateRangeForPeriod(selectedPeriod);
     final from = range['from'];
     final to = range['to'];
    _debouncer.run(() {
      // if (query.isNotEmpty) {
      _fetchOrders(currentOrderFilter, searchQuery: _currentSearchQuery,from: from,to: to);

      // }
    });
  }

  void _fetchOrders(List<OrderFilter> statuses, {String? searchQuery,String? from,String? to}) {
    
    final statusStrings = statuses.map(statusToString).toList();
log(statusStrings.toString());
    context.read<OrderBloc>().add(
          OrderEvent.getMyOrders(
              limit: _itemsPerPage,
              skip: 0,
              filter: statusStrings.join(','),
           
              searchText: searchQuery,
              from: from,
              to: to
              ),
        );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    _debouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.dp),
        child: Column(
          children: [
            GestureDetector(
                onTap: () => Navigator.pop(context), child: _header()),
            Gap(8.dp),
            PickupDropoffFilterTabs(
              onTabChanged: (index) {
                setState(() => selectedPeriod = TimePeriod.allTime);
                if (index == 0) {
                  currentOrderFilter = _pickup;
                  _fetchOrders(currentOrderFilter);
                } else if (index == 1) {
                  currentOrderFilter = _dropOff;
                  _fetchOrders(currentOrderFilter);
                }
              },
            ),
            Gap(12.dp),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: CommonTextField(height: 36,
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

_fetchOrders(currentOrderFilter, searchQuery: _currentSearchQuery, from: from, to: to);

    debugPrint('Selected Period: $period');
    debugPrint('From: $from, To: $to');
                          },
                        ),)
           
              ],
            ),
            Gap(8.dp),
            Expanded(
              child: BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  if (state.getMyOrderListStatus is StatusLoading ||
                      state.getMyOrderListStatus is StatusInitial) {
                    return const PickupDropListPlaceholder();
                  }
                  if (state.myordersList.isEmpty) {
                    return Padding(
                      padding: EdgeInsetsGeometry.only(top: 6.h),
                      child: const Center(child: EmptyPlaceholder()),
                    );
                  }
                  return RefreshIndicator(
                    onRefresh: () async {
                      _searchController.clear();
                      setState(() => selectedPeriod = TimePeriod.allTime);
                      _currentSearchQuery = "";
                      _fetchOrders(currentOrderFilter);
                    },
                    child: ListView.builder(
                        controller: _scrollController,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: state.myordersList.length +
                            (state.myOrdersisLoadingMore ? 1 : 0),
                        // shrinkWrap: true,
                        padding: EdgeInsets.only(
                            top: 9.dp, bottom: ((88 / 812) * 100.h)),
                        // primary: false,
                        itemBuilder: (context, index) {
                          if (index == state.myordersList.length) {
                            return const SpinKitCircle(
                              color: AppColors.primaryColor,
                            );
                          }
                          return PickDropHistoryCard(
                            
                            custName: '${state.myordersList[index].customer?.user?.firstName??""}${state.myordersList[index].customer?.user?.lastName??""}'!=""?
                            '${state.myordersList[index].customer?.user?.firstName??""}${state.myordersList[index].customer?.user?.lastName??""}':state.myordersList[index].customer?.user?.phoneNumber??"",
                            amount:  state.myordersList[index].totalAmount,
                            paymentMethod: 'Cash',
                            address: state
                                    .myordersList[index].selectedAddress?.place ??
                                "",
                            refId: state.myordersList[index].refId.toString(),
                            orderId: state.myordersList[index].id,

                          time: formatUaeDateTime(
  state.myordersList[index]
      .statusHistory
      .where((e) => e.status == ((currentOrderFilter == _pickup) ? 'pickedUp' : 'delivered'))
      .toList()
      .last
      .changedAt,
).last,

                            // getOrderDisplayDate(state.ordersList[index]),
                            date: formatUaeDateTime( state.myordersList[index].statusHistory.where((e) => e.status == ((currentOrderFilter == _pickup) ? 'pickedUp' : 'delivered')).toList().last.changedAt
    ).first,

                            status: state.myordersList[index].status,
                            isDropoff: 
                        
                              state.myordersList[index].statusHistory
    .any((e) => e.status == 'pickedUp')
 
                                ? false
                                : true,
                            isQuickOrder:
                                state.myordersList[index].type == "oneTapOrder"
                                    ? true
                                    : false,

                            // notes: 'Deliver to reception.',
                          );
                        }),
                  );
                },
              ),
            ),
          ],
        ),
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
            "Pickup & Dropoff History",
            style: AppTypography.sfProRoundedSemiBold.copyWith(
              fontSize: 16.dp,
              color: AppColors.neutral950,
            ),
          ),
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

  return [datePart,timePart];
}

}

enum OrderFilter { pickupScheduled, readyForDelivery, pickedUp, delivered }

String statusToString(OrderFilter status) => status.name;