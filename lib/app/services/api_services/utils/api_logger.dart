import 'dart:developer';
import 'package:dio/dio.dart';
import 'dart:convert';
class ApiLogger {
  static String _prettyJson(dynamic data) {
    try {
      if (data is Map || data is List) {
        const encoder = JsonEncoder.withIndent('  ');
        return encoder.convert(data);
      }
      return data.toString();
    } catch (e) {
      return data.toString();
    }
  }

  static logSuccessResponse(Response response) {
    log('======================= API LOG =========================');
    log('[SUCCESS] Api Response ->\n${_prettyJson(response.data)}');
    log('[SUCCESS] Api Request Path -> ${response.requestOptions.path}');
    log('[SUCCESS] Api Request Data ->\n${_prettyJson(response.requestOptions.data)}');
  }

  static logFailureResponse(DioException err) {
    log('======================= API LOG =========================');
    if (err.response != null) {
      log('[FAIL] Api Error -> ${err.message}');
      log('[FAIL] Api Response ->\n${_prettyJson(err.response!.data)}');
      log('[FAIL] Api Request Path -> ${err.requestOptions.path}');
      log('[FAIL] Api Request Data ->\n${_prettyJson(err.requestOptions.data)}');
    } else {
      log('[FAIL] Api Error -> ${err.message}');
      log('[FAIL] Api Request Path -> ${err.requestOptions.path}');
      log('[FAIL] Api Request Data ->\n${_prettyJson(err.requestOptions.data)}');
    }
  }
}

