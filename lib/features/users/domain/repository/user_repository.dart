import 'package:kclub_flutter/features/users/data/model/user_response.dart';

abstract class UserRepository {
  Future<UsersResponse> getUsers(
      {String? name, int? minAge, int? maxAge, int? page});
}
