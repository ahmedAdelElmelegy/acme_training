import 'package:bootstrap_rask/core/theme/colors.dart';
import 'package:bootstrap_rask/core/theme/style.dart';
import 'package:bootstrap_rask/dashboard_ui/presenation/desktop/widget/transition_item.dart';
import 'package:flutter/material.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Transactions',
          style: AppTextStyle.font16Semibold.copyWith(
            color: ColorManager.black,
          ),
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: 350,
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: List.generate(3, (index) => TransactionItem()),
          ),
        ),
      ],
    );
  }
}
