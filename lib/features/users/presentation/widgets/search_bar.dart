import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kclub_flutter/core/extensions/build_context.dart';
import 'package:kclub_flutter/features/users/presentation/provider/users_listing_provider.dart';

import '../../../../core/resources/resources.dart';

class CustomSearchBar extends ConsumerStatefulWidget {
  const CustomSearchBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomSearchBarState();
}

class _CustomSearchBarState extends ConsumerState<CustomSearchBar> {
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searches =
        ref.watch(usersSearchProvider(ageGroupValueNotifier.value));
    return Column(
      children: [
        TextFormField(
          cursorColor: Colors.amber[600],
          controller: searchController,
          maxLines: 1,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            // isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
            hintText: Strings.searchHint,
            hintStyle:
                context.textTheme.bodyMedium?.copyWith(color: Colors.grey[400]),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.amber[600]!)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.amber[600]!),
            ),
            suffixIcon: Container(
              width: 1,
              decoration: BoxDecoration(
                color: Colors.amber[600],
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: InkWell(
                  onTap: () {
                    if (searchController.text.trim().isNotEmpty) {
                      ref
                          .read(userListingNotifierProvider.notifier)
                          .getUserList(name: searchController.text);
                    }
                  },
                  child:
                      const Icon(Icons.search, color: Colors.black, size: 20)),
            ),
          ),
        ),
        if (searches.isNotEmpty)
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () {
                searchController.clear();
                ref.refresh(usersSearchProvider(ageGroupValueNotifier.value));
              },
              child: const Text('Clear Search'),
            ),
          ),
      ],
    );
  }
}
