import 'package:flutter/material.dart';
import 'package:flutter_web_task/core/util/devices_enum.dart';

extension on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
}

class ResponsiveHelper {
  static double screenHeight(BuildContext context) => context.screenHeight;
  static double screenWidth(BuildContext context) => context.screenWidth;
  static Device getDevice(BuildContext context) {
    if (screenWidth(context) > 1200) {
      return Device.desktop;
    } else if (screenWidth(context) <= 1200 && screenWidth(context) > 600) {
      return Device.tablet;
    } else {
      return Device.mobile;
    }
  }

  static double getResponsiveFontSize(
      BuildContext context, double baseFontSize) {
    final device = getDevice(context);
    switch (device) {
      case Device.mobile:
        return baseFontSize * 0.9;
      case Device.tablet:
        return baseFontSize * 0.8;
      case Device.desktop:
        return baseFontSize;
    }
  }
}
