import 'package:bank/feature/Transactions/presentation/screens/transaction_desktop_body.dart';

import 'package:bank/feature/dashboard/presentation/screens/dashboart_desktop_body.dart';
import 'package:bank/feature/dashboard/presentation/widgets/side_bar_menu.dart';
import 'package:flutter/material.dart';

class HomeDesktopLayout extends StatefulWidget {
  const HomeDesktopLayout({super.key});

  @override
  State<HomeDesktopLayout> createState() => _HomeDesktopLayoutState();
}

class _HomeDesktopLayoutState extends State<HomeDesktopLayout> {
  List<Widget> body = [
    const DashboartDesktopBody(),
    const TransactionDesktopBody(),
    Column(children: [Text('Profile')]),
    Column(children: [Text('Settings')]),
    const Column(children: [Text('Profile')]),
    const Column(children: [Text('Settings')]),
    Column(children: [Text('Settings')]),
    const Column(children: [Text('Profile')]),
    const Column(children: [Text('Settings')]),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: SideBarMenu(
              function: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
          Expanded(flex: 8, child: body[selectedIndex]),
        ],
      ),
    );
  }
}
