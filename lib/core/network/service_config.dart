import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/error_handler_interceptor.dart';
// import 'interceptors/network_connection_interceptor.dart';

class ServiceConfig {
  ServiceConfig(this.baseOptions);
  final BaseOptions baseOptions;

  Set<Interceptor> getInterceptors() {
    final interceptors = <Interceptor>{}..addAll(
        {
          AuthInterceptor(),
          ErrorHandlerInterceptor(),
          if (kDebugMode)
            PrettyDioLogger(requestHeader: true, requestBody: true)
        },
      );

    return interceptors;
  }
}
