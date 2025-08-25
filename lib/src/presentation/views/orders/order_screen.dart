import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/order_card.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/pickup_filter_tabs.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/toggle_button.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

enum OrderStatus {
  pickupScheduled,
  readyForDelivery,

}

String statusToString(OrderStatus status) => status.name;



@RoutePage()
class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  ValueNotifier<int> nearestLocationNotifier = ValueNotifier(0);
  ValueNotifier<int> expressOnlyNotifier = ValueNotifier(0);
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
               PickupFilterTabs(onTabChanged:(index){},),
              Gap(18.dp),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ToggleButton(
                    isToggled: nearestLocationNotifier,
                    label: 'Nearest Location',
                  ),Gap(12.dp),
                  ToggleButton(
                    isToggled: expressOnlyNotifier,
                    label: 'Express Only',
                  ),
                ],
              ),
              Gap(9.dp),
              Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(
                      top: 9.dp,bottom: ((88/812)*100).h
                    ),
                    primary: false,
                    itemBuilder: (context, index) {
                      return const OrderCard(address: 'yhyh',
                        orderId: '12345',
                    
                        time: 'Today, 4:00 PM – 6:00 PM',
                        status: 'In Progress',
                        isDropoff: false,
                        isQuickOrder: true, isExpressService: false,
                        // isService: false,
                       
                      );
                    }),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
