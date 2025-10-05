import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/feature/Transactions/presentation/widgets/recent_transaction_option.dart';
import 'package:bank/feature/Transactions/presentation/widgets/recent_transaction_pagnation.dart';
import 'package:bank/feature/Transactions/presentation/widgets/transaction_table_row.dart';
import 'package:flutter/material.dart';

class RecentTransactionsDesktop extends StatelessWidget {
  const RecentTransactionsDesktop({super.key});

  static List<String> tableHeaders = [
    'Description',
    'Transaction ID',
    'Type',
    'Card',
    'Date',
    'Amount',
    'Receipt',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recent Transactions', style: AppTextStyle.font18Medium(context)),
        const SizedBox(height: 20),
        RecentTransactionOptions(),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  tableHeaders.length,
                  (index) => Expanded(
                    flex: index == 0 ? 2 : 1,
                    child: Text(
                      tableHeaders[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(height: 1, color: ColorManager.grayLight),

              const SizedBox(height: 8),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => TransactionTableRow(),
                separatorBuilder: (context, index) =>
                    Container(height: 1, color: ColorManager.grayLight),
              ),

              const SizedBox(height: 30),
              const RecentTransactionPagination(),
            ],
          ),
        ),
      ],
    );
  }
}
