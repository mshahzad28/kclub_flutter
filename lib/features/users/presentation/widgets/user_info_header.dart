import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kclub_flutter/core/extensions/build_context.dart';

class UserInfoHeader extends StatelessWidget {
  const UserInfoHeader({
    super.key,
    this.userImage,
    required this.userName,
    required this.gymName,
    required this.gymLocation,
  });
  final String? userImage;
  final String userName;
  final String gymName;
  final String gymLocation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          child: userImage != null ? SvgPicture.network(userImage!) : null,
        ),
        const SizedBox(width: 16),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: context.textTheme.titleMedium,
              ),
              Text(gymName,
                  style: context.textTheme.bodySmall?.copyWith(fontSize: 10)),
              Text(
                gymLocation,
                style: context.textTheme.bodySmall?.copyWith(fontSize: 10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
