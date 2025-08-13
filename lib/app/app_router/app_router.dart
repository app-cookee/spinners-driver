import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
