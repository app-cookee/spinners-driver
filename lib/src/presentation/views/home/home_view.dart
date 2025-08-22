import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/src/application/dashboard_data_bloc/dashboard_data_bloc.dart';
import 'package:spinners_driver/src/presentation/utils/no_glow_scroll_behaviour.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/home_appbar.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/notifications/notifications.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/order_card.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/pickup_filter_tabs.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/todays_collected_cod.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/toggle_button.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late ScrollController _scrollController;
  ValueNotifier<bool> isScrolling = ValueNotifier(false);
  ValueNotifier<bool> hasNotifications = ValueNotifier(true);

  @override
  void initState() {
    super.initState();
    context.read<DashboardDataBloc>().add(const DashboardDataEvent.getDashboardData());
    _scrollController = ScrollController();

    // Add scroll listener to track scrolling state
    _scrollController.addListener(() {
      if (_scrollController.offset > 0 && !isScrolling.value) {
        isScrolling.value = true;
      } else if (_scrollController.offset <= 0 && isScrolling.value) {
        isScrolling.value = false;
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    isScrolling.dispose();
    hasNotifications.dispose();
    super.dispose();
  }

  ValueNotifier<int> nearestLocationNotifier = ValueNotifier(0);
  ValueNotifier<int> expressOnlyNotifier = ValueNotifier(0);
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

                  const HomeAppbar(),
                  _scrollableContainer(),
                  Padding(
                      padding: EdgeInsets.only(top: 13.h),
                      child: SingleChildScrollView(
                        controller: _scrollController,
                        child: Column(
                          children: [
                            Notifications(
                              remainingPickups: dashboardDataState.dashboardDataModel.remainingPickups,
                              remainingDeliveries: dashboardDataState.dashboardDataModel.remainingDeliveries,
                              completedPickups: dashboardDataState.dashboardDataModel.completedPickups,
                              completedDeliveries: dashboardDataState.dashboardDataModel.completedDeliveries,
                              onNotificationsChanged: (hasNotifs) {
                                hasNotifications.value = hasNotifs;
                              },
                            ),
                            Gap(16.dp),
                            const TodaysCollectedCOD(),
                            Padding(
                              padding: EdgeInsetsGeometry.symmetric(horizontal: 16.dp),
                              child: const PickupFilterTabs(),
                            ),
                            Gap(16.dp),
                            Padding(
                              padding: EdgeInsetsGeometry.symmetric(horizontal: 16.dp),
                              child: Row(
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
                                  ),
                                ],
                              ),
                            ),
                            ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 4,
                                shrinkWrap: true,
                                padding: EdgeInsets.only(top: 12.dp, left: 16.dp, right: 16.dp, bottom: 16.h),
                                primary: false,
                                itemBuilder: (context, index) {
                                  return const OrderCard(
                                    orderId: '12345',
                                    services: ['Clean & Press', 'Bed & Bath'],
                                    time: 'Today, 4:00 PM – 6:00 PM',
                                    status: 'In Progress',
                                    isDropoff: false,
                                    isQuickOrder: true,
                                    isService: false, 
                                    // notes: 'Deliver to reception.',
                                  );
                                }),
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

  Widget _scrollableContainer() {
    return ValueListenableBuilder<bool>(
        valueListenable: hasNotifications,
        builder: (context, hasNotifs, child) {
          // Use ValueListenableBuilder to conditionally show/hide the container
          return ValueListenableBuilder<bool>(
            valueListenable: isScrolling,
            builder: (context, scrolling, child) {
              return AnimatedOpacity(
                opacity: scrolling ? 0.0 : 1.0,
                duration: const Duration(milliseconds: 200),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: hasNotifs ? 59.h : 49.h,
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
        });
  }
}
