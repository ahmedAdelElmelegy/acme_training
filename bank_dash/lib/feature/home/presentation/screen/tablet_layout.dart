import 'package:bank_dash/core/helper/constants.dart';
import 'package:bank_dash/core/helper/spacing.dart';
import 'package:bank_dash/core/theme/colors.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:bank_dash/core/widgets/custom_text_field.dart';
import 'package:bank_dash/feature/home/presentation/widgets/balance_history.dart';
import 'package:bank_dash/feature/home/presentation/widgets/bar_chart_section.dart';
import 'package:bank_dash/feature/home/presentation/widgets/cart_list.dart';
import 'package:bank_dash/feature/home/presentation/widgets/custom_drawer.dart';
import 'package:bank_dash/feature/home/presentation/widgets/custom_icon.dart';
import 'package:bank_dash/feature/home/presentation/widgets/expense_statistic_section.dart';
import 'package:bank_dash/feature/home/presentation/widgets/quickly_transfer.dart';
import 'package:bank_dash/feature/home/presentation/widgets/transaction_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.grayLight2,
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(36),
                Row(
                  children: [
                    InkWell(
                      onTap: () => scaffoldKey.currentState?.openDrawer(),
                      child: Icon(Icons.menu),
                    ),
                    horizontalSpace(20),
                    Text('Overview', style: AppTextStyle.font20Bold),
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
                verticalSpace(36),
                CartList(),
                verticalSpace(20),
                TransactionSection(isMobile: true),
                verticalSpace(20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Weekly Activity',
                            style: AppTextStyle.font18Medium,
                          ),
                          verticalSpace(16),

                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 16,
                            ),
                            height: 261,
                            decoration: BoxDecoration(
                              color: ColorManager.white,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: BarChartSection(),
                          ),
                        ],
                      ),
                    ),
                    horizontalSpace(8),
                    Expanded(child: const ExpenseStatisticSection()),
                  ],
                ),

                verticalSpace(20),
                Row(
                  children: [
                    Expanded(child: QuicklyTransfer()),
                    horizontalSpace(8),
                    Expanded(child: BalanceHistory()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
