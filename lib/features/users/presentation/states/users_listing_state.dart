import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kclub_flutter/features/users/data/model/user_response.dart';
part 'users_listing_state.freezed.dart';

@freezed
class UserListingState with _$UserListingState {
  const factory UserListingState.initial() = initial;
  const factory UserListingState.loading() = loading;
  const factory UserListingState.userListingSuccess(
      UsersResponse usersResponse) = userListingSuccess;
  const factory UserListingState.userListingError(String? error) =
      userListingError;
}
