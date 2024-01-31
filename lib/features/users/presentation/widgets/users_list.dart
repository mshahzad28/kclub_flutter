import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kclub_flutter/features/users/data/model/user_response.dart';
import 'package:kclub_flutter/features/users/presentation/widgets/user_card.dart';

class UsersList extends ConsumerStatefulWidget {
  const UsersList({super.key, required this.users});
  final List<User> users;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UsersListState();
}

class _UsersListState extends ConsumerState<UsersList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => UserCard(user: widget.users[index]),
      separatorBuilder: (ctx, i) => const SizedBox(
        height: 4,
      ),
      itemCount: widget.users.length,
    );
  }
}
