
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/src/application/dashboard_data_bloc/dashboard_data_bloc.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/domain/models/order_model/order_model.dart';
import 'package:spinners_driver/src/presentation/utils/no_glow_scroll_behaviour.dart';
import 'package:spinners_driver/src/presentation/views/home/placeholders/Pickup_delivery_overview_placeholder.dart';
import 'package:spinners_driver/src/presentation/views/home/placeholders/order_list_placeholder.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/home_appbar.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/order_card.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/pickup_and_delivery_overview/pickup_and_delivery_overview.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/pickup_filter_tabs.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/todays_collected_cod.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/toggle_button.dart';
import 'package:spinners_driver/src/presentation/views/widgets/empty_placeholder.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

enum OrderFilter {
  pickupScheduled,
  readyForDelivery,
  pickedUp,
  delivered
}

String statusToString(OrderFilter status) => status.name;

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}
class _HomeViewState extends State<HomeView> {
  final _allOrders = [
    OrderFilter.pickupScheduled,
    OrderFilter.readyForDelivery,
    OrderFilter.pickedUp,
    OrderFilter.delivered,
  ];
  final _pickup = [
    OrderFilter.pickupScheduled,
  ];
  final _dropOff = [
    OrderFilter.readyForDelivery,
  ];
  
  final int _itemsPerPage = 5;
  late ScrollController _scrollController;
  ValueNotifier<bool> isScrolling = ValueNotifier(false);
  final ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);
  ValueNotifier<int> nearestLocationNotifier = ValueNotifier(0);
  ValueNotifier<int> expressOnlyNotifier = ValueNotifier(0);

  // Keep track of current filter
  List<OrderFilter> currentOrderFilter = [];
  // Store location coordinates using ValueNotifier
  ValueNotifier<double?> latitudeNotifier = ValueNotifier<double?>(null);
  ValueNotifier<double?> longitudeNotifier = ValueNotifier<double?>(null);

  @override
  void initState() {
    currentOrderFilter = _allOrders;
    _fetchOrders(currentOrderFilter);
    super.initState();
    context
        .read<DashboardDataBloc>()
        .add(const DashboardDataEvent.getDashboardData());
    _scrollController = ScrollController();

    // Add scroll listener to track scrolling state
    _scrollController.addListener(() {
        // log("Scroll listener fired - pixels: ${_scrollController.position.pixels}");
      
        if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
            log("scrolled");
        _loadMoreItems();
      }
      if (_scrollController.offset > 0 && !isScrolling.value) {
        isScrolling.value = true;
      } else if (_scrollController.offset <= 0 && isScrolling.value) {
        isScrolling.value = false;
      }
    });

    // Separate listeners for each toggle
    nearestLocationNotifier.addListener(_onNearestLocationChanged);
    expressOnlyNotifier.addListener(_onExpressOnlyChanged);
  }

void _loadMoreItems() {
  log("load more itrms");
  final orderState = context.read<OrderBloc>().state;

  // Prevent duplicate calls
  if (orderState.isLoadingMore || !orderState.hasMore) return;

  // Convert filters to string
  final statusStrings = currentOrderFilter.map(statusToString).toList();
  final statusString = statusStrings.join(',');

  // Current toggles
  final isExpressOnlyEnabled = expressOnlyNotifier.value == 1;
  final lat = latitudeNotifier.value;
  final lng = longitudeNotifier.value;

  // Trigger pagination with filters
  context.read<OrderBloc>().add(
    OrderEvent.paginateOrdersList(
      skip: orderState.ordersList.length,
      limit: _itemsPerPage,
      filter: statusString,
      expressOnly: isExpressOnlyEnabled,
      latitude: lat,
      longitude: lng,
    ),
  );
}



  void _onNearestLocationChanged() {
    bool isNearestLocationEnabled = nearestLocationNotifier.value == 1;

    if (!isNearestLocationEnabled) {
      // Reset stored location when toggle is OFF
      latitudeNotifier.value = null;
      longitudeNotifier.value = null;
      _fetchOrders(currentOrderFilter);
    }
    // Note: When nearest location is turned ON, _onLocationFetched will handle the fetch
  }

  void _onExpressOnlyChanged() {
    // Express filter change - just refetch with current location state
    // This should NOT trigger any location permission requests
    _fetchOrders(currentOrderFilter);
  }

  void _onLocationFetched(double? lat, double? lng) {
    latitudeNotifier.value = lat;
    longitudeNotifier.value = lng;

    if (nearestLocationNotifier.value == 1) {
      // Trigger fetch only after location is available
      _fetchOrders(currentOrderFilter);
    }
  }

  void _fetchOrders(List<OrderFilter> statuses) {
    final statusStrings = statuses.map(statusToString).toList();
    bool isExpressOnlyEnabled = expressOnlyNotifier.value == 1;

    context.read<OrderBloc>().add(
      OrderEvent.getOrdersList(
        limit: _itemsPerPage,
        skip: 0,
        filter: statusStrings.join(','),
        expressOnly: isExpressOnlyEnabled,
        latitude: latitudeNotifier.value, 
        longitude: longitudeNotifier.value,
        
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    isScrolling.dispose();
    nearestLocationNotifier.removeListener(_onNearestLocationChanged);
    expressOnlyNotifier.removeListener(_onExpressOnlyChanged);
    nearestLocationNotifier.dispose();
    expressOnlyNotifier.dispose();
    latitudeNotifier.dispose();
    longitudeNotifier.dispose();
    selectedIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoGlowScrollBehavior(),
      child: Scaffold(
        body: SizedBox(
          height: 100.h,
          width: 100.w,
          child: BlocBuilder<DashboardDataBloc, DashboardDataState>(
            builder: (context, dashboardDataState) {
            
              return Stack(
                children: [
                  HomeAppbar(
                      nextPickuptime:
                          dashboardDataState.dashboardDataModel.nextActivityAt),
                  _scrollableContainer(),
                  Padding(
                      padding: EdgeInsets.only(top: 13.h),
                      child: SingleChildScrollView(
                        controller: _scrollController,
                        child: Column(
                          children: [
                            (dashboardDataState.getDashboardDataStatus is StatusInitial||dashboardDataState.getDashboardDataStatus is StatusLoading)?
                                const PickupDeliveryOverviewPlaceholder():
                            
                            PickupAndDeliveryOverview(
                              remainingPickups: dashboardDataState
                                  .dashboardDataModel.remainingPickups,
                              remainingDeliveries: dashboardDataState
                                  .dashboardDataModel.remainingDeliveries,
                              completedPickups: dashboardDataState
                                  .dashboardDataModel.completedPickups,
                              completedDeliveries: dashboardDataState
                                  .dashboardDataModel.completedDeliveries,
                            ),
                            Gap(16.dp),
                            TodaysCollectedCOD(
                              state: dashboardDataState,
                            ),
                            Padding(
                              padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 16.dp),
                              child: PickupFilterTabs(
                                onTabChanged: (index) {
                                  // Update current filter and fetch orders
                                  if (index == 0) {
                                    currentOrderFilter = _allOrders;
                                    _fetchOrders(_allOrders);
                                  } else if (index == 1) {
                                    currentOrderFilter = _pickup;
                                    _fetchOrders(_pickup);
                                  } else {
                                    currentOrderFilter = _dropOff;
                                    _fetchOrders(_dropOff);
                                  }
                                },
                              ),
                            ),
                            Gap(16.dp),
                            Padding(
                              padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 16.dp),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ToggleButton(
                                    isToggled: nearestLocationNotifier,
                                    label: 'Nearest Location',
                                    onLocationFetched: _onLocationFetched // Only this toggle has location callback
                                  ),
                                  Gap(12.dp),
                                  ToggleButton(
                                    isToggled: expressOnlyNotifier,
                                    label: 'Express Only',
                                    // No onLocationFetched callback for Express Only
                                  ),
                                ],
                              ),
                            ),
                            BlocBuilder<OrderBloc, OrderState>(
                              builder: (context, state) {
                                if(state.getOrderListStatus is StatusLoading||state.getOrderListStatus is StatusInitial){
                                  return Padding(
                                  padding:
          EdgeInsets.only(top: 12.dp, left: 16.dp, right: 16.dp, bottom: 16.dp),
                                    child: const OrderListPlaceholder(),
                                  );
                                }
                                if(state.ordersList.isEmpty){
                                  return
                                   Padding(
                                    padding: EdgeInsetsGeometry.only(top: 6.h),
                                    child: const EmptyPlaceholder(),
                                  );
                                }
                                return ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: state.ordersList.length + (state.isLoadingMore ? 1 : 0),
                                    shrinkWrap: true,
                                    padding: EdgeInsets.only(
                                        top: 12.dp,
                                        left: 16.dp,
                                        right: 16.dp,
                                        bottom: 16.h),
                                    primary: false,
                                    itemBuilder: (context, index) {
                                       if (index == state.ordersList.length) {
                              return const SpinKitCircle(
                                      color: AppColors.primaryColor,
                                    );
                            }
                                      return OrderCard(lat:state.ordersList[index].selectedAddress?.latitude??"" ,lon:state.ordersList[index].selectedAddress?.longitude??"" ,
                                        isExpressService: state.ordersList[index].expressService,
                                        address: state.ordersList[index].selectedAddress?.place ?? "",
                                        refId: state.ordersList[index].refId.toString(),
                                        orderId: state.ordersList[index].id,
                                        time: state.ordersList[index].status == "pickupScheduled"
                                            ? formatSingleDate(state.ordersList[index].pickupAt,state.ordersList[index].pickupSlot,"pickupScheduled",state.ordersList[index].statusHistory)
                                            // formatDeliverySlot({
                                            //     "from": state.ordersList[index].pickupSlot?.from ?? "",
                                            //     "to": state.ordersList[index].pickupSlot?.to ?? "",
                                            //     "day": state.ordersList[index].pickupSlot?.day ?? ""
                                            //   })
                                            :state.ordersList[index].status == "readyForDelivery"?formatSingleDate(state.ordersList[index].pickupAt,state.ordersList[index].pickupSlot,"readyForDelivery",state.ordersList[index].statusHistory)
                                            //  formatDeliverySlot({
                                              //   "from": state.ordersList[index].deliverySlot?.from ?? "",
                                              //   "to": state.ordersList[index].deliverySlot?.to ?? "",
                                              //   "day": state.ordersList[index].deliverySlot?.day ?? ""
                                              // })
                                              :state.ordersList[index].status == "pickedUp"?formatSingleDate(state.ordersList[index].pickupAt,state.ordersList[index].pickupSlot,
                                              "pickedUp",state.ordersList[index].statusHistory):formatSingleDate(state.ordersList[index].pickupAt,state.ordersList[index].pickupSlot,
                                              "delivered",state.ordersList[index].statusHistory),
                                        status: state.ordersList[index].status,
                                        isDropoff: (state.ordersList[index].status == "pickupScheduled"||state.ordersList[index].status == "pickedUp") ? false : true,
                                        isQuickOrder: state.ordersList[index].type == "oneTapOrder" ? true : false,
                                      );
                                    });
                              },
                            ),
                          ],
                        ),
                      )),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
DateTime _toUaeTime(DateTime utcTime) {
  // UAE is UTC+4 with no daylight savings
  return utcTime.toUtc().add(const Duration(hours: 4));
}

String formatSingleDate(
  String utcDate,
  TimeSlot? slot,
  String status,
  List<OrderStatus> statusHistory,
) {
  DateTime? date;
  DateTime? fromTime;
  DateTime? toTime;

  if (status.toLowerCase() == "delivered") {
    final deliveredStatus = statusHistory.firstWhere(
      (s) => s.status.toLowerCase() == "delivered",
      orElse: () => const OrderStatus(),
    );
    if (deliveredStatus.changedAt.isNotEmpty) {
      date = _toUaeTime(DateTime.parse(deliveredStatus.changedAt));
    }
  } else {
    date = _toUaeTime(DateTime.parse(utcDate));
    if (slot != null && slot.from.isNotEmpty && slot.to.isNotEmpty) {
      fromTime = _toUaeTime(DateTime.parse(slot.from));
      toTime = _toUaeTime(DateTime.parse(slot.to));
    }
  }

  if (date == null) return "";

  final now = _toUaeTime(DateTime.now().toUtc());
  final today = DateTime(now.year, now.month, now.day);
  final tomorrow = today.add(const Duration(days: 1));
  final targetDate = DateTime(date.year, date.month, date.day);

  final dateFormat = DateFormat('MMM d, y');
  final timeFormat = DateFormat('h:mm a');

  if (fromTime != null && toTime != null) {
    final timeText =
        "${timeFormat.format(fromTime)} - ${timeFormat.format(toTime)}";
    if (targetDate == today) {
      return "Today, $timeText";
    } else if (targetDate == tomorrow) {
      return "Tomorrow, $timeText";
    } else {
      return "${dateFormat.format(date)}, $timeText";
    }
  } else {
    if (targetDate == today) {
      return "Today, ${timeFormat.format(date)}";
    } else if (targetDate == tomorrow) {
      return "Tomorrow, ${timeFormat.format(date)}";
    } else {
      return "${dateFormat.format(date)} – ${timeFormat.format(date)}";
    }
  }
}










  Widget _scrollableContainer() {
    return ValueListenableBuilder<bool>(
      valueListenable: isScrolling,
      builder: (context, scrolling, child) {
        return AnimatedOpacity(
          opacity: scrolling ? 0.0 : 1.0,
          duration: const Duration(milliseconds: 200),
          child: Padding(
            padding: EdgeInsets.only(
              top: 43.h,
            ),
            child: Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.dp),
                  topRight: Radius.circular(16.dp),
                ),
                gradient: const LinearGradient(
                  colors: [
                    AppColors.lightGrey1,
                    AppColors.neutral50,
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
// class _HomeViewState extends State<HomeView> {

//   final _allOrders = [
//     OrderStatus.pickupScheduled,
//     OrderStatus.readyForDelivery,
//     OrderStatus.pickedUp,
//       OrderStatus.delivered,
//   ];
//   final _pickup = [
//     OrderStatus.pickupScheduled,
//   ];
//   final _dropOff = [
//     OrderStatus.readyForDelivery,
//   ];
  
//     late ScrollController _scrollController;
//   ValueNotifier<bool> isScrolling = ValueNotifier(false);
//   final ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);
//   ValueNotifier<int> nearestLocationNotifier = ValueNotifier(0);
//   ValueNotifier<int> expressOnlyNotifier = ValueNotifier(0);

//    // Keep track of current filter
//   List<OrderStatus> currentOrderFilter = [];
//     // Store location coordinates using ValueNotifier
//   ValueNotifier<double?> latitudeNotifier = ValueNotifier<double?>(null);
//   ValueNotifier<double?> longitudeNotifier = ValueNotifier<double?>(null);


//   @override
//   void initState() {
//    currentOrderFilter = _allOrders;
//     _fetchOrders(currentOrderFilter);
//     super.initState();
//     context
//         .read<DashboardDataBloc>()
//         .add(const DashboardDataEvent.getDashboardData());
//     _scrollController = ScrollController();

//     // Add scroll listener to track scrolling state
//     _scrollController.addListener(() {
//       if (_scrollController.offset > 0 && !isScrolling.value) {
//         isScrolling.value = true;
//       } else if (_scrollController.offset <= 0 && isScrolling.value) {
//         isScrolling.value = false;
//       }
//     });

//   // Separate listeners for each toggle
//   nearestLocationNotifier.addListener(_onNearestLocationChanged);
//   expressOnlyNotifier.addListener(_onExpressOnlyChanged);

//   }
// void _onNearestLocationChanged() {
//   bool isNearestLocationEnabled = nearestLocationNotifier.value == 1;

//   if (!isNearestLocationEnabled) {
//     // Reset stored location when toggle is OFF
//     latitudeNotifier.value = null;
//     longitudeNotifier.value = null;
//     _fetchOrders(currentOrderFilter);
//   }
//   // Note: When nearest location is turned ON, _onLocationFetched will handle the fetch
// }

// void _onExpressOnlyChanged() {
//   // Express filter change - just refetch with current location state
//   _fetchOrders(currentOrderFilter);
// }

// void _onToggleChanged() {
//   bool isNearestLocationEnabled = nearestLocationNotifier.value == 1;
//   bool isExpressOnlyEnabled = expressOnlyNotifier.value == 1;

//   if (!isNearestLocationEnabled) {
//     // Reset stored location when nearest location toggle is OFF
//     latitudeNotifier.value = null;
//     longitudeNotifier.value = null;
//   }

//   // Only fetch orders - don't handle location permission here
//   // Location permission should only be handled in ToggleButton widget
//   _fetchOrders(currentOrderFilter);
// }

//  void _onLocationFetched(double? lat, double? lng) {
//   latitudeNotifier.value = lat;
//   longitudeNotifier.value = lng;

//   if (nearestLocationNotifier.value == 1) {
//     // Trigger fetch only after location is available
//     _fetchOrders(currentOrderFilter);
//   }
// }


//   void _fetchOrders(List<OrderStatus> statuses) {

//     final statusStrings = statuses.map(statusToString).toList();
//     bool isNearestLocationEnabled = nearestLocationNotifier.value == 1;
//     bool isExpressOnlyEnabled = expressOnlyNotifier.value == 1;
//     // log(isExpressOnlyEnabled.toString());

//     context.read<OrderBloc>().add(
//           OrderEvent.getOrdersList(
//             limit: 1000,
//             skip: 0,
//             filter: statusStrings.join(','),
//             expressOnly: isExpressOnlyEnabled,
//               latitude: latitudeNotifier.value, 
//             longitude: longitudeNotifier.value
          
//           ),
//         );
//   }

//  @override
// void dispose() {
//   _scrollController.dispose();
//   isScrolling.dispose();
//   nearestLocationNotifier.removeListener(_onNearestLocationChanged);
//   expressOnlyNotifier.removeListener(_onExpressOnlyChanged);
//   nearestLocationNotifier.dispose();
//   expressOnlyNotifier.dispose();
//   super.dispose();
// }


//   @override
//   Widget build(BuildContext context) {
//     return ScrollConfiguration(
//       behavior: NoGlowScrollBehavior(),
//       child: Scaffold(
//         body: SizedBox(
//           height: 100.h,
//           width: 100.w,
//           child: BlocBuilder<DashboardDataBloc, DashboardDataState>(
//             builder: (context, dashboardDataState) {
//               return Stack(
//                 children: [
//                   HomeAppbar(
//                       nextPickuptime:
//                           dashboardDataState.dashboardDataModel.nextActivityAt),
//                   _scrollableContainer(),
//                   Padding(
//                       padding: EdgeInsets.only(top: 13.h),
//                       child: SingleChildScrollView(
//                         controller: _scrollController,
//                         child: Column(
//                           children: [
//                             PickupAndDeliveryOverview(
//                               remainingPickups: dashboardDataState
//                                   .dashboardDataModel.remainingPickups,
//                               remainingDeliveries: dashboardDataState
//                                   .dashboardDataModel.remainingDeliveries,
//                               completedPickups: dashboardDataState
//                                   .dashboardDataModel.completedPickups,
//                               completedDeliveries: dashboardDataState
//                                   .dashboardDataModel.completedDeliveries,
//                             ),
//                             Gap(16.dp),
//                             TodaysCollectedCOD(
//                               state: dashboardDataState,
//                             ),
//                             Padding(
//                               padding: EdgeInsetsGeometry.symmetric(
//                                   horizontal: 16.dp),
//                               child: PickupFilterTabs(
//                                 onTabChanged: (index) {
//                                      // Update current filter and fetch orders
//                                   if (index == 0) {
//                                     currentOrderFilter = _allOrders;
//                                     _fetchOrders(_allOrders);
//                                   } else if (index == 1) {
//                                     currentOrderFilter = _pickup;
//                                     _fetchOrders(_pickup);
//                                   } else {
//                                     currentOrderFilter = _dropOff;
//                                     _fetchOrders(_dropOff);
//                                   }
//                                 },
//                               ),
//                             ),
//                             Gap(16.dp),
//                             Padding(
//                               padding: EdgeInsetsGeometry.symmetric(
//                                   horizontal: 16.dp),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   ToggleButton(
//                                     isToggled: nearestLocationNotifier,
//                                     label: 'Nearest Location',
//                                     onLocationFetched: _onLocationFetched
//                                   ),
//                                   Gap(12.dp),
//                                   ToggleButton(
//                                     isToggled: expressOnlyNotifier,
//                                     label: 'Express Only',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             BlocBuilder<OrderBloc, OrderState>(
//                               builder: (context, state) {
//                                 return ListView.builder(
//                                     physics:
//                                         const NeverScrollableScrollPhysics(),
//                                     itemCount: state.ordersList.length,
//                                     shrinkWrap: true,
//                                     padding: EdgeInsets.only(
//                                         top: 12.dp,
//                                         left: 16.dp,
//                                         right: 16.dp,
//                                         bottom: 16.h),
//                                     primary: false,
//                                     itemBuilder: (context, index) {
//                                       return  OrderCard(isExpressService:  state.ordersList[index].expressService,
//                                       address:  state.ordersList[index].selectedAddress?.place??"",
                                     
//                                         orderId: '#SPN${state.ordersList[index].refId}',
                                    
//                                         time:state.ordersList[index].status=="pickupScheduled"?
//                                       formatDeliverySlot({
//     "from": state.ordersList[index].pickupSlot?.from??"",
//     "to": state.ordersList[index].pickupSlot?.to??"",
//     "day":state.ordersList[index].pickupSlot?.day??""
//   }):                                    formatDeliverySlot({
//     "from": state.ordersList[index].deliverySlot?.from??"",
//     "to": state.ordersList[index].deliverySlot?.to??"",
//     "day":state.ordersList[index].deliverySlot?.day??""
//   }),
                                        
//                                         status: state.ordersList[index].status,
//                                         isDropoff: state.ordersList[index].status=="pickupScheduled"?false:true,
//                                         isQuickOrder:  state.ordersList[index].type=="oneTapOrder"?true:false,
                                       
//                                         // notes: 'Deliver to reception.',
//                                       );
//                                     });
//                               },
//                             ),
//                           ],
//                         ),
//                       )),
//                 ],
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
//   String formatDeliverySlot(Map<String, dynamic> deliverySlot) {
//   final from = DateTime.parse(deliverySlot['from']).toLocal();
//   final to = DateTime.parse(deliverySlot['to']).toLocal();

//   final now = DateTime.now();
//   String dayLabel;

//   // Check if it's today or tomorrow
//   if (from.year == now.year &&
//       from.month == now.month &&
//       from.day == now.day) {
//     dayLabel = "Today";
//   } else if (from.year == now.year &&
//       from.month == now.month &&
//       from.day == now.day + 1) {
//     dayLabel = "Tomorrow";
//   } else {
//     // Fallback to weekday name
//     dayLabel = DateFormat('EEEE').format(from);
//   }

//   // Format time range
//   final timeFormat = DateFormat('h:mm a');
//   final fromTime = timeFormat.format(from);
//   final toTime = timeFormat.format(to);

//   return "$dayLabel, $fromTime – $toTime";
// }

 

//   Widget _scrollableContainer() {
//     return ValueListenableBuilder<bool>(
//       valueListenable: isScrolling,
//       builder: (context, scrolling, child) {
//         return AnimatedOpacity(
//           opacity: scrolling ? 0.0 : 1.0,
//           duration: const Duration(milliseconds: 200),
//           child: Padding(
//             padding: EdgeInsets.only(
//               top: 43.h,
//             ),
//             child: Container(
//               width: 100.w,
//               height: 100.h,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(16.dp),
//                   topRight: Radius.circular(16.dp),
//                 ),
//                 gradient: const LinearGradient(
//                   colors: [
//                     AppColors.lightGrey1,
//                     AppColors.neutral50,
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
