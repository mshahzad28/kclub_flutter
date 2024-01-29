import 'package:kclub_flutter/core/di/modules/app_module.dart';
import 'package:kclub_flutter/core/di/modules/network_module.dart';
import 'package:kclub_flutter/core/di/modules/repository_module.dart';
import 'package:kiwi/kiwi.dart';

abstract class Injector {
  static final KiwiContainer _container = KiwiContainer();
  static final resolve = _container.resolve;

  static Future<void> setup() async {
    await AppModule.setup();
    NetworkModule.setup(container: _container);
    RepositoryModule.setup(_container);
  }

  static void clear() {
    _container.clear();
  }
}
