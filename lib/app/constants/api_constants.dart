import 'package:spinners_driver/app/services/api_services/environment/env_config.dart';

class ImageUrl {
  String base = '';
  String profile = '';
}

class ApiEndpoints {
  static final String _base = EnvConfiguration.current.baseUrl;

  final String refreshtoken = '$_base/auth/refresh_token';

}
