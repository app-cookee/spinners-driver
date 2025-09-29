import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/app_router/app_router.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/network_bloc/network_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/home/home_view.dart';
import 'package:spinners_driver/src/presentation/views/orders/order_screen.dart';
import 'package:spinners_driver/src/presentation/views/profile/account_screen.dart';
import 'package:spinners_driver/src/presentation/views/widgets/custom_dialogue_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/no_network_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class AppBottomNavigationView extends StatefulWidget {
  const AppBottomNavigationView({super.key, required this.selectedIndex,this.isFromNotification = false,this.orderId});
  final int selectedIndex;
  final bool isFromNotification;
  final String? orderId;
  @override
  State<AppBottomNavigationView> createState() =>
      _AppBottomNavigationViewState();
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
  late List<Widget> screens;

  @override
  void initState() {
    selectedIndex.value = widget.selectedIndex;
    screens = [
    const HomeView(),
    const OrderScreen(),
    const AccountScreen(),
  ];
  //WHEN THERE IS AN ORDER ID, NAVIGATE TO ORDER DETAILS
    if (widget.orderId != null && widget.isFromNotification) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.router.push(OrderDetailRoute(
            orderId: widget.orderId!));
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;

        if (selectedIndex.value != 0) {
          selectedIndex.value = 0;
          return;
        }
        final shouldPop = await _showExitConfirmationDialog(context);
        if (shouldPop && mounted) {
          SystemNavigator.pop();
        }
      },
      child: BlocBuilder<NetworkBloc, NetworkState>(
        builder: (context, state) {
          return Scaffold(
              //backgroundColor: AppColors.transparent,
              resizeToAvoidBottomInset: false,
              extendBody: true,
              bottomNavigationBar: bottomNavBar(),
              body: _buildBody(state));
        },
      ),
    );
  }

    Widget _buildBody(NetworkState state) {
    if (state == const NetworkState.success()) {
      return _buildBottomNavigationPages();
    } else if (state == const NetworkState.failure()) {
      return const Center(
        child: NoNetworkWidget(),
      );
    } else {
      return const SizedBox();
    }
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

  Future<dynamic> _showExitConfirmationDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => CustomDialogueWidget(
        title: 'Are you sure you want to exit?',
        content: 'Are you sure you want to exit from spinners driver app?',
        confirmText: 'Exit',
        onCancel: () {
          Navigator.of(context).pop(false);
        },
        onConfirm: () {
          Navigator.of(context).pop(true);
        },
      ),
    );
  }

  Widget bottomNavBar() {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withValues(alpha: .10),
                offset: const Offset(0, 0),
                blurRadius: 96,
                spreadRadius: 0.0,
              )
            ],
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
                        builder:
                            (BuildContext context, int value, Widget? child) {
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
                                  style:
                                      AppTypography.sfProRoundedMedium.copyWith(
                                    color: selectedIndex.value == index
                                        ? AppColors.primaryColor
                                        : AppColors.textGrey,
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
