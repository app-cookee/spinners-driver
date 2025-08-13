
import 'package:dio/dio.dart';
import 'package:spinners_driver/app/services/api_services/utils/api_logger.dart';

class GeneralApiInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    ApiLogger.logSuccessResponse(response);
  }
}
