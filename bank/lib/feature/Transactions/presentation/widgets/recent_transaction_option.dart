import 'package:bank/feature/Transactions/presentation/widgets/recent_transaction_btn.dart';
import 'package:flutter/material.dart';

class RecentTransactionOptions extends StatefulWidget {
  const RecentTransactionOptions({super.key});

  @override
  State<RecentTransactionOptions> createState() =>
      _RecentTransactionOptionsState();
}

class _RecentTransactionOptionsState extends State<RecentTransactionOptions> {
  static List<String> recentTransactionBtn = [
    'All Transactions',
    'Income',
    'Expense',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        recentTransactionBtn.length,
        (index) => InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: RecentTransactionBtn(
            textst: recentTransactionBtn[index],
            isSelected: selectedIndex == index,
          ),
        ),
      ),
    );
  }
}
