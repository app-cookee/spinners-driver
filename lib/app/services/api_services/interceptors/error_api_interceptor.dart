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
import 'package:spinners_driver/main.dart';
import 'package:spinners_driver/src/application/auth_bloc/auth_bloc.dart';
import 'package:spinners_driver/src/presentation/views/widgets/server_error_widget.dart';

import '../exceptions/dio_exceptions.dart';

class ErrorApiInterceptor extends Interceptor {
  final Dio dio;

  static Completer<String?>? _refreshCompleter;
  static bool _isRefreshing = false;
  static final Set<String> _queuedRequests = <String>{};

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
        if(e is DioException){
           handler.reject(e);
      }
      else{
        handler.reject(err);

      }
    }
  }

  void _logout() {
    LocalStorage.remove(StorageKey.accessToken);
    LocalStorage.remove(StorageKey.refreshToken);
    AppRouter.instance
        .pushAndPopUntil(SplashRoute(), predicate: (route) => false);
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
      case 500:
        Navigator.pushAndRemoveUntil(
          navigatorKey.currentContext!,
          MaterialPageRoute(builder: (context) => const ServerErrorWidget()),
          (route) => true,
        );
        break;
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
    final requestKey = '${requestOptions.method}_${requestOptions.path}';

    log('Intercepted 401 for ${requestOptions.path}',name: '[401 Handler]');

    if (requestOptions.extra['retry'] == true) {
      log('Already retried. Rejecting.',name: '[401 Handler]');
      handler.reject(err);
      return;
    }

    // Add this request to the queue
    _queuedRequests.add(requestKey);

    try {
      // Get the refreshed token using queue management
      final newAccessToken = await _getRefreshedToken();
      
      if (newAccessToken == null) {
        log('Token refresh failed. Logging out.',name: '[401 Handler]');
        _logout();
        handler.reject(err);
        return;
      }

      log('Retrying original request with new token...',name: '[401 Handler]');

      // Use your exact original retry logic
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
    } finally {
      // Remove from queue when done
      _queuedRequests.remove(requestKey);
    }
  }
/// Manages the token refresh queue - ensures only one refresh at a time
  Future<String?> _getRefreshedToken() async {
    // If refresh is already in progress, wait for it
    if (_isRefreshing && _refreshCompleter != null) {
      log('Token refresh already in progress. Waiting... (${_queuedRequests.length} requests queued)', name: '[Token Refresh]');
      return await _refreshCompleter!.future;
    }

    // Start new refresh
    _isRefreshing = true;
    _refreshCompleter = Completer<String?>();

    log('Starting new token refresh... (${_queuedRequests.length} requests in queue)', name: '[Token Refresh]');

    try {
      final refreshToken = LocalStorage.getString(StorageKey.refreshToken);
      if (refreshToken == null) throw Exception("No refresh token");

      log('Sending refresh token request...',name: '[Token Refresh]');

      // Use your exact original refresh logic
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

      log('Tokens refreshed. Notifying ${_queuedRequests.length} waiting requests...',name: '[Token Refresh]');
      
      // Complete all waiting requests with the new token
      _refreshCompleter!.complete(newAccessToken);
      return newAccessToken;

    } catch (e) {
      log('Token refresh failed: $e',name: '[Token Refresh]');
      
      // Notify all waiting requests that refresh failed
      _refreshCompleter!.complete(null);
      return null;
      
    } finally {
      // Reset refresh state
      _isRefreshing = false;
      _refreshCompleter = null;
    }
  }
 
}

class AuthBlocLocator {
  static AuthBloc get() {
    return BlocProvider.of<AuthBloc>(navigatorKey.currentContext!);
  }
}
