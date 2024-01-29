import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  double get deviceHeight => MediaQuery.of(this).size.height;

  double get deviceWidth => MediaQuery.of(this).size.width;

  /* This method is to return actual pixels by using device pixel ratio
   devicePixelRatio * logicalPixel = Actual Pixel */
  int getActualPixels(num pixels) {
    return (MediaQuery.of(this).devicePixelRatio * pixels).round();
  }

  // Use this instead of context.pop()
  void shouldPop() {
    if (canPop()) {
      pop();
    }
  }
}
