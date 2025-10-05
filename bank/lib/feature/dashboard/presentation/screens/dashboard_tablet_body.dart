import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/feature/dashboard/presentation/widgets/balance_history.dart';
import 'package:bank/feature/dashboard/presentation/widgets/bar_chart_section.dart';
import 'package:bank/feature/dashboard/presentation/widgets/expense_statistic_section.dart';
import 'package:bank/feature/dashboard/presentation/widgets/quickly_transfer.dart';
import 'package:bank/feature/dashboard/presentation/widgets/transaction_section.dart';
import 'package:flutter/material.dart';

class DashBoardTabletBody extends StatelessWidget {
  const DashBoardTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionSection(isMobile: true),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Weekly Activity',
                    style: AppTextStyle.font18Medium(context),
                  ),
                  SizedBox(height: 16),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
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
            SizedBox(width: 8),
            Expanded(child: const ExpenseStatisticSection()),
          ],
        ),

        SizedBox(height: 20),
        Row(
          children: [
            Expanded(child: QuicklyTransfer()),
            SizedBox(width: 8),
            Expanded(child: BalanceHistory()),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
