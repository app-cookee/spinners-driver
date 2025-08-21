// import 'package:auto_route/auto_route.dart';
// import 'package:dotted_border/dotted_border.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:spinners_driver/app/theme/app_colors.dart';
// import 'package:spinners_driver/app/theme/app_typography.dart';
// import 'package:spinners_driver/src/presentation/constants/app_images.dart';
// import 'package:spinners_driver/src/presentation/utils/no_glow_scroll_behaviour.dart';
// import 'package:spinners_driver/src/presentation/views/orders/widgets/ordered_card.dart';
// import 'package:spinners_driver/src/presentation/views/orders/widgets/orders_tab_switcher.dart';
// import 'package:the_responsive_builder/the_responsive_builder.dart';

// // enum OrderStatus {
// //   accepted,
// //   paymentPending,
// //   pickedUp,
// //   pickupScheduled,
// //   recieved,
// //   processing,
// //   readyForDelivery,
// //   cancelled,
// //   delivered,
// // }

// // String statusToString(OrderStatus status) => status.name;

// @RoutePage()
// class OrdersScreen extends StatefulWidget {
//   const OrdersScreen({super.key});

//   @override
//   State<OrdersScreen> createState() => _OrdersScreenState();
// }

// class _OrdersScreenState extends State<OrdersScreen> {
// //   final _currentOrdersStatuses = [
// //     OrderStatus.accepted,
// //     OrderStatus.pickedUp,
// //     OrderStatus.paymentPending,
// //     OrderStatus.pickupScheduled,
// //     OrderStatus.recieved,
// //     OrderStatus.processing,
// //     OrderStatus.readyForDelivery,
// //   ];

//   final ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);
// //   final int _itemsPerPage = 5;
//   final ScrollController _scrollController = ScrollController();

// //   final _pastOrdersStatuses = [
// //     OrderStatus.cancelled,
// //     OrderStatus.delivered,
// //   ];

//   @override
//   void initState() {
//     super.initState();
//     // _fetchOrders(_currentOrdersStatuses); // Default: Current Orders
//     //     _scrollController.addListener(() {
//     //    if (_scrollController.position.pixels >=
//     //       _scrollController.position.maxScrollExtent - 200) {
//     //     _loadMoreItems();
//     //   }

//     // });
//   }

//   // void _fetchOrders(List<OrderStatus> statuses) {
//   //   final statusStrings = statuses.map(statusToString).toList();

//   //   context.read<OrderBloc>().add(
//   //         OrderEvent.getOrdersList(
//   //           limit: _itemsPerPage,
//   //           skip: 0,
//   //           status: statusStrings.join(','),
//   //         ),
//   //       );
//   // }

// //       void _loadMoreItems() {
// //     final orderState = context.read<OrderBloc>().state;

// //     // Check if we're already loading or if there are no more items to load
// //     if (orderState.isLoadingMore || !orderState.hasMore) {
// //       return;
// //     }
// //  // Get the current statuses based on selected tab
// //     final currentStatuses = selectedIndexNotifier.value == 0
// //         ? _currentOrdersStatuses
// //         : _pastOrdersStatuses;

// //             // Convert to status strings
// //     final statusStrings = currentStatuses.map(statusToString).toList();
// //     final statusString = statusStrings.join(',');

// //     // Use the LoadMoreOther event instead
// //     context.read<OrderBloc>().add(OrderEvent.paginateOrdersList(skip: orderState.ordersList.length, limit: _itemsPerPage,status: statusString
// // ));

// //   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Stack(children: [
//           Positioned(
//             top: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               height: 30.h,
//               width: 100.w,
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                     AppColors.primaryColor.withValues(alpha: 0.2),
//                     AppColors.gradientbg.withValues(alpha: 0)
//                   ])),
//             ),
//           ),
//           Positioned(
//             top: 0,
//             right: 0,
//             left: 0,
//             child: Image.asset(
//               AppImages.bubbles,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Positioned(
//             top: 66.dp,
//             left: 16.dp,
//             right: 16.dp,
//             bottom: 8.dp,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Pickups",
//                     style: AppTypography.sfProRoundedSemiBold.copyWith(
//                         fontSize: 24.dp, color: AppColors.primary950)),
//                         Gap(8.dp),
//                          Text(  "You have 6 pickups today.  2 are Express",
//                     // "#SPN${orderListItem.refId.toString()}",
//                       style: AppTypography.sfProRoundedMedium
//                           .copyWith(fontSize: 14.dp, color: AppColors.textGrey)),
//                 Gap(16.dp),

//                 OrdersTabSwitcher(
//                   selectedIndexNotifier: selectedIndexNotifier,
//                   onTabChanged: (index) {
//                     // if (index == 0) {
//                     //   _fetchOrders(_currentOrdersStatuses);
//                     // } else {
//                     //   _fetchOrders(_pastOrdersStatuses);
//                     // }
//                   },
//                 ),
//                 Gap(12.dp),
//                 // BlocBuilder<OrderBloc, OrderState>(
//                 //   builder: (context, state) {
//                 // if(state.getOrderListStatus is StatusLoading||state.getOrderListStatus is StatusInitial){
//                 //   return OrdersPlaceholder();
//                 // }
//                 // if(state.ordersList.isEmpty){
//                 //   return Padding(
//                 //     padding:EdgeInsetsGeometry.only(top: 15.h),
//                 //     child: Center(child: EmptyPlaceholder(message: "No Orders",),),
//                 //   );
//                 // }

//                 // return
//                 Expanded(
//                   child: ScrollConfiguration(
//                     behavior: NoGlowScrollBehavior(),
//                     child: ListView.builder(
//                       controller: _scrollController,
//                       itemCount: 5,
//                       //  state.ordersList.length + (state.isLoadingMore ? 1 : 0),
//                       padding: EdgeInsets.only(top: 0, bottom: 10.h),
//                       itemBuilder: (context, index) {
//                         //     if (index == state.ordersList.length) {
//                         //   return SpinKitCircle(
//                         //           color: AppColors.primaryColor,
//                         //         );
//                         // }

//                         return const OrderedCard(pickupStatus: "Inprogress",type: "normal",
//                           trailingButton: QuickOrderButton(),
//                           orderId: "1234",
//                           services: [
//                             "Green (Clean & Press)",
//                             "Pink (Bed & Bath)"
//                           ],
//                           // orderListItem: state.ordersList[index],
//                         );
//                       },
//                     ),
//                   ),
//                 )
//                 //   },
//                 // )
//               ],
//             ),
//           ),
//         ]));
//   }
// }

// class QuickOrderButton extends StatelessWidget {
//   const QuickOrderButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const gradient =  LinearGradient(
//       colors: [
//         Color(0xFF6A61F3),
//         Color(0xFF43D995),
//       ],
//     );

//     return DottedBorder(
//       options: RoundedRectDottedBorderOptions(
//         padding: EdgeInsets.zero,
//         borderPadding: EdgeInsets.zero,
//         radius: Radius.circular(6.dp),
//         dashPattern: const [3, 2],
//         gradient: gradient,
//         strokeWidth: 1.dp,
//       ),
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 8.dp, vertical: 6.dp),
//         decoration: BoxDecoration(
//           color: const Color(0xFFFFF4DE),
//           borderRadius: BorderRadius.circular(6.dp),
//           gradient: const LinearGradient(
//             colors: [Color(0xFFEFEEFF), Color(0xFFEFFFEE)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Image.asset(
//               AppImages.zip,
//               height: 16.dp,
//               width: 16.dp,
//             ),
//             SizedBox(width: 2.dp),
//             // Gradient Text
//             Text(
//               "Quick Order",
//               style: AppTypography.sfProRoundedSemiBold.copyWith(
//                 fontSize: 10,
//                 color: AppColors.secondary950,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
