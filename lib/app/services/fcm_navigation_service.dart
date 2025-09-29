import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:spinners_driver/app/app_router/app_router.dart';
import 'package:spinners_driver/app/constants/storage_constants.dart';
import 'package:spinners_driver/app/services/local_storage_service.dart';

class FCMNavigationService {
  init(RemoteMessage message, bool isForegroundNoti) {
    var bottomNavigationTabIndex = 0;

    final orderId = message.data['orderId'];
    final damageReportId = message.data['damageReportId'];
    log('🔔 FCM Message Data: ${message.data}', name: 'FCM');
    log('orderId: $orderId', name: 'FCM');
    log('damageReportId: $damageReportId', name: 'FCM');
    if(orderId != null) {
      bottomNavigationTabIndex = 1;
    }

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
    navigate(bottomNavigationTabIndex, isForegroundNoti,orderId: orderId, damageReportId: damageReportId);
  }

  navigate(int bottomNavigationTabIndex,
      bool isForegroundNotif,{String? orderId, String? damageReportId}) {
        String? accessToken = LocalStorage.getString(StorageKey.accessToken);
    if (isForegroundNotif) {
      if(accessToken == null) {
        AppRouter.instance
        .pushAndPopUntil(SplashRoute(
          orderId: orderId,
          isFromNotification: true,
          bottomNavigationTabIndex: bottomNavigationTabIndex,
        ), predicate: (route) => false);
        return;
      }
      AppRouter.instance
        .pushAndPopUntil(AppBottomNavigationRoute(selectedIndex: bottomNavigationTabIndex,isFromNotification: true,orderId: orderId,
          ), predicate: (route) => false);
    } else {
      AppRouter.instance
        .pushAndPopUntil(SplashRoute(
          orderId: orderId,
          isFromNotification: true,
          bottomNavigationTabIndex: bottomNavigationTabIndex,
        ), predicate: (route) => false);
    }
  }
}
