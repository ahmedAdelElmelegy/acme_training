import 'package:bank/core/widgets/adaptive_layout.dart';
import 'package:bank/feature/dashboard/presentation/screens/home_desktop_layout.dart';
import 'package:bank/feature/dashboard/presentation/screens/home_mobile_layout.dart';
import 'package:bank/feature/dashboard/presentation/screens/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: AdaptiveLayout(
        mobilelayout: (context) => HomeMobileLayout(),
        desktopLayout: (context) => HomeDesktopLayout(),
        tabletLayout: (context) => HomeTabletLayout(),
      ),
    );
  }
}
