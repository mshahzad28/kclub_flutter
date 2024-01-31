import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../resources/resources.dart';
import 'app_router.dart';

class KClubApp extends StatefulWidget {
  const KClubApp({super.key});

  static BuildContext? get appContext =>
      AppRouter.router.routerDelegate.navigatorKey.currentContext;

  @override
  State<StatefulWidget> createState() => _KClubAppState();
}

class _KClubAppState extends State<KClubApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: Strings.appName,
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      routerDelegate: AppRouter.router.routerDelegate,
      builder: EasyLoading.init(),
    );
  }
}
