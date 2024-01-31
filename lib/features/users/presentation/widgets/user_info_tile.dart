import 'package:flutter/material.dart';
import 'package:kclub_flutter/core/extensions/build_context.dart';

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({
    super.key,
    this.icon,
    required this.title,
    required this.subTitle,
  });
  final IconData? icon;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.amber[600],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Icon(icon, size: 12, color: Colors.white),
                  const SizedBox(width: 6)
                ],
                Text(title,
                    style: context.textTheme.bodySmall?.copyWith(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(subTitle),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
