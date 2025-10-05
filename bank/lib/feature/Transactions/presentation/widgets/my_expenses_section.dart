import 'package:bank/core/theme/colors.dart';
import 'package:bank/core/theme/style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyExpenseSection extends StatelessWidget {
  const MyExpenseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Expense', style: AppTextStyle.font18Medium(context)),
        SizedBox(height: 16),
        Container(
          height: 240,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: BarChart(
            BarChartData(
              gridData: FlGridData(show: false),
              borderData: FlBorderData(show: false),
              barTouchData: BarTouchData(enabled: false),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: true, reservedSize: 24),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),

              alignment: BarChartAlignment.spaceAround,

              maxY: 500,
              barGroups: [
                makeGroupData(0, 450, 220),
                makeGroupData(1, 320, 120),
                makeGroupData(2, 330, 250),
                makeGroupData(3, 480, 350),
                makeGroupData(4, 150, 220),
                makeGroupData(5, 400, 240),
              ],
            ),
          ),
        ),
      ],
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          width: 30,
          borderRadius: BorderRadius.circular(6),
          rodStackItems: [],
          color: ColorManager.green2, // استخدم اللون هنا أو عبر gradient
        ),
      ],
    );
  }
}
