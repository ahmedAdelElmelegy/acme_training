import 'package:bank/core/theme/colors.dart';
import 'package:bank/feature/Transactions/presentation/widgets/desktop_recent_transaction.dart';
import 'package:bank/feature/Transactions/presentation/widgets/my_expenses_section.dart';
import 'package:bank/feature/dashboard/presentation/widgets/cart_section.dart';
import 'package:bank/feature/dashboard/presentation/widgets/dashboar_header.dart';
import 'package:flutter/material.dart';

class TransactionDesktopBody extends StatelessWidget {
  const TransactionDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DashBoardHeader(),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 40),
            decoration: BoxDecoration(color: ColorManager.grayLight2),
            child: ListView(
              children: [
                Row(
                  children: [
                    Expanded(flex: 2, child: CartSection()),
                    SizedBox(width: 30),
                    Expanded(flex: 1, child: MyExpenseSection()),
                  ],
                ),
                SizedBox(height: 24),
                RecentTransactionsDesktop(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
