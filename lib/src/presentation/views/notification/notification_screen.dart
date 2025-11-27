import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:spinners_driver/app/app_router/app_router.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/auth_bloc/auth_bloc.dart';
import 'package:spinners_driver/src/application/dashboard_data_bloc/dashboard_data_bloc.dart';
import 'package:spinners_driver/src/presentation/views/widgets/common_header.dart';
import 'package:spinners_driver/src/presentation/views/widgets/empty_placeholder.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final int _itemsPerPage = 10;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _fetchNotifications();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        _loadMoreItems();
      }
    });
  }

  void _fetchNotifications() {
    context.read<DashboardDataBloc>().add(
          DashboardDataEvent.getNotificationsList(
            limit: _itemsPerPage,
            skip: 0,
          ),
        );
  }

  void _loadMoreItems() {
    final orderState = context.read<DashboardDataBloc>().state;
    if (orderState.isLoadingMore || !orderState.hasMore) {
      return;
    }
    context.read<DashboardDataBloc>().add(DashboardDataEvent.paginateNotificationsList(
        skip: orderState.notificationsList.length, limit: _itemsPerPage));
  }

  String _timeAgoDisplay(DateTime date) {
    final diff = DateTime.now().difference(date);
    final seconds = diff.inSeconds < 0 ? 0 : diff.inSeconds;
    final duration = Duration(seconds: seconds);

    if (duration.inMinutes < 60) return "${duration.inMinutes} min ago";
    if (duration.inHours < 24) return "${duration.inHours} hr ago";
    if (duration.inDays < 7) return "${duration.inDays} days ago";
    
    return DateFormat('dd MMM yyyy, hh:mm a').format(date);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CommonHeader(
            label: "Notifications",
            bottomPadding: 16.dp,
          ),
          Expanded(
            child: BlocBuilder<DashboardDataBloc, DashboardDataState>(
              builder: (context, state) {
                if (state.getNotificationsListStatus is StatusLoading &&
                    state.notificationsList.isEmpty) {
                  return const Center(child: CircularProgressIndicator());
                }

                final allNotifications = state.notificationsList;

                if (allNotifications.isEmpty) {
                  return const Center(
                    child: EmptyPlaceholder(message: "No notifications yet.",)
                  );
                }

                final now = DateTime.now();

                // === Group Notifications ===
                final newNotifications =
                    allNotifications.where((n) => n.read == false);

                final thisWeekNotifications = allNotifications.where((n) {
                  if (n.read && n.createdAt != '') {
                    final createdAt = DateTime.tryParse(n.createdAt);
                    return createdAt != null &&
                        createdAt
                            .isAfter(now.subtract(const Duration(days: 7)));
                  }
                  return false;
                });

                final previousNotifications = allNotifications.where((n) {
                  if (n.read && n.createdAt != '') {
                    final createdAt = DateTime.tryParse(n.createdAt);
                    return createdAt != null &&
                        createdAt
                            .isBefore(now.subtract(const Duration(days: 7)));
                  }
                  return false;
                });

                // === Build UI Sections ===
                List<Widget> sections = [];

                if (newNotifications.isNotEmpty) {
                  sections.addAll([
                    const SectionHeader(title: 'New'),
                    NotificationSection(
                      itemsPerPage: _itemsPerPage,
                      notifications: newNotifications
                          .map(
                            (n) => NotificationData(
                              title: n.title,
                              subtitle: n.description,
                              timeAgo: n.createdAt != ''
                                  ? _timeAgoDisplay(
                                      DateTime.parse(n.createdAt))
                                  : "Just now",
                              hasRedDot: true,
                              type: n.type,
                              orderType: n.order.type,
                              damageReportId: n.damageReportId,
                              orderId: n.orderId,
                              deliveryDriverId: n.order.assignedDeliveryDriverId,
                              orderStatus: n.order.status,
                              pickUpDriverId: n.order.assignedPickupDriverId,
                            ),
                          )
                          .toList(),
                    ),
                  ]);
                }

                if (thisWeekNotifications.isNotEmpty) {
                  sections.addAll([
                    const SectionHeader(title: 'This Week'),
                    NotificationSection(
                      itemsPerPage: _itemsPerPage,
                      notifications: thisWeekNotifications
                          .map(
                            (n) => NotificationData(
                              title: n.title,
                              subtitle: n.description,
                              timeAgo: n.createdAt != ''
                                  ? _timeAgoDisplay(
                                      DateTime.parse(n.createdAt))
                                  : "Recently",
                              hasRedDot: false,
                              type: n.type,
                              orderType: n.order.type,
                              damageReportId: n.damageReportId,
                              orderId: n.orderId,
                              deliveryDriverId: n.order.assignedDeliveryDriverId,
                              orderStatus: n.order.status,
                              pickUpDriverId: n.order.assignedPickupDriverId,
                            ),
                          )
                          .toList(),
                    ),
                  ]);
                }

                if (previousNotifications.isNotEmpty) {
                  sections.addAll([
                    const SectionHeader(title: 'Previous'),
                    NotificationSection(
                      itemsPerPage: _itemsPerPage,
                      notifications: previousNotifications
                          .map(
                            (n) => NotificationData(
                              title: n.title,
                              subtitle: n.description,
                              timeAgo: n.createdAt != ''
                                  ? _timeAgoDisplay(
                                      DateTime.parse(n.createdAt))
                                  : "Earlier",
                              hasRedDot: false,
                              type: n.type,
                              orderType: n.order.type,
                              damageReportId: n.damageReportId,
                              orderId: n.orderId,
                              deliveryDriverId: n.order.assignedDeliveryDriverId,
                              orderStatus: n.order.status,
                              pickUpDriverId: n.order.assignedPickupDriverId,
                            ),
                          )
                          .toList(),
                    ),
                  ]);
                }

                // === Combine All Sections ===
                return RefreshIndicator(
                  onRefresh: () async => _fetchNotifications(),
                  child: ListView(
                    controller: _scrollController,
                    padding: EdgeInsets.zero,
                    children: [
                      ...sections,
                      if (state.isLoadingMore)
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Center(child: CircularProgressIndicator()),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationSection extends StatelessWidget {
  final List<NotificationData> notifications;
  final int itemsPerPage;

  const NotificationSection({super.key, required this.notifications, required this.itemsPerPage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < notifications.length; i++) ...[
          NotificationItem(notification: notifications[i],itemsPerPage: itemsPerPage,),
          if (i < notifications.length - 1) // Add divider if not the last item
            Divider(color: AppColors.lightGrey, height: 1, thickness: 1),
        ],
      ],
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      decoration: BoxDecoration(
        color: AppColors.neutral50,
      ),
      padding: EdgeInsets.all(12.dp),
      child: Text(
        title,
        style: AppTypography.sfProRoundedSemiBold.copyWith(
          fontSize: 11.sp,
          color: AppColors.textGrey,
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final NotificationData notification;
  final int itemsPerPage;

  const NotificationItem({super.key, required this.notification, required this.itemsPerPage});

  @override
  Widget build(BuildContext context) {
    final driverId = context.read<AuthBloc>().state.appUser?.driverId;

final canView = 
    (notification.orderStatus == 'pickupScheduled' &&
        notification.pickUpDriverId == driverId) ||
    (notification.orderStatus == 'readyForDelivery' &&
        notification.deliveryDriverId == driverId);
    return Container(
      padding: EdgeInsets.all(16.0.dp),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (notification.hasRedDot) ...[
                Container(
                  width: 8.dp,
                  height: 8.dp,
                  margin: EdgeInsets.only(right: 4.dp),
                  decoration: const BoxDecoration(
                    color: AppColors.red1,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
              Expanded(
                child: Text(
                  notification.title,
                  style: AppTypography.sfProRoundedSemiBold.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.neutral950,
                  ),
                ),
              ),
            ],
          ),
          Gap(6.dp),
          Text(
            notification.subtitle,
            style: AppTypography.sfProRoundedRegular.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: AppColors.textGrey,
            ),
          ),
          if (canView) ...[
            Gap(6.dp),
            GestureDetector(
              onTap: () {
                if(notification.orderStatus == 'pickupScheduled' && notification.pickUpDriverId == driverId) {
                  context.router.push(OrderDetailRoute(
                orderId: notification.orderId ?? '',)).then((value) {
                  context.read<DashboardDataBloc>().add(
                  DashboardDataEvent.getNotificationsList(
                    limit: itemsPerPage,
                    skip: 0,
                  ),
                );
                },);
                } else if (notification.orderStatus == 'readyForDelivery' && notification.deliveryDriverId == driverId){
                    context.router.push(DeliveryOrderDetailRoute(
                      orderId: notification.orderId ?? '',refId: '')).then((value) {
                    context.read<DashboardDataBloc>().add(
                    DashboardDataEvent.getNotificationsList(
                      limit: itemsPerPage,
                      skip: 0,
                    ),
                  );
                  },);
                }
              },
              child: Text(
                notification.type == 'itemDamageUpdate' ? 'View Report'
                : 'View Order',
                style: AppTypography.sfProRoundedSemiBold.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.primaryColor500,
                ),
              ),
            ),
          ],
          Gap(8.dp),
          Text(
            notification.timeAgo,
            style: AppTypography.sfProRoundedMedium.copyWith(
              fontSize: 9.sp,
              color: AppColors.grey1Color,
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationData {
  final String title;
  final String subtitle;
  final String? type;
  final String? orderId;
  final String? damageReportId;
  final String? orderType;
  final String? orderStatus;
  final String? pickUpDriverId;
  final String? deliveryDriverId;

  final String timeAgo;
  final bool hasRedDot;

  NotificationData({
    required this.title,
    required this.subtitle,
    this.type,
    this.orderType,
    this.orderId,
    this.damageReportId,
    required this.timeAgo,
    this.hasRedDot = false,
    this.orderStatus,
    this.pickUpDriverId,
    this.deliveryDriverId,
  });
}
