import 'package:flutter/services.dart';

abstract class DeviceHelper {
  static const platform = MethodChannel('com.example.device/info');
  static Future<Map<String, dynamic>> getDeviceInfo() async {
    try {
      final info = await platform.invokeMethod('getDeviceInfo');
      return Map<String, dynamic>.from(info ?? {});
    } catch (e) {
      return {'error': e.toString()};
    }
  }

  static Future<int> getBatteryLevel() async {
    final level = await platform.invokeMethod<int>('getBatteryLevel');
    return level ?? -1;
  }
}
