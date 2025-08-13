import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spinners_driver/app/app_router/app_router.dart';
import 'package:spinners_driver/app/constants/api_constants.dart';
import 'package:spinners_driver/app/constants/storage_constants.dart';
import 'package:spinners_driver/app/services/api_services/utils/api_logger.dart';
import 'package:spinners_driver/app/services/local_storage_service.dart';

import '../exceptions/dio_exceptions.dart';

class ErrorApiInterceptor extends Interceptor {
  final Dio dio;

  ErrorApiInterceptor({required this.dio});

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    ApiLogger.logFailureResponse(err);
    final requestOptions = err.requestOptions;

    try {
      if (err.type == DioExceptionType.badResponse &&
          err.response?.statusCode == 401 &&
          requestOptions.headers.containsKey('Authorization')) {
        await _handle401(err, handler);
        return;
      }

      // Normal error handling flow
      switch (err.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          throw DeadlineExceededException(requestOptions: err.requestOptions);

        case DioExceptionType.badCertificate:
          throw BadCertificateException(
              requestOptions: err.requestOptions, error: err.error);

        case DioExceptionType.badResponse:
          _handleBadResponse(err, handler);
          break;

        case DioExceptionType.cancel:
          throw RequestCancelledException(requestOptions: err.requestOptions);

        case DioExceptionType.connectionError:
          throw NoInternetConnectionException(
              requestOptions: err.requestOptions);

        case DioExceptionType.unknown:
        default:
          throw UnknownErrorException(requestOptions: err.requestOptions);
      }
    } catch (e) {
      handler.reject(err);
    }
  }

  void _logout() {
    LocalStorage.remove(StorageKey.accessToken);
    LocalStorage.remove(StorageKey.refreshToken);
    AppRouter.instance
        .pushAndPopUntil(const SplashRoute(), predicate: (route) => false);
  }

  void _handleBadResponse(DioException err, ErrorInterceptorHandler handler) {
    switch (err.response?.statusCode) {
      case 400:
        throw BadRequestException(
            requestOptions: err.requestOptions,
            error: err.response?.data['message']);
      case 403:
        if (err.requestOptions.headers.containsKey('Authorization')) {
              _logout();
            }
        throw ForbiddenException(requestOptions: err.requestOptions);
      case 404:
        throw NotFoundException(requestOptions: err.requestOptions);
      case 409:
        throw ConflictException(requestOptions: err.requestOptions);
      case 429:
        throw TooManyRequestException(requestOptions: err.requestOptions);
      // case 500:
      //   Navigator.pushAndRemoveUntil(
      //     navigatorKey.currentContext!,
      //     MaterialPageRoute(builder: (context) => const ServerErrorWidget()),
      //     (route) => true,
      //   );
      //   break;
      case 503:
        throw ServiceUnavailableException(requestOptions: err.requestOptions);
      default:
        throw ResponseFromServerException(
          requestOptions: err.requestOptions,
          error: err.response?.statusMessage ?? 'Unknown server error',
        );
    }
  }

  Future<void> _handle401(
      DioException err, ErrorInterceptorHandler handler) async {
    final requestOptions = err.requestOptions;

    log('Intercepted 401 for ${requestOptions.path}',name: '[401 Handler]');

    if (requestOptions.extra['retry'] == true) {
      log('Already retried. Rejecting.',name: '[401 Handler]');
      handler.reject(err);
      return;
    }

    try {
      final refreshToken = LocalStorage.getString(StorageKey.refreshToken);
      if (refreshToken == null) throw Exception("No refresh token");

      log('Sending refresh token request...',name: '[401 Handler]');

      final refreshResponse = await dio.post(
        ApiEndpoints().refreshtoken,
        options: Options(headers: {
          'x-refresh-token': 'Bearer $refreshToken',
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        }),
      );

      final newAccessToken = refreshResponse.data['token'];
      final newRefreshToken = refreshResponse.data['refreshToken'];

      if (newAccessToken == null || newRefreshToken == null) {
        throw Exception("Refresh response missing tokens");
      }

      await LocalStorage.setString(StorageKey.accessToken, newAccessToken);
      await LocalStorage.setString(StorageKey.refreshToken, newRefreshToken);

      log('Tokens refreshed. Retrying original request...',name: '[401 Handler]');

      final retryResponse = await dio.request(
        requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: Options(
          method: requestOptions.method,
          headers: {
            ...requestOptions.headers,
            'Authorization': 'Bearer $newAccessToken',
          },
          extra: {'retry': true},
        ),
      );

      log('Retry success',name: '[401 Handler]');
      handler.resolve(retryResponse);
    } catch (e) {
      log('Refresh failed: $e',name: '[401 Handler]');
      _logout();
      handler.reject(err);
    }
  }
}

// class AuthBlocLocator {
//   static AuthBloc get() {
//     return BlocProvider.of<AuthBloc>(navigatorKey.currentContext!);
//   }
// }
