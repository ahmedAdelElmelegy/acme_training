import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/feature/dashboard/presentation/widgets/balance_history.dart';
import 'package:bank/feature/dashboard/presentation/widgets/bar_chart_section.dart';
import 'package:bank/feature/dashboard/presentation/widgets/cart_section.dart';
import 'package:bank/feature/dashboard/presentation/widgets/dashboar_header.dart';
import 'package:bank/feature/dashboard/presentation/widgets/expense_statistic_section.dart';
import 'package:bank/feature/dashboard/presentation/widgets/quickly_transfer.dart';
import 'package:bank/feature/dashboard/presentation/widgets/transaction_section.dart';
import 'package:flutter/material.dart';

class DashboartDesktopBody extends StatelessWidget {
  const DashboartDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DashBoardHeader(),

          Container(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 40),
            decoration: BoxDecoration(color: ColorManager.grayLight2),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(flex: 2, child: const CartSection()),
                    SizedBox(width: 25),
                    Expanded(flex: 1, child: const TransactionSection()),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Weekly Activity',
                            style: AppTextStyle.font18Medium(context),
                          ),
                          SizedBox(height: 16),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 40,
                            ),
                            height: 261,
                            decoration: BoxDecoration(
                              color: ColorManager.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: BarChartSection(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25),
                    Expanded(flex: 2, child: const ExpenseStatisticSection()),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(flex: 2, child: const QuicklyTransfer()),
                    SizedBox(width: 25),
                    Expanded(flex: 4, child: BalanceHistory()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
