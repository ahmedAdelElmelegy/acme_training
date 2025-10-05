import 'package:bank/core/theme/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSection extends StatelessWidget {
  const BarChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: 500,
        barGroups: [
          makeGroupData(0, 450, 220),
          makeGroupData(1, 320, 120),
          makeGroupData(2, 330, 250),
          makeGroupData(3, 480, 350),
          makeGroupData(4, 150, 220),
          makeGroupData(5, 400, 240),
          makeGroupData(6, 390, 310),
        ],
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                const days = ['Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri'];
                return Text(days[value.toInt()]);
              },
            ),
          ),
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(toY: y1, color: ColorManager.primary, width: 15),
        BarChartRodData(toY: y2, color: ColorManager.green, width: 15),
      ],
    );
  }
}
