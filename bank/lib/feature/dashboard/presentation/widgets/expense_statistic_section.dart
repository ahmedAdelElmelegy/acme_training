import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/feature/dashboard/presentation/widgets/pie_chart.dart';
import 'package:flutter/material.dart';

class ExpenseStatisticSection extends StatelessWidget {
  const ExpenseStatisticSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Expense Statistics', style: AppTextStyle.font18Medium(context)),
        SizedBox(height: 16),
        Container(
          height: 261,

          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: const PieChartSample(),
        ),
      ],
    );
  }
}
