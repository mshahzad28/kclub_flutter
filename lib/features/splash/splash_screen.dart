import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kclub_flutter/core/extensions/build_context.dart';
import 'package:kclub_flutter/core/resources/resources.dart';
import 'package:kclub_flutter/features/users/presentation/provider/users_listing_provider.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        width: context.deviceWidth,
        height: context.deviceHeight,
        color: AppColors.accentColor,
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              TextButton(
                onPressed: () {
                  ref.read(userListingNotifierProvider.notifier).getUserList();
                },
                child: Text("Click me"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
