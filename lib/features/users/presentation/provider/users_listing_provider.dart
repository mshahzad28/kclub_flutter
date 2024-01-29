import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kclub_flutter/core/di/injector.dart';
import 'package:kclub_flutter/features/users/domain/repository/user_repository.dart';
import 'package:kclub_flutter/features/users/presentation/states/users_listing_state.dart';

class UserListingNotifier extends StateNotifier<UserListingState> {
  UserListingNotifier({
    required this.userRepository,
    required this.ref,
  }) : super(const UserListingState.initial());
  final UserRepository userRepository;
  final Ref ref;
  void getUserList({int? minAge, int? maxAge, int? page, String? name}) async {
    state = const UserListingState.loading();
    try {
      final response = await userRepository.getUsers(
          minAge: minAge, maxAge: maxAge, page: page, name: name);
      state = UserListingState.userListingSuccess(response);
    } on Exception catch (e) {
      state = UserListingState.userListingError(e.toString());
    }
  }
}

final userListingNotifierProvider =
    StateNotifierProvider<UserListingNotifier, UserListingState>(
  (ref) => UserListingNotifier(
    userRepository: Injector.resolve(),
    ref: ref,
  ),
);
