import 'package:bank/core/theme/style.dart';
import 'package:bank/feature/dashboard/presentation/widgets/line_chart_section.dart';
import 'package:flutter/material.dart';

class BalanceHistory extends StatelessWidget {
  const BalanceHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Balance History', style: AppTextStyle.font18Medium(context)),
        SizedBox(height: 20),
        SizedBox(height: 220, child: const LineChartSection()),
      ],
    );
  }
}
