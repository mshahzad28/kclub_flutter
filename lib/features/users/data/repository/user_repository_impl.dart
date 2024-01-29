import 'package:kclub_flutter/core/network/rest_api_client.dart';
import 'package:kclub_flutter/features/users/data/model/user_response.dart';
import 'package:kclub_flutter/features/users/domain/repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl({required this.apiClient});
  final RestAPIClient apiClient;
  @override
  Future<UsersResponse> getUsers(
      {String? name, int? minAge, int? maxAge, int? page}) async {
    return await apiClient.getUsers(
        name: name, minAge: maxAge, maxAge: maxAge, page: page);
  }
}
