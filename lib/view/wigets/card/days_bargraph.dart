import 'package:flutter/cupertino.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

class DaysBarGraph extends StatefulWidget {
  const DaysBarGraph({super.key});

  @override
  State<DaysBarGraph> createState() => _DaysBarGraphState();
}

class _DaysBarGraphState extends State<DaysBarGraph> {
  Map<String, List<int>> buildingSum = {
    '11/07': [123, 60],
    '11/08': [150, 80],
    '11/09': [190, 170],
    '11/10': [200, 180],
    '11/11': [210, 190],
    '11/12': [220, 200],
    '11/13': [225, 220],
    '11/14': [230, 230],
  };

  @override
  Widget build(BuildContext context) {
    // 最後の日の値の最大値を取得
    List<int> lastDayValues = buildingSum.values.last;
    int lastMax = lastDayValues.reduce(max);

    // 50の倍数に切り上げ
    double yAxisMax = ((lastMax / 50).ceil()) * 50;

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
                            toY: entry.value[0].toDouble(),
                            width: 15,
                            borderRadius: BorderRadius.zero,
                            color: CupertinoColors.activeBlue,
                          ),
                          BarChartRodData(
                            fromY: 0,
                            toY: entry.value[1].toDouble(),
                            width: 15,
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
                              return Text(label,
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
