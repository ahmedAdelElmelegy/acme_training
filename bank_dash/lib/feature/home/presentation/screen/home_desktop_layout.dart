import 'package:bank_dash/feature/home/presentation/widgets/home_desktop_body.dart';
import 'package:bank_dash/feature/home/presentation/widgets/side_bar_menu.dart';
import 'package:flutter/material.dart';

class HomeDesktopLayout extends StatelessWidget {
  final bool isTablet;
  const HomeDesktopLayout({super.key, this.isTablet = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: size.width < 1200 ? 3 : 2, child: SideBarMenu()),
          Expanded(flex: 8, child: HomeDesktopBody()),
        ],
      ),
    );
  }
}
