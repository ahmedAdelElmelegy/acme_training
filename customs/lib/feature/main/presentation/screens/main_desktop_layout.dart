import 'package:customs/core/theme/colors.dart';
import 'package:customs/feature/about/presentation/screens/about_screen.dart';
import 'package:customs/feature/contact_us/presentation/screens/contact_us_screen.dart';
import 'package:customs/feature/home/presentation/screens/home_desktop_body.dart';
import 'package:customs/feature/home/presentation/widgets/fotter.dart';
import 'package:customs/feature/home/presentation/widgets/header.dart';
import 'package:customs/feature/services/screens/services.dart';
import 'package:flutter/material.dart';

class MainDesktopLayout extends StatefulWidget {
  const MainDesktopLayout({super.key});

  @override
  State<MainDesktopLayout> createState() => _MainDesktopLayoutState();
}

class _MainDesktopLayoutState extends State<MainDesktopLayout> {
  List<Widget> screens = [
    HomeDesktopBody(),
    ServicesScreen(),
    AboutScreen(),
    ContactUsScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              onIndexChange: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),

            // screens
            screens[currentIndex],
            const Footer(),
          ],
        ),
      ),
    );
  }
}
