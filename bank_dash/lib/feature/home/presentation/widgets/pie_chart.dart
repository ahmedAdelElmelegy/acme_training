import 'package:bank_dash/core/theme/style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSample extends StatelessWidget {
  const PieChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            value: 30,
            title: '30%\nEntertainment',
            color: Colors.indigo,
            radius: 100, // كبره هنا
            titleStyle: AppTextStyle.font12Regular.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          PieChartSectionData(
            value: 15,
            title: '15%\nBill Expense',
            color: Colors.orange,
            radius: 90,
            titleStyle: AppTextStyle.font12Regular.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          PieChartSectionData(
            value: 20,
            title: '20%\nInvestment',
            color: Colors.pinkAccent,
            radius: 110,
            titleStyle: AppTextStyle.font12Regular.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          PieChartSectionData(
            value: 35,
            title: '35%\nOthers',
            color: Colors.blue,
            radius: 115,
            titleStyle: AppTextStyle.font12Regular.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        centerSpaceRadius: 0,
      ),
    );
  }
}
