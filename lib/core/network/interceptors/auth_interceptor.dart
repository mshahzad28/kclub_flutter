import 'package:dio/dio.dart';
import '../network_keys.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor();
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers
        .addAll({NetworkKeys.authHeaderKey: 'Bearer ${NetworkKeys.token}'});
    handler.next(options);
  }
}
