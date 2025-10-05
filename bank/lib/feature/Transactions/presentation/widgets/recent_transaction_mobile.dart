import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/feature/Transactions/presentation/widgets/recent_transaction_mobile_row.dart';
import 'package:bank/feature/Transactions/presentation/widgets/recent_transaction_option.dart';
import 'package:bank/feature/Transactions/presentation/widgets/recent_transaction_pagnation.dart';
import 'package:flutter/material.dart';

class RecentTransactionsMobile extends StatelessWidget {
  const RecentTransactionsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recent Transactions', style: AppTextStyle.font18Medium(context)),
        SizedBox(height: 16),
        RecentTransactionOptions(),

        SizedBox(height: 24),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) => RecentTransactionMobileRow(),
              ),
              SizedBox(height: 24),
              RecentTransactionPagination(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}
