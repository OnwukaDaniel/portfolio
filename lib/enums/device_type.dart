import 'package:flutter/material.dart';

enum DeviceType {
  mobile,
  desktop,
  largeDesktop,
}

DeviceType getDeviceType(BuildContext context) {
  var shortestSide = MediaQuery.of(context).size.shortestSide;
  var width = MediaQuery.of(context).size.width;
  if (shortestSide < 600) return DeviceType.mobile;
  if (width > 1000) return DeviceType.largeDesktop;
  return DeviceType.desktop;
}