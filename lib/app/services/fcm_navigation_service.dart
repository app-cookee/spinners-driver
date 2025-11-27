import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:spinners_driver/app/app_router/app_router.dart';
import 'package:spinners_driver/app/constants/storage_constants.dart';
import 'package:spinners_driver/app/services/local_storage_service.dart';

class FCMNavigationService {
  init(RemoteMessage message, bool isForegroundNoti) {
    var bottomNavigationTabIndex = 0;

    final orderId = message.data['orderId'];
    final deliveryDriver = message.data['deliveryDriver'];
    final status = message.data['status'];
    final pickupDriver = message.data['pickupDriver'];
    log('🔔 FCM Message Data: ${message.data}', name: 'FCM');
    log('orderId: $orderId', name: 'FCM');
    log('deliveryDriver: $deliveryDriver', name: 'FCM');
    log('status: $status', name: 'FCM');
    log('pickupDriver: $pickupDriver', name: 'FCM');
    if(orderId != null) {
      bottomNavigationTabIndex = 1;
    }
    navigate(bottomNavigationTabIndex, isForegroundNoti,orderId: orderId, deliveryDriver: deliveryDriver, status: status, pickupDriver: pickupDriver);
  }

  navigate(int bottomNavigationTabIndex,
      bool isForegroundNotif,{String? orderId, String? deliveryDriver, String? status, String? pickupDriver}) {
        String? accessToken = LocalStorage.getString(StorageKey.accessToken);
    if (isForegroundNotif) {
      if(accessToken == null) {
        AppRouter.instance
        .pushAndPopUntil(SplashRoute(
          orderId: orderId,
          isFromNotification: true,
          bottomNavigationTabIndex: bottomNavigationTabIndex,
          pickupDriver: pickupDriver,
          status: status,
          deliveryDriver: deliveryDriver,
        ), predicate: (route) => false);
        return;
      }
      AppRouter.instance
        .pushAndPopUntil(AppBottomNavigationRoute(selectedIndex: bottomNavigationTabIndex,isFromNotification: true,orderId: orderId,
        pickupDriver: pickupDriver,
          status: status,
          deliveryDriver: deliveryDriver,
          ), predicate: (route) => false);
    } else {
      AppRouter.instance
        .pushAndPopUntil(SplashRoute(
          orderId: orderId,
          isFromNotification: true,
          bottomNavigationTabIndex: bottomNavigationTabIndex,
          pickupDriver: pickupDriver,
          status: status,
          deliveryDriver: deliveryDriver,
        ), predicate: (route) => false);
    }
  }
}
