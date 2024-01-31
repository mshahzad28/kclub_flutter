import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kclub_flutter/core/extensions/build_context.dart';

import '../../../../core/resources/resources.dart';

class CustomTab extends ConsumerWidget {
  const CustomTab({
    super.key,
    required this.label,
    required this.tabRadius,
    required this.onSelect,
    required this.selected,
  });
  final String label;
  final BorderRadiusGeometry tabRadius;
  final VoidCallback onSelect;
  final bool selected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: InkWell(
        onTap: onSelect,
        child: Container(
          decoration: BoxDecoration(
            color: selected ? Colors.amber[600] : Colors.grey[200],
            borderRadius: tabRadius,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.materialPadding,
            vertical: 12,
          ),
          child: Center(
              child: Text(
            label,
            style: context.textTheme.bodyMedium
                ?.copyWith(color: selected ? Colors.white : Colors.black),
          )),
        ),
      ),
    );
  }
}
