import 'package:facebook/core/widgets/responsive_layout.dart';
import 'package:facebook/feature/presentation/screens/desktop_layout.dart';
import 'package:facebook/feature/presentation/screens/mobile_layout.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobile: (context) => MobileLayout(),
        desktop: (context) => DesktopLayout(),
        tablet: (context) => DesktopLayout(),
      ),
    );
  }
}
