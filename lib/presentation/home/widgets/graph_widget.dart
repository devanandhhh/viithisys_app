import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class KGraph extends StatelessWidget {
  const KGraph({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 222,
      width: 327,
      child: LineChart(
        LineChartData(
            minY: 10000,
            maxY: 25000,
            gridData: const FlGridData(show: true),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  const FlSpot(0, 13000),
                  const FlSpot(0.5, 12000),
                  const FlSpot(1, 11000),
                  const FlSpot(1.5, 13000),
                  const FlSpot(2, 14000),
                  const FlSpot(2.5, 12700),
                  const FlSpot(3, 11600),
                  const FlSpot(3.5, 11200)
                ],
                barWidth: 2,
                color: kbluelight,
              ),
              LineChartBarData(spots: [
                const FlSpot(0, 15000),
                const FlSpot(0.5, 18000),
                const FlSpot(1, 23000),
                const FlSpot(1.5, 18000),
                const FlSpot(2, 17000),
                const FlSpot(2.5, 18000),
                const FlSpot(3, 19000),
                const FlSpot(3.5, 19900)
              ], barWidth: 2, color: kmainColor)
            ]),
      ),
    );
  }
}
