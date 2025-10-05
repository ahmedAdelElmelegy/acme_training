import 'package:bank/feature/Transactions/presentation/widgets/desktop_recent_transaction.dart';
import 'package:bank/feature/Transactions/presentation/widgets/my_expenses_section.dart';
import 'package:flutter/material.dart';

class TransactionTabletBody extends StatelessWidget {
  const TransactionTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyExpenseSection(),

        SizedBox(height: 16),
        RecentTransactionsDesktop(),
      ],
    );
  }
}
