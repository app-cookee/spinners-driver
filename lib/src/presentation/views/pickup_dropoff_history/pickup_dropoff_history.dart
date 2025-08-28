import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/utils/debouncer.dart';
import 'package:spinners_driver/src/presentation/views/home/placeholders/order_list_placeholder.dart';
import 'package:spinners_driver/src/presentation/views/orders/order_screen.dart';
import 'package:spinners_driver/src/presentation/views/pickup_dropoff_history/widgets/pickup_drop_filter_tabs.dart';
import 'package:spinners_driver/src/presentation/views/pickup_dropoff_history/widgets/pickup_drop_history_card.dart';
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
  final _pickup = [
    OrderFilter.pickupScheduled,
  ];
  final _dropOff = [
    OrderFilter.readyForDelivery,
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
    _fetchOrders(currentOrderFilter);
    // Separate listeners for each toggle
    _scrollController = ScrollController();

    // Add scroll listener to track scrolling state
    _scrollController.addListener(() {
      // log("Scroll listener fired - pixels: ${_scrollController.position.pixels}");

      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        // log("scrolled");
        _loadMoreItems();
      }
    });
    super.initState();
  }

  void _loadMoreItems() {
    // log("load more itrms");
    final orderState = context.read<OrderBloc>().state;

    // Prevent duplicate calls
    if (orderState.isLoadingMore || !orderState.hasMore) return;

    // Convert filters to string
    final statusStrings = currentOrderFilter.map(statusToString).toList();
    final statusString = statusStrings.join(',');

    // Trigger pagination with filters
    // context.read<OrderBloc>().add(
    //       OrderEvent.paginateOrdersList(
    //           skip: orderState.ordersList.length,
    //           limit: _itemsPerPage,
    //           filter: statusString,
    //           expressOnly: isExpressOnlyEnabled,
    //           latitude: lat,
    //           longitude: lng,
    //           searchText:
    //               _currentSearchQuery.isEmpty ? null : _currentSearchQuery),
    //     );
  }

  void _onSearchChanged(String query) {
    _currentSearchQuery = query; // Store the current search query
    _debouncer.run(() {
      // if (query.isNotEmpty) {
      _fetchOrders(currentOrderFilter, searchQuery: query);

      // }
    });
  }

  void _fetchOrders(List<OrderFilter> statuses, {String? searchQuery}) {
    final statusStrings = statuses.map(statusToString).toList();

    // context.read<OrderBloc>().add(
    //       OrderEvent.getOrdersList(
    //           limit: _itemsPerPage,
    //           skip: 0,
    //           filter: statusStrings.join(','),
    //           expressOnly: isExpressOnlyEnabled,
    //           latitude: latitudeNotifier.value,
    //           longitude: longitudeNotifier.value,
    //           searchText: searchQuery),
    //     );
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
                if (index == 0) {
                  currentOrderFilter = _pickup;
                  _fetchOrders(_pickup);
                } else if (index == 1) {
                  currentOrderFilter = _dropOff;
                  _fetchOrders(_dropOff);
                }
              },
            ),
            Gap(12.dp),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: CommonTextField(
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
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 48.dp,
                        decoration: BoxDecoration(
                            color: AppColors.filterBgColor,
                            borderRadius: BorderRadius.circular(8.dp),
                            border: Border.all(
                                color: AppColors.loginFieldBorderColor)),
                        child: Padding(
                          padding: EdgeInsets.all(6.dp),
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.calendarIcon,
                                height: 24.dp,
                                width: 24.dp,
                              ),
                              Gap(8.dp),
                              //a vertical divider
                              Container(
                                width: 1.dp,
                                height: 24.dp,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        AppColors.white,
                                        Color(0xffCFCFCF),
                                        AppColors.white,
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                ),
                              ),
                              Gap(8.dp),
                              Text(
                                "Last 6 Month",
                                style:
                                    AppTypography.sfProRoundedSemiBold.copyWith(
                                  fontSize: 12.dp,
                                  color: AppColors.neutral900,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            Gap(8.dp),
            Expanded(
              child: BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  if (state.getOrderListStatus is StatusLoading ||
                      state.getOrderListStatus is StatusInitial) {
                    return const OrderListPlaceholder();
                  }
                  if (state.ordersList.isEmpty) {
                    return Padding(
                      padding: EdgeInsetsGeometry.only(top: 6.h),
                      child: const Center(child: EmptyPlaceholder()),
                    );
                  }
                  return RefreshIndicator(
                    onRefresh: () async {
                      _searchController.clear();

                      _currentSearchQuery = "";
                      _fetchOrders(currentOrderFilter);
                    },
                    child: ListView.builder(
                        controller: _scrollController,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: state.ordersList.length +
                            (state.isLoadingMore ? 1 : 0),
                        // shrinkWrap: true,
                        padding: EdgeInsets.only(
                            top: 9.dp, bottom: ((88 / 812) * 100.h)),
                        // primary: false,
                        itemBuilder: (context, index) {
                          if (index == state.ordersList.length) {
                            return const SpinKitCircle(
                              color: AppColors.primaryColor,
                            );
                          }
                          return PickDropHistoryCard(
                            custName: 'Frank Woods',
                            amount: '120',
                            paymentMethod: 'Cash',
                            address: state
                                    .ordersList[index].selectedAddress?.place ??
                                "",
                            refId: state.ordersList[index].refId.toString(),
                            orderId: state.ordersList[index].id,

                            time: 'Time',
                            // getOrderDisplayDate(state.ordersList[index]),
                            date: 'Date',

                            status: state.ordersList[index].status,
                            isDropoff: (state.ordersList[index].status ==
                                        "pickupScheduled" ||
                                    state.ordersList[index].status ==
                                        "pickedUp")
                                ? false
                                : true,
                            isQuickOrder:
                                state.ordersList[index].type == "oneTapOrder"
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
            "Pickup & Dropoff Report",
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
