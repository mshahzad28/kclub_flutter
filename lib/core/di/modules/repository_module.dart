import 'package:kclub_flutter/features/users/data/repository/user_repository_impl.dart';
import 'package:kclub_flutter/features/users/domain/repository/user_repository.dart';
import 'package:kiwi/kiwi.dart';

abstract class RepositoryModule {
  static late KiwiContainer _container;

  static void setup(KiwiContainer container) {
    _container = container;
    _registerUserRepository();
  }

  static void _registerUserRepository() {
    _container.registerSingleton<UserRepository>(
      (_) => UserRepositoryImpl(
        apiClient: _container.resolve(),
      ),
    );
  }
}
