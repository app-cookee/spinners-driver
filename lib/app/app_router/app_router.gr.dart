// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AppBottomNavigationView]
class AppBottomNavigationRoute
    extends PageRouteInfo<AppBottomNavigationRouteArgs> {
  AppBottomNavigationRoute({
    Key? key,
    required int selectedIndex,
    bool isFromNotification = false,
    String? orderId,
    String? pickupDriver,
    String? status,
    String? deliveryDriver,
    List<PageRouteInfo>? children,
  }) : super(
          AppBottomNavigationRoute.name,
          args: AppBottomNavigationRouteArgs(
            key: key,
            selectedIndex: selectedIndex,
            isFromNotification: isFromNotification,
            orderId: orderId,
            pickupDriver: pickupDriver,
            status: status,
            deliveryDriver: deliveryDriver,
          ),
          initialChildren: children,
        );

  static const String name = 'AppBottomNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AppBottomNavigationRouteArgs>();
      return AppBottomNavigationView(
        key: args.key,
        selectedIndex: args.selectedIndex,
        isFromNotification: args.isFromNotification,
        orderId: args.orderId,
        pickupDriver: args.pickupDriver,
        status: args.status,
        deliveryDriver: args.deliveryDriver,
      );
    },
  );
}

class AppBottomNavigationRouteArgs {
  const AppBottomNavigationRouteArgs({
    this.key,
    required this.selectedIndex,
    this.isFromNotification = false,
    this.orderId,
    this.pickupDriver,
    this.status,
    this.deliveryDriver,
  });

  final Key? key;

  final int selectedIndex;

  final bool isFromNotification;

  final String? orderId;

  final String? pickupDriver;

  final String? status;

  final String? deliveryDriver;

  @override
  String toString() {
    return 'AppBottomNavigationRouteArgs{key: $key, selectedIndex: $selectedIndex, isFromNotification: $isFromNotification, orderId: $orderId, pickupDriver: $pickupDriver, status: $status, deliveryDriver: $deliveryDriver}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AppBottomNavigationRouteArgs) return false;
    return key == other.key &&
        selectedIndex == other.selectedIndex &&
        isFromNotification == other.isFromNotification &&
        orderId == other.orderId &&
        pickupDriver == other.pickupDriver &&
        status == other.status &&
        deliveryDriver == other.deliveryDriver;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      selectedIndex.hashCode ^
      isFromNotification.hashCode ^
      orderId.hashCode ^
      pickupDriver.hashCode ^
      status.hashCode ^
      deliveryDriver.hashCode;
}

/// generated route for
/// [CashSettlementHistoryScreen]
class CashSettlementHistoryRoute extends PageRouteInfo<void> {
  const CashSettlementHistoryRoute({List<PageRouteInfo>? children})
      : super(CashSettlementHistoryRoute.name, initialChildren: children);

  static const String name = 'CashSettlementHistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CashSettlementHistoryScreen();
    },
  );
}

/// generated route for
/// [DeliveryOrderDetailScreen]
class DeliveryOrderDetailRoute
    extends PageRouteInfo<DeliveryOrderDetailRouteArgs> {
  DeliveryOrderDetailRoute({
    Key? key,
    required String orderId,
    required String refId,
    List<PageRouteInfo>? children,
  }) : super(
          DeliveryOrderDetailRoute.name,
          args: DeliveryOrderDetailRouteArgs(
            key: key,
            orderId: orderId,
            refId: refId,
          ),
          initialChildren: children,
        );

  static const String name = 'DeliveryOrderDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DeliveryOrderDetailRouteArgs>();
      return DeliveryOrderDetailScreen(
        key: args.key,
        orderId: args.orderId,
        refId: args.refId,
      );
    },
  );
}

class DeliveryOrderDetailRouteArgs {
  const DeliveryOrderDetailRouteArgs({
    this.key,
    required this.orderId,
    required this.refId,
  });

  final Key? key;

  final String orderId;

  final String refId;

  @override
  String toString() {
    return 'DeliveryOrderDetailRouteArgs{key: $key, orderId: $orderId, refId: $refId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DeliveryOrderDetailRouteArgs) return false;
    return key == other.key && orderId == other.orderId && refId == other.refId;
  }

  @override
  int get hashCode => key.hashCode ^ orderId.hashCode ^ refId.hashCode;
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [NotificationScreen]
class NotificationRoute extends PageRouteInfo<void> {
  const NotificationRoute({List<PageRouteInfo>? children})
      : super(NotificationRoute.name, initialChildren: children);

  static const String name = 'NotificationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NotificationScreen();
    },
  );
}

/// generated route for
/// [OrderDetailScreen]
class OrderDetailRoute extends PageRouteInfo<OrderDetailRouteArgs> {
  OrderDetailRoute({
    Key? key,
    required String orderId,
    List<PageRouteInfo>? children,
  }) : super(
          OrderDetailRoute.name,
          args: OrderDetailRouteArgs(key: key, orderId: orderId),
          initialChildren: children,
        );

  static const String name = 'OrderDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OrderDetailRouteArgs>();
      return OrderDetailScreen(key: args.key, orderId: args.orderId);
    },
  );
}

class OrderDetailRouteArgs {
  const OrderDetailRouteArgs({this.key, required this.orderId});

  final Key? key;

  final String orderId;

  @override
  String toString() {
    return 'OrderDetailRouteArgs{key: $key, orderId: $orderId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OrderDetailRouteArgs) return false;
    return key == other.key && orderId == other.orderId;
  }

  @override
  int get hashCode => key.hashCode ^ orderId.hashCode;
}

/// generated route for
/// [OrderScreen]
class OrderRoute extends PageRouteInfo<void> {
  const OrderRoute({List<PageRouteInfo>? children})
      : super(OrderRoute.name, initialChildren: children);

  static const String name = 'OrderRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OrderScreen();
    },
  );
}

/// generated route for
/// [OtpScreen]
class OtpRoute extends PageRouteInfo<OtpRouteArgs> {
  OtpRoute({
    Key? key,
    required String phoneNumber,
    required String countryCode,
    List<PageRouteInfo>? children,
  }) : super(
          OtpRoute.name,
          args: OtpRouteArgs(
            key: key,
            phoneNumber: phoneNumber,
            countryCode: countryCode,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OtpRouteArgs>();
      return OtpScreen(
        key: args.key,
        phoneNumber: args.phoneNumber,
        countryCode: args.countryCode,
      );
    },
  );
}

class OtpRouteArgs {
  const OtpRouteArgs({
    this.key,
    required this.phoneNumber,
    required this.countryCode,
  });

  final Key? key;

  final String phoneNumber;

  final String countryCode;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, phoneNumber: $phoneNumber, countryCode: $countryCode}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OtpRouteArgs) return false;
    return key == other.key &&
        phoneNumber == other.phoneNumber &&
        countryCode == other.countryCode;
  }

  @override
  int get hashCode =>
      key.hashCode ^ phoneNumber.hashCode ^ countryCode.hashCode;
}

/// generated route for
/// [PickUpDropoffHistoryScreen]
class PickUpDropoffHistoryRoute extends PageRouteInfo<void> {
  const PickUpDropoffHistoryRoute({List<PageRouteInfo>? children})
      : super(PickUpDropoffHistoryRoute.name, initialChildren: children);

  static const String name = 'PickUpDropoffHistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PickUpDropoffHistoryScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    Key? key,
    bool isFromNotification = false,
    int bottomNavigationTabIndex = 0,
    String? orderId,
    String? pickupDriver,
    String? status,
    String? deliveryDriver,
    List<PageRouteInfo>? children,
  }) : super(
          SplashRoute.name,
          args: SplashRouteArgs(
            key: key,
            isFromNotification: isFromNotification,
            bottomNavigationTabIndex: bottomNavigationTabIndex,
            orderId: orderId,
            pickupDriver: pickupDriver,
            status: status,
            deliveryDriver: deliveryDriver,
          ),
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SplashRouteArgs>(
        orElse: () => const SplashRouteArgs(),
      );
      return SplashScreen(
        key: args.key,
        isFromNotification: args.isFromNotification,
        bottomNavigationTabIndex: args.bottomNavigationTabIndex,
        orderId: args.orderId,
        pickupDriver: args.pickupDriver,
        status: args.status,
        deliveryDriver: args.deliveryDriver,
      );
    },
  );
}

class SplashRouteArgs {
  const SplashRouteArgs({
    this.key,
    this.isFromNotification = false,
    this.bottomNavigationTabIndex = 0,
    this.orderId,
    this.pickupDriver,
    this.status,
    this.deliveryDriver,
  });

  final Key? key;

  final bool isFromNotification;

  final int bottomNavigationTabIndex;

  final String? orderId;

  final String? pickupDriver;

  final String? status;

  final String? deliveryDriver;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, isFromNotification: $isFromNotification, bottomNavigationTabIndex: $bottomNavigationTabIndex, orderId: $orderId, pickupDriver: $pickupDriver, status: $status, deliveryDriver: $deliveryDriver}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SplashRouteArgs) return false;
    return key == other.key &&
        isFromNotification == other.isFromNotification &&
        bottomNavigationTabIndex == other.bottomNavigationTabIndex &&
        orderId == other.orderId &&
        pickupDriver == other.pickupDriver &&
        status == other.status &&
        deliveryDriver == other.deliveryDriver;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      isFromNotification.hashCode ^
      bottomNavigationTabIndex.hashCode ^
      orderId.hashCode ^
      pickupDriver.hashCode ^
      status.hashCode ^
      deliveryDriver.hashCode;
}
