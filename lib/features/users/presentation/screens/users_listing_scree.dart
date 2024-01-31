import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kclub_flutter/core/resources/dimens.dart';
import 'package:kclub_flutter/core/utils/common_utils.dart';
import 'package:kclub_flutter/core/utils/on_widget_built_mixin.dart';
import 'package:kclub_flutter/features/users/presentation/provider/users_listing_provider.dart';
import 'package:kclub_flutter/features/users/presentation/widgets/custom_tab_bar.dart';
import 'package:kclub_flutter/features/users/presentation/widgets/search_bar.dart';
import 'package:kclub_flutter/features/users/presentation/widgets/users_list.dart';

class UsersListingScreen extends ConsumerStatefulWidget {
  const UsersListingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UsersListingScreenState();
}

class _UsersListingScreenState extends ConsumerState<UsersListingScreen>
    with WidgetBuiltMixin {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.atEdge &&
        _scrollController.position.pixels != 0) {
      ref
          .read(userListingNotifierProvider.notifier)
          .getUserList(ageGroup: ageGroupValueNotifier.value);
    }
  }

  void fetchUsers() {
    ref
      ..read(userListingNotifierProvider.notifier)
          .getUserList(ageGroup: AgeGroup.uder35)
      ..read(userListingNotifierProvider.notifier)
          .getUserList(ageGroup: AgeGroup.above35);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CommonUtils.hideKeyboard();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Users Listing Screen'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(Dimensions.materialPadding)
                .copyWith(bottom: 0),
            child: Column(
              children: [
                const CustomTabBar(),
                const SizedBox(height: 16),
                const CustomSearchBar(),
                const SizedBox(height: 16),
                Flexible(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: ValueListenableBuilder(
                        valueListenable: ageGroupValueNotifier,
                        builder: (context, ageGroup, child) {
                          return Consumer(builder: (_, ref, __) {
                            final users = ref.watch(usersStateProvider(
                                ageGroupValueNotifier.value));
                            final searchedUsers = ref.watch(usersSearchProvider(
                                ageGroupValueNotifier.value));
                            return UsersList(
                              users: searchedUsers.isNotEmpty
                                  ? searchedUsers
                                  : users,
                            );
                          });
                        }),
                  ),
                ),
                const SizedBox(height: 16),
                Consumer(builder: (context, ref, child) {
                  final state = ref.watch(userListingNotifierProvider);
                  return state.maybeWhen(
                    loading: () => const CupertinoActivityIndicator(),
                    orElse: () => const SizedBox.shrink(),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  FutureOr<void> onBuilt(BuildContext context) {
    fetchUsers();
  }
}
