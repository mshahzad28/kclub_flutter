import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kclub_flutter/core/resources/dimens.dart';
import 'package:kclub_flutter/core/resources/strings.dart';
import 'package:kclub_flutter/features/users/data/model/user_response.dart';
import 'package:kclub_flutter/features/users/presentation/widgets/user_info_header.dart';
import 'package:kclub_flutter/features/users/presentation/widgets/user_info_tile.dart';

class UserCard extends ConsumerWidget {
  const UserCard({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.materialPadding),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          UserInfoHeader(
            userImage: user.pictureThumb,
            userName: '${user.firstName} ${user.lastName}',
            gymName: user.gymName ?? '',
            gymLocation: user.gymLocationFull?.raw ?? '',
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserInfoTile(
                      icon: Icons.person,
                      title: Strings.fullName,
                      subTitle: '${user.firstName} ${user.lastName}',
                    ),
                    UserInfoTile(
                      icon: Icons.numbers,
                      title: Strings.usaBoxingId,
                      subTitle: user.usaBoxingId?.toString() ?? '',
                    ),
                    UserInfoTile(
                      icon: Icons.numbers,
                      title: Strings.age,
                      subTitle: user.age != null ? user.age.toString() : '',
                    ),
                    UserInfoTile(
                      title: Strings.gender,
                      subTitle: user.gender ?? '',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserInfoTile(
                      icon: Icons.calendar_month,
                      title: Strings.dob,
                      subTitle: user.dateOfBirth ?? '',
                    ),
                    UserInfoTile(
                      icon: Icons.numbers,
                      title: Strings.noOfFights,
                      subTitle: user.numberOfFights != null
                          ? user.numberOfFights.toString()
                          : '0',
                    ),
                    UserInfoTile(
                        icon: Icons.numbers,
                        title: Strings.weight,
                        subTitle:
                            user.weight != null ? user.weight.toString() : ''),
                    UserInfoTile(
                        title: Strings.state,
                        subTitle: user.gymLocationFull?.state ?? ''),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
