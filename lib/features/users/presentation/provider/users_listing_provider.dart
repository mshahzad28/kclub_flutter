import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kclub_flutter/core/di/injector.dart';
import 'package:kclub_flutter/features/users/data/model/user_response.dart';
import 'package:kclub_flutter/features/users/domain/repository/user_repository.dart';
import 'package:kclub_flutter/features/users/presentation/states/users_listing_state.dart';

enum AgeGroup { uder35, above35 }

final ageGroupValueNotifier = ValueNotifier<AgeGroup>(AgeGroup.uder35);
final usersStateProvider =
    StateProvider.family<List<User>, AgeGroup>((ref, ageGroup) => []);
final usersSearchProvider =
    StateProvider.family<List<User>, AgeGroup>((ref, ageGroup) => []);
final nextPageProvider =
    StateProvider.family<int, AgeGroup>((ref, ageGroup) => 1);
final endOfListStateusProvider =
    StateProvider.family<bool, AgeGroup>((ref, ageGroup) => false);

class UserListingNotifier extends StateNotifier<UserListingState> {
  UserListingNotifier({
    required this.userRepository,
    required this.ref,
  }) : super(const UserListingState.initial());
  final UserRepository userRepository;
  final Ref ref;
  void getUserList({String? name, AgeGroup? ageGroup}) async {
    state = const UserListingState.loading();
    final _ageGroup = ageGroup ?? ageGroupValueNotifier.value;
    final int minAge = _ageGroup == AgeGroup.uder35 ? 0 : 35;
    final int maxAge = _ageGroup == AgeGroup.uder35 ? 35 : 99;
    final int currentPage =
        name != null ? 1 : ref.watch(nextPageProvider(_ageGroup));
    try {
      final response = await userRepository.getUsers(
        minAge: minAge,
        maxAge: maxAge,
        page: currentPage,
        name: name,
      );
      if (response.users != null && response.users!.isNotEmpty) {
        final users = ref.read(usersStateProvider(_ageGroup));
        name != null
            ? (
                ref.read(usersSearchProvider(_ageGroup).notifier).state = [
                  ...response.users!
                ],
                ref.refresh(usersStateProvider(_ageGroup))
              )
            : ref.read(usersStateProvider(_ageGroup).notifier).state = [
                ...users,
                ...response.users!
              ];
        if (response.next != null) {
          int currentPage = ref.read(nextPageProvider(_ageGroup));
          ref.read(nextPageProvider(_ageGroup).notifier).state =
              currentPage + 1;
        } else {
          ref.read(endOfListStateusProvider(_ageGroup).notifier).state = true;
        }
      }
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
