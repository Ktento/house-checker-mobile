import 'package:flutter/cupertino.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../models/dashboard_model.dart';

class PieChartStatus extends StatelessWidget {
  final DashboardData data;
  const PieChartStatus({super.key, required this.data});
  double getFontSize(double value) {
    if (value >= 40) return 12;
    if (value >= 25) return 10;
    if (value >= 10) return 8;
    return 6; // 最小サイズ
  }

  @override
  Widget build(BuildContext context) {
    final sections = <PieChartSectionData>[
      PieChartSectionData(
        value: data.checksituationRatio.noValue,
        color: Color.fromARGB(255, 3, 3, 236),
        title: '${data.checksituationRatio.noValue}%',
        titleStyle: TextStyle(
          fontSize: getFontSize(data.checksituationRatio.noValue),
          fontWeight: FontWeight.bold,
          color: CupertinoColors.white,
        ),
      ),
      PieChartSectionData(
        value: data.checksituationRatio.red,
        color: Color.fromARGB(255, 255, 0, 34),
        title: '${data.checksituationRatio.red}%',
        titleStyle: TextStyle(
          fontSize: getFontSize(data.checksituationRatio.red),
          fontWeight: FontWeight.bold,
          color: CupertinoColors.white,
        ),
      ),
      PieChartSectionData(
        value: data.checksituationRatio.yellow,
        color: Color.fromARGB(255, 247, 222, 0),
        title: '${data.checksituationRatio.yellow}%',
        titleStyle: TextStyle(
          fontSize: getFontSize(data.checksituationRatio.yellow),
          fontWeight: FontWeight.bold,
          color: CupertinoColors.white,
        ),
      ),
      PieChartSectionData(
        value: data.checksituationRatio.green,
        color: Color.fromARGB(255, 32, 182, 2),
        title: '${data.checksituationRatio.green}%',
        titleStyle: TextStyle(
          fontSize: getFontSize(data.checksituationRatio.green),
          fontWeight: FontWeight.bold,
          color: CupertinoColors.white,
        ),
      ),
    ];
    return Container(
      width: 252,
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
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 5),
          Text(
            '判定状況進捗',
            style: TextStyle(
              color: CupertinoColors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
                width: 180,
                child: PieChart(
                  PieChartData(
                    sections: sections,
                    centerSpaceRadius: 20,
                    sectionsSpace: 5,
                    startDegreeOffset: -90,
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(CupertinoIcons.circle_filled,
                          color: CupertinoColors.activeBlue, size: 14),
                      Text(
                        '判定なし',
                        style: TextStyle(
                          color: CupertinoColors.activeBlue,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(children: [
                    Icon(CupertinoIcons.circle_filled,
                        color: CupertinoColors.activeGreen, size: 14),
                    Text(
                      '判定完了',
                      style: TextStyle(
                        color: CupertinoColors.activeGreen,
                        fontSize: 14,
                      ),
                    ),
                  ]),
                  SizedBox(height: 3),
                  Row(children: [
                    Icon(CupertinoIcons.circle_filled,
                        color: CupertinoColors.systemRed, size: 14),
                    Text(
                      '危険建物',
                      style: TextStyle(
                        color: CupertinoColors.systemRed,
                        fontSize: 14,
                      ),
                    ),
                  ]),
                  SizedBox(height: 3),
                  Row(children: [
                    Icon(CupertinoIcons.circle_filled,
                        color: CupertinoColors.systemYellow, size: 14),
                    Text(
                      '判定待ち',
                      style: TextStyle(
                        color: CupertinoColors.systemYellow,
                        fontSize: 14,
                      ),
                    ),
                  ]),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
