import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kclub_flutter/core/app/app.dart';
import 'package:kclub_flutter/core/di/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injector.setup();
  await GetStorage.init();
  runApp(
    const ProviderScope(
      child: KClubApp(),
    ),
  );
}
