import 'package:dio/dio.dart';
import 'package:kclub_flutter/core/network/end_points.dart';
import 'package:kclub_flutter/features/users/data/model/user_response.dart';
import 'package:retrofit/retrofit.dart';
part 'rest_api_client.g.dart';

@RestApi()
abstract class RestAPIClient {
  factory RestAPIClient(Dio dio, {String baseUrl}) = _RestAPIClient;

  @GET(Endpoints.users)
  Future<UsersResponse> getUsers({
    @Query('name') String? name,
    @Query('age__gte') int? minAge,
    @Query('age__lte') int? maxAge,
    @Query('page') int? page,
  });
}
