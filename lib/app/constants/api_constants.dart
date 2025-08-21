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
           final String profile= '$_base/auth/profile';


}
