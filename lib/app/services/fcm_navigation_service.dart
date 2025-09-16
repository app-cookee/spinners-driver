import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:spinners_driver/app/app_router/app_router.dart';

class FCMNavigationService {
  init(RemoteMessage message, bool isForegroundNoti) {
    var bottomNavigationTabIndex = 0;
    var categoryTabIndex = 0;

    // String payload = '';

    // if (isForegroundNoti) {
    //   var notificationResponse =
    //       message.data['payload'] as NotificationResponse;
    //   payload = notificationResponse.payload.toString();
    // } else {
    //   payload = message.data['payload'];
    // }

    // if (payload == 'InterestReceived') {
    //   bottomNavigationTabIndex = 2;
    //   categoryTabIndex = 0;
    // } else if (payload == 'Profile') {
    //   bottomNavigationTabIndex = 1;
    // } else if (payload == 'ProfileImage') {
    //   bottomNavigationTabIndex = 4;
    // } else if (payload == 'KYC') {
    //   bottomNavigationTabIndex = 4;
    // } else if (payload == 'Chat') {
    //   bottomNavigationTabIndex = 3;
    // }
    navigate(bottomNavigationTabIndex, categoryTabIndex, isForegroundNoti);
  }

  navigate(int bottomNavigationTabIndex, int categoryTabIndex,
      bool isForegroundNotif) {
    if (isForegroundNotif) {
      AppRouter.instance
        .pushAndPopUntil(AppBottomNavigationRoute(selectedIndex: bottomNavigationTabIndex,isFromNotification: true), predicate: (route) => false);
      // Navigator.pushNamedAndRemoveUntil(navigatorKey.currentState!.context,
      //     RouterConstants.bottomNavRoute, (route) => false);

      // navigatorKey.currentState!.context.read<NavigationBloc>().add(
      //       NavigationEvent.tabChange(
      //         selectedIndex: bottomNavigationTabIndex,
      //         arguments: {
      //           'categoryIndex': categoryTabIndex,
      //           'subCategoryIndex': 0,
      //         },
      //       ),
      //     );
    } else {
      AppRouter.instance
        .pushAndPopUntil(SplashRoute(
          isFromNotification: true,
          bottomNavigationTabIndex: bottomNavigationTabIndex,
        ), predicate: (route) => false);
      // Navigator.pushAndRemoveUntil(
      //   navigatorKey.currentState!.context,
      //   MaterialPageRoute(
      //     builder: (context) => SplashScreen(
      //       isFromNotification: true,
      //       bottomNavigationTabIndex: bottomNavigationTabIndex,
      //       categoryTabIndex: categoryTabIndex,
      //     ),
      //   ),
      //   (route) => false,
      // );
    }
  }
}
