import 'package:bank_dash/core/helper/spacing.dart';
import 'package:bank_dash/core/theme/colors.dart';
import 'package:bank_dash/core/theme/style.dart';
import 'package:bank_dash/feature/home/presentation/widgets/pie_chart.dart';
import 'package:flutter/material.dart';

class ExpenseStatisticSection extends StatelessWidget {
  const ExpenseStatisticSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Expense Statistics', style: AppTextStyle.font18Medium),
        verticalSpace(16),
        Container(
          height: 261,

          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const PieChartSample(),
        ),
      ],
    );
  }
}
