import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/order_card.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/pickup_filter_tabs.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/toggle_button.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

enum OrderStatus { pickupScheduled, readyForDelivery, pickedUp, delivered }

String statusToString(OrderStatus status) => status.name;

@RoutePage()
class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final _allOrders = [
    OrderStatus.pickupScheduled,
    OrderStatus.readyForDelivery,
    OrderStatus.pickedUp,
    OrderStatus.delivered,
  ];
  final _pickup = [
    OrderStatus.pickupScheduled,
  ];
  final _dropOff = [
    OrderStatus.readyForDelivery,
  ];

  // late ScrollController _scrollController;

  final ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);
  ValueNotifier<int> nearestLocationNotifier = ValueNotifier(0);
  ValueNotifier<int> expressOnlyNotifier = ValueNotifier(0);

  // Keep track of current filter
  List<OrderStatus> currentOrderFilter = [];
  // Store location coordinates using ValueNotifier
  ValueNotifier<double?> latitudeNotifier = ValueNotifier<double?>(null);
  ValueNotifier<double?> longitudeNotifier = ValueNotifier<double?>(null);

  @override
  void initState() {
    currentOrderFilter = _allOrders;
    _fetchOrders(currentOrderFilter);
    nearestLocationNotifier.addListener(_onToggleChanged);
    expressOnlyNotifier.addListener(_onToggleChanged);

    super.initState();
  }

  void _onToggleChanged() {
    bool isNearestLocationEnabled = nearestLocationNotifier.value == 1;

    if (!isNearestLocationEnabled) {
      // Reset stored location when toggle is OFF
      latitudeNotifier.value = null;
      longitudeNotifier.value = null;
      _fetchOrders(currentOrderFilter);
    }

    // Express filter always applies immediately
    if (expressOnlyNotifier.value == 1) {
      _fetchOrders(currentOrderFilter);
    }
  }

  void _onLocationFetched(double? lat, double? lng) {
    latitudeNotifier.value = lat;
    longitudeNotifier.value = lng;

    if (nearestLocationNotifier.value == 1) {
      // Trigger fetch only after location is available
      _fetchOrders(currentOrderFilter);
    }
  }

  void _fetchOrders(List<OrderStatus> statuses) {
    final statusStrings = statuses.map(statusToString).toList();
    bool isNearestLocationEnabled = nearestLocationNotifier.value == 1;
    bool isExpressOnlyEnabled = expressOnlyNotifier.value == 1;
    // log(isExpressOnlyEnabled.toString());

    context.read<OrderBloc>().add(
          OrderEvent.getOrdersList(
              limit: 1000,
              skip: 0,
              filter: statusStrings.join(','),
              expressOnly: isExpressOnlyEnabled,
              latitude: latitudeNotifier.value,
              longitude: longitudeNotifier.value),
        );
  }

  @override
  void dispose() {
    // _scrollController.dispose();
    
    nearestLocationNotifier.removeListener(_onToggleChanged);
    expressOnlyNotifier.removeListener(_onToggleChanged);
    nearestLocationNotifier.dispose();
    expressOnlyNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 30.h,
            width: 100.w,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  AppColors.primaryColor.withValues(alpha: 0.2),
                  AppColors.gradientbg.withValues(alpha: 0)
                ])),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Image.asset(
            AppImages.bubbles,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 66.dp,
          left: 16.dp,
          right: 16.dp,
          bottom: 8.dp,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Orders",
                  style: AppTypography.sfProRoundedSemiBold
                      .copyWith(fontSize: 24.dp, color: AppColors.primary950)),
              Gap(16.dp),
              PickupFilterTabs(
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
              Gap(18.dp),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ToggleButton(
                    isToggled: nearestLocationNotifier,
                    label: 'Nearest Location',
                  ),
                  Gap(12.dp),
                  ToggleButton(
                    isToggled: expressOnlyNotifier,
                    label: 'Express Only',
                     onLocationFetched: _onLocationFetched
                  ),
                ],
              ),
              Gap(9.dp),
              BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: state.ordersList.length,
                        shrinkWrap: true,
                        padding: EdgeInsets.only(
                            top: 9.dp, bottom: ((88 / 812) * 100).h),
                        primary: false,
                        itemBuilder: (context, index) {
                          return OrderCard(isExpressService:  state.ordersList[index].expressService,
                                      address:  state.ordersList[index].selectedAddress?.place??"",
                                     
                                        orderId: '#SPN${state.ordersList[index].refId}',
                                    
                                        time:state.ordersList[index].status=="pickupScheduled"?
                                      formatDeliverySlot({
    "from": state.ordersList[index].pickupSlot?.from??"",
    "to": state.ordersList[index].pickupSlot?.to??"",
    "day":state.ordersList[index].pickupSlot?.day??""
  }):                                    formatDeliverySlot({
    "from": state.ordersList[index].deliverySlot?.from??"",
    "to": state.ordersList[index].deliverySlot?.to??"",
    "day":state.ordersList[index].deliverySlot?.day??""
  }),
                                        
                                        status: state.ordersList[index].status,
                                        isDropoff: state.ordersList[index].status=="pickupScheduled"?false:true,
                                        isQuickOrder:  state.ordersList[index].type=="oneTapOrder"?true:false,
                                       
                                        // notes: 'Deliver to reception.',
                                      );
                        }),
                  );
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
  String formatDeliverySlot(Map<String, dynamic> deliverySlot) {
  final from = DateTime.parse(deliverySlot['from']).toLocal();
  final to = DateTime.parse(deliverySlot['to']).toLocal();

  final now = DateTime.now();
  String dayLabel;

  // Check if it's today or tomorrow
  if (from.year == now.year &&
      from.month == now.month &&
      from.day == now.day) {
    dayLabel = "Today";
  } else if (from.year == now.year &&
      from.month == now.month &&
      from.day == now.day + 1) {
    dayLabel = "Tomorrow";
  } else {
    // Fallback to weekday name
    dayLabel = DateFormat('EEEE').format(from);
  }

  // Format time range
  final timeFormat = DateFormat('h:mm a');
  final fromTime = timeFormat.format(from);
  final toTime = timeFormat.format(to);

  return "$dayLabel, $fromTime – $toTime";
}

}
