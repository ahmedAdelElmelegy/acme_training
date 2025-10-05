import 'package:bank_dash/core/widgets/responsive_layout.dart';
import 'package:bank_dash/feature/home/presentation/screen/home_desktop_layout.dart';
import 'package:bank_dash/feature/home/presentation/screen/home_mobile_layout.dart';
import 'package:bank_dash/feature/home/presentation/screen/tablet_layout.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobile: (context) => HomeMobileLayout(),
        tablet: (context) => TabletLayout(),
        desktop: (context) => HomeDesktopLayout(),
      ),
    );
  }
}
