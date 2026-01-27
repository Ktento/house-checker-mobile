import 'package:flutter/cupertino.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';
import '../../../models/dashboard_model.dart';

//日別実績推移のWidget
class DaysBarGraph extends StatefulWidget {
  final DashboardData data;
  DaysBarGraph({super.key, required this.data});

  @override
  State<DaysBarGraph> createState() => _DaysBarGraphState();
}

class _DaysBarGraphState extends State<DaysBarGraph> {
  @override
  Widget build(BuildContext context) {
    final Map<String, DailyCheckCount> buildingSum = widget.data.dateAnalysis;
    // 最後の日の値の最大値を取得
    final lastDay = widget.data.dateAnalysis.values.last;
    final int lastMax =
        [lastDay.totalBuilding, lastDay.checkComplete].reduce(max);
    // 50の倍数に切り上げ
    final double yAxisMax = ((lastMax / 10).ceil()) * 10;

    return Container(
        width: 516,
        height: 200,
        decoration: BoxDecoration(
          color: CupertinoColors.systemBackground,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: CupertinoColors.black,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
              child: Text(
                '日別実績推移', // タイトル
                style: TextStyle(
                  color: CupertinoColors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 10, 8, 0),
                child: SizedBox(
                  height: 130,
                  width: double.infinity,
                  child: BarChart(BarChartData(
                    minY: 0,
                    maxY: yAxisMax,
                    gridData: FlGridData(
                      show: true,
                      drawHorizontalLine: true,
                      horizontalInterval: 50,
                    ),
                    borderData: FlBorderData(
                        border: const Border(
                      top: BorderSide.none,
                      right: BorderSide(width: 1, color: CupertinoColors.black),
                      left: BorderSide(width: 1, color: CupertinoColors.black),
                      bottom:
                          BorderSide(width: 1, color: CupertinoColors.black),
                    )),
                    groupsSpace: 5,
                    barGroups: buildingSum.entries.map((entry) {
                      int xIndex = buildingSum.keys.toList().indexOf(entry.key);
                      return BarChartGroupData(
                        x: xIndex,
                        barsSpace: 4,
                        barRods: [
                          BarChartRodData(
                            fromY: 0,
                            toY: entry.value.totalBuilding.toDouble(),
                            width: 15,
                            borderRadius: BorderRadius.zero,
                            color: CupertinoColors.activeBlue,
                          ),
                          BarChartRodData(
                            fromY: 0,
                            toY: entry.value.checkComplete.toDouble(),
                            borderRadius: BorderRadius.zero,
                            color: CupertinoColors.activeGreen,
                          ),
                        ],
                      );
                    }).toList(),
                    titlesData: FlTitlesData(
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 30,
                          interval: 100,
                          getTitlesWidget: (value, meta) {
                            return Text(
                              '${value.toInt()}',
                              style: TextStyle(
                                color: CupertinoColors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            int index = value.toInt();
                            if (index >= 0 && index < buildingSum.keys.length) {
                              String label = buildingSum.keys.elementAt(index);
                              return Text(label.substring(5),
                                  style: TextStyle(
                                      color: CupertinoColors.black,
                                      fontSize: 10));
                            }
                            return Text('');
                          },
                        ),
                      ),
                    ),
                  )),
                ))
          ],
        ));
  }
}
