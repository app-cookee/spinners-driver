// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AccountScreen]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute({List<PageRouteInfo>? children})
      : super(AccountRoute.name, initialChildren: children);

  static const String name = 'AccountRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AccountScreen();
    },
  );
}

/// generated route for
/// [AppBottomNavigationView]
class AppBottomNavigationRoute
    extends PageRouteInfo<AppBottomNavigationRouteArgs> {
  AppBottomNavigationRoute({
    Key? key,
    required int selectedIndex,
    List<PageRouteInfo>? children,
  }) : super(
          AppBottomNavigationRoute.name,
          args: AppBottomNavigationRouteArgs(
            key: key,
            selectedIndex: selectedIndex,
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
      );
    },
  );
}

class AppBottomNavigationRouteArgs {
  const AppBottomNavigationRouteArgs({this.key, required this.selectedIndex});

  final Key? key;

  final int selectedIndex;

  @override
  String toString() {
    return 'AppBottomNavigationRouteArgs{key: $key, selectedIndex: $selectedIndex}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AppBottomNavigationRouteArgs) return false;
    return key == other.key && selectedIndex == other.selectedIndex;
  }

  @override
  int get hashCode => key.hashCode ^ selectedIndex.hashCode;
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
/// [NormalOrderScreen]
class NormalOrderRoute extends PageRouteInfo<void> {
  const NormalOrderRoute({List<PageRouteInfo>? children})
      : super(NormalOrderRoute.name, initialChildren: children);

  static const String name = 'NormalOrderRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NormalOrderScreen();
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
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingScreen();
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
/// [OrderSuccessScreen]
class OrderSuccessRoute extends PageRouteInfo<void> {
  const OrderSuccessRoute({List<PageRouteInfo>? children})
      : super(OrderSuccessRoute.name, initialChildren: children);

  static const String name = 'OrderSuccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OrderSuccessScreen();
    },
  );
}

/// generated route for
/// [OrdersScreen]
class OrdersRoute extends PageRouteInfo<void> {
  const OrdersRoute({List<PageRouteInfo>? children})
      : super(OrdersRoute.name, initialChildren: children);

  static const String name = 'OrdersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OrdersScreen();
    },
  );
}

/// generated route for
/// [OtpScreen]
class OtpRoute extends PageRouteInfo<OtpRouteArgs> {
  OtpRoute({
    Key? key,
    required String referralCode,
    required String phoneNumber,
    required String countryCode,
    List<PageRouteInfo>? children,
  }) : super(
          OtpRoute.name,
          args: OtpRouteArgs(
            key: key,
            referralCode: referralCode,
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
        referralCode: args.referralCode,
        phoneNumber: args.phoneNumber,
        countryCode: args.countryCode,
      );
    },
  );
}

class OtpRouteArgs {
  const OtpRouteArgs({
    this.key,
    required this.referralCode,
    required this.phoneNumber,
    required this.countryCode,
  });

  final Key? key;

  final String referralCode;

  final String phoneNumber;

  final String countryCode;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, referralCode: $referralCode, phoneNumber: $phoneNumber, countryCode: $countryCode}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OtpRouteArgs) return false;
    return key == other.key &&
        referralCode == other.referralCode &&
        phoneNumber == other.phoneNumber &&
        countryCode == other.countryCode;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      referralCode.hashCode ^
      phoneNumber.hashCode ^
      countryCode.hashCode;
}

/// generated route for
/// [QuickOrderDetailScreen]
class QuickOrderDetailRoute extends PageRouteInfo<QuickOrderDetailRouteArgs> {
  QuickOrderDetailRoute({
    Key? key,
    required String orderId,
    List<PageRouteInfo>? children,
  }) : super(
          QuickOrderDetailRoute.name,
          args: QuickOrderDetailRouteArgs(key: key, orderId: orderId),
          initialChildren: children,
        );

  static const String name = 'QuickOrderDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QuickOrderDetailRouteArgs>();
      return QuickOrderDetailScreen(key: args.key, orderId: args.orderId);
    },
  );
}

class QuickOrderDetailRouteArgs {
  const QuickOrderDetailRouteArgs({this.key, required this.orderId});

  final Key? key;

  final String orderId;

  @override
  String toString() {
    return 'QuickOrderDetailRouteArgs{key: $key, orderId: $orderId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! QuickOrderDetailRouteArgs) return false;
    return key == other.key && orderId == other.orderId;
  }

  @override
  int get hashCode => key.hashCode ^ orderId.hashCode;
}

/// generated route for
/// [QuickOrderScreen]
class QuickOrderScreenRoute extends PageRouteInfo<void> {
  const QuickOrderScreenRoute({List<PageRouteInfo>? children})
      : super(QuickOrderScreenRoute.name, initialChildren: children);

  static const String name = 'QuickOrderScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const QuickOrderScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}

/// generated route for
/// [WalletScreen]
class WalletRoute extends PageRouteInfo<void> {
  const WalletRoute({List<PageRouteInfo>? children})
      : super(WalletRoute.name, initialChildren: children);

  static const String name = 'WalletRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WalletScreen();
    },
  );
}
