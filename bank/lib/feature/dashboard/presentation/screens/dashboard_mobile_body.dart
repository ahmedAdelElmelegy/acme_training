import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/feature/dashboard/presentation/widgets/balance_history.dart';
import 'package:bank/feature/dashboard/presentation/widgets/bar_chart_section.dart';
import 'package:bank/feature/dashboard/presentation/widgets/expense_statistic_section.dart';
import 'package:bank/feature/dashboard/presentation/widgets/mobile_cart.dart';
import 'package:bank/feature/dashboard/presentation/widgets/quickly_transfer.dart';
import 'package:bank/feature/dashboard/presentation/widgets/row_of_cart.dart';
import 'package:bank/feature/dashboard/presentation/widgets/transaction_section.dart';
import 'package:flutter/material.dart';

class DashboardMobileBody extends StatelessWidget {
  const DashboardMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowOfCart(),
        SizedBox(height: 16),
        MobileCart(),
        SizedBox(height: 16),
        TransactionSection(isMobile: true),
        SizedBox(height: 16),
        Text('Weekly Activity', style: AppTextStyle.font18Medium(context)),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          height: 261,
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: BarChartSection(),
        ),
        SizedBox(height: 16),
        const ExpenseStatisticSection(),
        SizedBox(height: 16),
        QuicklyTransfer(),
        SizedBox(height: 16),

        BalanceHistory(),
        SizedBox(height: 16),
      ],
    );
  }
}
