import 'package:bank_dash/core/theme/style.dart';
import 'package:bank_dash/feature/home/presentation/widgets/line_chart_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BalanceHistory extends StatelessWidget {
  const BalanceHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Balance History', style: AppTextStyle.font18Medium),
        SizedBox(height: 20.h),
        SizedBox(height: 220, child: const LineChartSection()),
      ],
    );
  }
}
