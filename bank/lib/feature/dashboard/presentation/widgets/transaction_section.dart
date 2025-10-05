import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/feature/dashboard/presentation/widgets/transaction_item.dart';

import 'package:flutter/material.dart';

class TransactionSection extends StatelessWidget {
  final bool isMobile;
  const TransactionSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Transactions',
          style: AppTextStyle.font16Semibold(
            context,
          ).copyWith(color: ColorManager.black),
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 24 : 30,
            vertical: isMobile ? 24 : 30,
          ),

          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: List.generate(
              3,
              (index) => TransactionItem(isMobile: isMobile),
            ),
          ),
        ),
      ],
    );
  }
}
