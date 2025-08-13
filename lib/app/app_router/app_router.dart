import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spinners_driver/src/presentation/views/authentication/login_screen.dart';
import 'package:spinners_driver/src/presentation/views/authentication/otp_screen.dart';
import 'package:spinners_driver/src/presentation/views/navigation/app_bottom_navigation_view.dart';
import 'package:spinners_driver/src/presentation/views/notification/notification_screen.dart';
import 'package:spinners_driver/src/presentation/views/profile/account_screen.dart';
import 'package:spinners_driver/src/presentation/views/splash/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View|Page|Screen,Route')
class AppRouter extends RootStackRouter {
  static final AppRouter _instance = AppRouter._internal();
  factory AppRouter() => _instance;
  AppRouter._internal();

  final router = const AutoRouter();

  static AppRouter get instance => _instance;

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: SplashRoute.page, initial: true),
        AutoRoute(path: '/loginScreen', page: LoginRoute.page),
        AutoRoute(path: '/otpScreen', page: OtpRoute.page),
        AutoRoute(
            path: '/appBottomNavigationView',
            page: AppBottomNavigationRoute.page),
        
      ];
}
