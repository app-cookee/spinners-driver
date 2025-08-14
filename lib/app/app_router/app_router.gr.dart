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
