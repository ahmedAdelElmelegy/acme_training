import 'package:bank/core/helpers/constants.dart';
import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/core/widgets/custom_text_field.dart';
import 'package:bank/feature/Transactions/presentation/screens/transaction_tablet_body.dart';
import 'package:bank/feature/dashboard/presentation/screens/dashboard_tablet_body.dart';
import 'package:bank/feature/dashboard/presentation/widgets/cart_list.dart';
import 'package:bank/feature/dashboard/presentation/widgets/custom_drawer.dart';
import 'package:bank/feature/dashboard/presentation/widgets/custom_icon.dart';
import 'package:bank/feature/dashboard/presentation/widgets/row_of_cart.dart';
import 'package:flutter/material.dart';

class HomeTabletLayout extends StatefulWidget {
  const HomeTabletLayout({super.key});

  @override
  State<HomeTabletLayout> createState() => _HomeTabletLayoutState();
}

class _HomeTabletLayoutState extends State<HomeTabletLayout> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;
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
    DashBoardTabletBody(),
    TransactionTabletBody(),
    DashBoardTabletBody(),
    DashBoardTabletBody(),
    DashBoardTabletBody(),
    DashBoardTabletBody(),
    DashBoardTabletBody(),
  ];
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 36),
                Row(
                  children: [
                    InkWell(
                      onTap: () => scaffoldKey.currentState?.openDrawer(),
                      child: Icon(Icons.menu),
                    ),
                    SizedBox(width: 20),
                    Text('Overview', style: AppTextStyle.font20Bold(context)),
                    Spacer(),
                    SizedBox(width: 300, child: CustomTextField2()),
                    CustomIcon(
                      path: AppIcons.notification,
                      color: ColorManager.red,
                    ),
                    CustomIcon(
                      path: AppIcons.settings,
                      color: ColorManager.grayDark,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorManager.grayLight2,
                      backgroundImage: AssetImage(AppImages.avatar),
                    ),
                  ],
                ),

                SizedBox(height: 36),
                RowOfCart(),
                SizedBox(height: 20),
                CartList(),
                SizedBox(height: 20),
                pages[selectedIndex],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
