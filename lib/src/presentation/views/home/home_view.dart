import 'package:flutter/material.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/home_appbar.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/notifications/notifications.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/pickup_and_delivery_overview/pickup_and_delivery_overview.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child:   Stack(
          children: [
            const HomeAppbar(),
             Padding(
               padding: EdgeInsets.only(top: 9.h),
               child: Column(
                 children: [
                   const Notifications(),
                    const PickupAndDeliveryOverview(),
                 ],
               )),
              //  Padding(
              //     padding: EdgeInsets.only(top: 28.h),
              //    child: const PickupAndDeliveryOverview(),
              //  )
          ],
        ),
      ),
    );
  }
}
