import 'package:dio/dio.dart';

import '../../resources/resources.dart';

class ErrorHandlerInterceptor extends Interceptor {
  final int serverErrorCode = 500;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // ignore: missing_enum_constant_in_switch
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
        throw _TimeoutException(requestOptions: err.requestOptions);
      case DioExceptionType.sendTimeout:
        throw _TimeoutException(requestOptions: err.requestOptions);
      case DioExceptionType.receiveTimeout:
        throw _TimeoutException(requestOptions: err.requestOptions);
      case DioExceptionType.badResponse:
        {
          if (err.response != null &&
              err.response!.statusCode! >= serverErrorCode) {
            throw _CommonException(requestOptions: err.requestOptions);
          } else {
            throw _BackendException(
                requestOptions: err.requestOptions, response: err.response);
          }
        }
      case DioExceptionType.unknown:
        {
          throw _TimeoutException(requestOptions: err.requestOptions);
        }
      case DioExceptionType.badCertificate:
      // TODO: Handle this case.
      case DioExceptionType.cancel:
      // TODO: Handle this case.
      case DioExceptionType.connectionError:
      // TODO: Handle this case.
    }
    return handler.next(err);
  }
}

class _TimeoutException extends DioException {
  _TimeoutException({required super.requestOptions});

  @override
  String toString() {
    return Strings.timeoutError;
  }
}

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException({required super.requestOptions}) {
    _showNoInternetScreen();
  }

  void _showNoInternetScreen() {
    // Todo: Handle NoInternet Navigation here
  }

  @override
  String toString() {
    return Strings.emptyString;
  }
}

class _CommonException extends DioException {
  _CommonException({required super.requestOptions});

  @override
  String toString() {
    return Strings.commonError;
  }
}

class _BackendException extends DioException {
  String _message = '';

  _BackendException({
    required RequestOptions requestOptions,
    required Response? response,
  }) : super(requestOptions: requestOptions) {
    final data = response?.data as Map<String, dynamic>;
    final errorData = data['error'];
    if (errorData.containsKey('message')) {
      final messageData = errorData['message'].toString();
      _message = messageData.isNotEmpty ? messageData : Strings.commonError;
    } else {
      _message = Strings.commonError;
    }
  }

  @override
  String get message => _message;

  @override
  String toString() => message;
}
