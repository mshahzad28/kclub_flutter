import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';

import '../../app/app_config.dart';
import '../../network/http_client.dart';
import '../../network/rest_api_client.dart';
import '../../network/service_config.dart';
import '../../resources/resources.dart';

abstract class NetworkModule {
  static late KiwiContainer _container;

  static void setup({required KiwiContainer container}) {
    _container = container;
    _setupServiceConfig();
    _setupDioClient();
    _setupRestClient();
  }

  static void _setupServiceConfig() {
    _container.registerSingleton<ServiceConfig>(
      (_) => ServiceConfig(
        BaseOptions(
          baseUrl: AppConfig.baseUrl,
          connectTimeout: Constants.connectTimeout,
          receiveTimeout: Constants.receiveTimeout,
        ),
      ),
    );
  }

  static void _setupDioClient() {
    _container.registerSingleton<DioHttpClient>(
      (_) => DioHttpClient(
        _container.resolve(),
      ),
    );
  }

  static void _setupRestClient() {
    _container.registerSingleton<RestAPIClient>(
      (_) => RestAPIClient(_container.resolve<DioHttpClient>().client),
    );
  }
}
