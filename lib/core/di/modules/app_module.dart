import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../resources/resources.dart';

abstract class AppModule {
  static Future<void> setup() async {
    _setupLoader();
  }

  static void _setupLoader() {
    EasyLoading.instance
      ..maskType = EasyLoadingMaskType.custom
      ..maskColor = Colors.black38
      ..indicatorType = EasyLoadingIndicatorType.rotatingCircle
      ..loadingStyle = EasyLoadingStyle.custom
      ..backgroundColor = Colors.transparent
      ..boxShadow = <BoxShadow>[]
      ..indicatorColor = AppColors.primaryColor
      ..textColor = AppColors.textGreyColor
      ..userInteractions = false;
  }
}
