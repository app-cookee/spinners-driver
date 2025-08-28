import 'package:spinners_driver/app/services/api_services/environment/env_config.dart';

class ImageUrl {
  String base = '';
  String profile = '';
}

class ApiEndpoints {
  static final String _base = EnvConfiguration.current.baseUrl;

  final String refreshtoken = '$_base/auth/refresh_token';
  final String sendOtp = '$_base/auth/send_otp';
  final String verifyOtp = '$_base/auth/verify_otp';
  final String logout = '$_base/auth/logout';
  final String profile = '$_base/auth/profile';
  final String dashboardData = '$_base/orders/dashboard';
  final String getOrderDetails = '$_base/orders/detail';
  final String pickupOrder = '$_base/orders/pickup_order';
  final String addBag = '$_base/orders/add_bag';
  final String createNewBag = '$_base/orders/create_new_bag';
  final String getOrderDetail = '$_base/orders/detail';
    final String ordersList = '$_base/orders/list';
    final String serviceList = '$_base/service_names/list';
  final String confirmDelivered = '$_base/orders/confirm_delivered';
  final String removeBag = '$_base/orders/remove_bag';
}
