import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
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

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  ValueNotifier<int> nearestLocationNotifier = ValueNotifier(0);
  ValueNotifier<int> expressOnlyNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
            const HomeAppbar(),
            Padding(
                padding: EdgeInsets.only(top: 9.h),
                child: SingleChildScrollView(
                  primary: true,
                  child: Column(
                    children: [
                      const Notifications(),
                      Gap(16.dp),
                      Container(
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
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            children: [
                              const TodaysCollectedCOD(),
                              const PickupFilterTabs(),
                              Gap(16.dp),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ToggleButton(
                                    isToggled: nearestLocationNotifier,
                                    label: 'Nearest Location',
                                  ),
                                  ToggleButton(
                                    isToggled: expressOnlyNotifier,
                                    label: 'Express Only',
                                  ),
                                ],
                              ),
                              ListView.builder(
                                  itemCount: 4,
                                  shrinkWrap: true,
                                  padding: EdgeInsets.only(top: 12.dp, bottom: 16.h, left: 16.dp, right: 16.dp),
                                  primary: false,
                                  itemBuilder: (context, index) {
                                    return const OrderCard(
                                      orderId: '12345',
                                      services: ['Green (Clean & Press)', 'Pink (Bed & Bath)'],
                                      time: 'Today, 4:00 PM – 6:00 PM',
                                      status: 'In Progress',
                                      isDropoff: false,
                                      isQuickOrder: true,
                                      isService: false,
                                      notes: 'Deliver to reception.',
                                    );
                                  })
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
