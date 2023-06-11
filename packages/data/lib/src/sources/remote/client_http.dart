import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared/shared.dart';

@module
abstract class DioClient {
  @Named('mockApi')
  @singleton
  Dio mockApi() => createDio(
        baseOptions: BaseOptions(baseUrl: UrlConstants.mockApiBaseUrl),
      );

  @Named('git')
  @singleton
  Dio data() => createDio(
        baseOptions: BaseOptions(baseUrl: UrlConstants.mockApiBaseUrl),
      );
}

Dio createDio({
  required BaseOptions baseOptions,
  List<Interceptor> interceptors = const [],
}) {
  final dio = Dio();

  if (DeviceUtils.isAndroid || DeviceUtils.isIOS) {
    /// Allows https requests for older devices.
    (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;

      return client;
    };
  }

  dio
    ..options.baseUrl = baseOptions.baseUrl
    ..options.connectTimeout = baseOptions.connectTimeout
    ..options.receiveTimeout = baseOptions.receiveTimeout
    ..options.headers = {
      'Content-Type': 'application/json; charset=utf-8',
      ...baseOptions.headers
    };

  final List<Interceptor> currentInterceptors = [
    if (kDebugMode)
      PrettyDioLogger(
        requestHeader: false,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    ...interceptors,
  ];

  dio.interceptors.addAll(currentInterceptors);

  return dio;
}

extension DioExtension on Dio {
  Future<dynamic> fetchUrl(String url) async {
    final response = await getUri(Uri.parse(url));
    try {
      return jsonDecode(response.data);
    } catch (e) {
      return response.data.toString();
    }
  }
}
