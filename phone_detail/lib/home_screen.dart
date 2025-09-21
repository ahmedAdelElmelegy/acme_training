import 'package:flutter/material.dart';
import 'package:phone_detail/device_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    getDeviceData();
  }

  int battery = 0;
  Map<String, dynamic> deviceInfo = {};
  getDeviceData() async {
    deviceInfo = await DeviceHelper.getDeviceInfo();
    battery = await DeviceHelper.getBatteryLevel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Battery Level: $battery'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                deviceInfo.length,
                (index) => Text(deviceInfo.values.elementAt(index)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
