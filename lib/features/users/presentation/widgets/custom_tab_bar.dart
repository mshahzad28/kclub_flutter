import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kclub_flutter/features/users/presentation/provider/users_listing_provider.dart';
import 'package:kclub_flutter/features/users/presentation/widgets/custom_tab.dart';

import '../../../../core/resources/resources.dart';

class CustomTabBar extends ConsumerWidget {
  const CustomTabBar({super.key});

  void toggleUserTab(WidgetRef ref, AgeGroup ageGroup) {
    if (ageGroupValueNotifier.value != ageGroup) {
      ageGroupValueNotifier.value = ageGroup;
      // ref.read(userListingNotifierProvider.notifier).getUserList();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ValueListenableBuilder(
        valueListenable: ageGroupValueNotifier,
        builder: (context, ageGroup, _) {
          return Row(
            children: [
              CustomTab(
                  label: Strings.usersUder35,
                  tabRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  selected: ageGroup == AgeGroup.uder35,
                  onSelect: () => toggleUserTab(ref, AgeGroup.uder35)),
              CustomTab(
                  label: Strings.usersAbove35,
                  tabRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  selected: ageGroup == AgeGroup.above35,
                  onSelect: () => toggleUserTab(ref, AgeGroup.above35)),
            ],
          );
        });
  }
}
