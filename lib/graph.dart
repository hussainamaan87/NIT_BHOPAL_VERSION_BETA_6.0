import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SupplyDemandBarGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5, // Adjust the aspect ratio as needed
      child: BarChart(
        BarChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(
            show: true,
            border: Border.all(
              color: const Color(0xff37434d),
              width: 1,
            ),
          ),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(y: 3, colors: [Colors.blue]),
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(y: 2, colors: [Colors.blue]),
              ],
            ),
            BarChartGroupData(
              x: 2,
              barRods: [
                BarChartRodData(y: 4, colors: [Colors.blue]),
              ],
            ),
            BarChartGroupData(
              x: 3,
              barRods: [
                BarChartRodData(y: 3, colors: [Colors.blue]),
              ],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(y: 5, colors: [Colors.blue]),
              ],
            ),
            BarChartGroupData(
              x: 5,
              barRods: [
                BarChartRodData(y: 4, colors: [Colors.blue]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
