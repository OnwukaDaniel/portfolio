import 'package:flutter/material.dart';

enum DeviceType {
  mobile,
  desktop,
}

DeviceType getDeviceType(BuildContext context) {
  var shortestSide = MediaQuery.of(context).size.shortestSide;
  if (shortestSide < 600) {
    return DeviceType.mobile;
  } else {
    return DeviceType.desktop;
  }
}