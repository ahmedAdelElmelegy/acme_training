import 'package:bank/feature/Transactions/presentation/widgets/my_expenses_section.dart';
import 'package:bank/feature/Transactions/presentation/widgets/recent_transaction_mobile.dart';
import 'package:bank/feature/dashboard/presentation/widgets/mobile_cart.dart';
import 'package:bank/feature/dashboard/presentation/widgets/row_of_cart.dart';
import 'package:flutter/material.dart';

class TransactionMobileBody extends StatelessWidget {
  const TransactionMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowOfCart(),
        SizedBox(height: 16),
        MobileCart(),
        SizedBox(height: 16),
        MyExpenseSection(),
        SizedBox(height: 16),
        RecentTransactionsMobile(),
      ],
    );
  }
}
