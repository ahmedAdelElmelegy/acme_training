import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/widgets/custom_text_field.dart';
import 'package:bank/feature/dashboard/presentation/widgets/custom_app_bar.dart';
import 'package:bank/feature/dashboard/presentation/widgets/custom_drawer.dart';
import 'package:bank/feature/dashboard/presentation/screens/dashboard_mobile_body.dart';
import 'package:bank/feature/Transactions/presentation/screens/transaction_mobile_body.dart';

import 'package:flutter/material.dart';

class HomeMobileLayout extends StatefulWidget {
  const HomeMobileLayout({super.key});

  @override
  State<HomeMobileLayout> createState() => _HomeMobileLayoutState();
}

class _HomeMobileLayoutState extends State<HomeMobileLayout> {
  List<String> titles = [
    'Overview',
    'Accounts',
    'Investments',
    'Credit Cards',
    "Loans",
    'Services',
    'Settings',
  ];
  List<Widget> pages = [
    DashboardMobileBody(),
    TransactionMobileBody(),
    DashboardMobileBody(),
    DashboardMobileBody(),
    DashboardMobileBody(),
    DashboardMobileBody(),
    DashboardMobileBody(),
  ];
  int selectedIndex = 0;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    debugPrint(size.width.toString());
    return Scaffold(
      backgroundColor: ColorManager.grayLight2,
      key: scaffoldKey,
      drawer: CustomDrawer(
        function: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(
                  scaffoldKey: scaffoldKey,
                  title: titles[selectedIndex],
                ),
                SizedBox(height: 16),
                CustomTextField2(),
                SizedBox(height: 16),
                pages[selectedIndex],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
