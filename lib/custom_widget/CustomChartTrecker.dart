import 'package:fitness_ui/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Customcharttrecker extends StatelessWidget {
  const Customcharttrecker({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> summery = [
      {"value": 80.0, "index": 1},
      {"value": 70.0, "index": 2},
      {"value": 60.0, "index": 3},
      {"value": 90.0, "index": 4},
      {"value": 50.0, "index": 5},
      {"value": 65.0, "index": 6},
      {"value": 40.0, "index": 7},
      {"value": 40.0, "index": 8},
    ];

    return SizedBox(
      height: 150,
      child: BarChart(BarChartData(
          maxY: 100,
          minY: 0,
          gridData: const FlGridData(
            show: false
          ),
          titlesData: const FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false
              )
            ),
              rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                      showTitles: false
                  )
              ),
              topTitles: AxisTitles(
                  sideTitles: SideTitles(
                      showTitles: false
                  )
              )
          ),
          barGroups: summery
              .map((e) => BarChartGroupData(x: e["index"], barRods: [
                    BarChartRodData(
                        toY: e["value"],
                        width: 28,
                        color: AppColors.primaryColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        backDrawRodData: BackgroundBarChartRodData(
                            color: AppColors.secoderyColor,
                            show: true,
                            toY: 100))
                  ]))
              .toList())),
    );
  }
}
