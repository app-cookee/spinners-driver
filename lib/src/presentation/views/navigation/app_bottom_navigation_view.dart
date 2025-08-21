import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/home/home_view.dart';
import 'package:spinners_driver/src/presentation/views/orders/order_screen.dart';
import 'package:spinners_driver/src/presentation/views/profile/account_screen.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class AppBottomNavigationView extends StatefulWidget {
  const AppBottomNavigationView({super.key, required this.selectedIndex});
  final int selectedIndex;
  @override
  State<AppBottomNavigationView> createState() => _AppBottomNavigationViewState();
}

class _AppBottomNavigationViewState extends State<AppBottomNavigationView> {
  final PageStorageBucket bucket = PageStorageBucket();
  List<String> bottomNavLabels = ['Home', 'Orders', 'Account'];
  List<String> bottomNavIcons = [
    AppImages.homeIcon,
    AppImages.ordersIcon,
    AppImages.accountIcon,
  ];
  List<String> bottomNavIconsSelected = [
    AppImages.homeSelectedIcon,
    AppImages.ordersSelectedIcon,
    AppImages.accountSelectedIcon,
  ];

  final selectedIndex = ValueNotifier(0);
  List<Widget> screens = [
    const HomeView(),
    const OrderScreen(),
    const AccountScreen(),

    // const AccountScreen(),
  ];
  @override
  void initState() {
    selectedIndex.value = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: AppColors.transparent,
        resizeToAvoidBottomInset: false,
        extendBody: true,
        bottomNavigationBar: bottomNavBar(),
        body: _buildBottomNavigationPages());
  }

  Widget _buildBottomNavigationPages() {
    return SizedBox(
      width: 100.w,
      height: 100.h,
      child: ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (BuildContext context, int value, Widget? child) {
          return PageStorage(
            bucket: bucket,
            child: screens[selectedIndex.value],
          );
        },
      ),
    );
  }

  // Future<dynamic> _showExitConfirmationDialog(BuildContext context) {
  //   return showDialog(
  //     context: context,
  //     builder: (context) => CustomDialogueWidget(
  //       title: 'Are you sure you want to exit?',
  //       content: 'Are you sure you want to exit from actizo investments',
  //       confirmText: 'Exit',
  //       onCancel: () {
  //         Navigator.of(context).pop(false);
  //       },
  //       onConfirm: () {
  //         Navigator.of(context).pop(true);
  //       },
  //     ),
  //   );
  // }

  Widget bottomNavBar() {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration:  BoxDecoration(boxShadow:
          [BoxShadow(
                 color: AppColors.black.withValues(alpha: .10), 
             offset:const Offset(0, 0), blurRadius : 96,
           spreadRadius :0.0,

          )] ,
            color: AppColors.white,
          ),
          height: 88.dp,
          alignment: Alignment.bottomCenter,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              bottomNavIcons.length,
              (index) => IntrinsicWidth(
                child: InkWell(
                  onTap: () {
                    selectedIndex.value = index;
                  },
                  child: Stack(
                    children: [
                      ValueListenableBuilder(
                        valueListenable: selectedIndex,
                        builder: (BuildContext context, int value, Widget? child) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 100),
                            padding: EdgeInsets.symmetric(horizontal: 11.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                selectedIndex.value == index
                                    ? Image.asset(
                                        bottomNavIconsSelected[index],
                                        height: 24.dp,
                                        width: 24.dp,
                                        fit: BoxFit.cover,
                                      )
                                    : Image.asset(
                                        bottomNavIcons[index],
                                        height: 24.dp,
                                        width: 24.dp,
                                        fit: BoxFit.cover,
                                      ),
                                Gap(4.dp),
                                Text(
                                  bottomNavLabels[index],
                                  style: AppTypography.sfProRoundedMedium.copyWith(
                                    color: selectedIndex.value == index ? AppColors.primaryColor : AppColors.textGrey,
                                    fontSize: 12.sp,
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
