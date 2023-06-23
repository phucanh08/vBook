import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

import '../../../shared.dart';

class DeviceUtils {
  const DeviceUtils._();
  static DeviceType deviceType = _getDeviceType();

  static bool get isAndroid => Platform.isAndroid;
  static bool get isIOS => Platform.isIOS;

  static Future<String> getDeviceId() async {
    final deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final iosDeviceInfo = await deviceInfo.iosInfo;

      return iosDeviceInfo.identifierForVendor ?? '';
    } else {
      final androidDeviceInfo = await deviceInfo.androidInfo;

      return androidDeviceInfo.id;
    }
  }

  static Future<String> getDeviceModelName() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;

      return iosInfo.name ?? '';
    } else {
      final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

      return '${androidInfo.brand} ${androidInfo.device}';
    }
  }

  static DeviceType _getDeviceType() {
    final data = MediaQueryData.fromView(WidgetsBinding.instance.window);

    return data.size.shortestSide < DeviceConstants.maxMobileWidthForDeviceType
        ? DeviceType.mobile
        : DeviceType.tablet;
  }
}
