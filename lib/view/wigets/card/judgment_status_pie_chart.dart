import 'package:flutter/cupertino.dart';
import 'package:fl_chart/fl_chart.dart';

class PieChartStatus extends StatefulWidget {
  const PieChartStatus({super.key});

  @override
  State<PieChartStatus> createState() => _PieChartStatusState();
}

class _PieChartStatusState extends State<PieChartStatus> {
  @override
  Widget build(BuildContext context) {
    final sections = <PieChartSectionData>[
      PieChartSectionData(
          value: 40, color: Color.fromARGB(255, 3, 3, 236), title: '40%'),
      PieChartSectionData(
          value: 25, color: Color.fromARGB(255, 255, 0, 34), title: '25%'),
      PieChartSectionData(
          value: 20, color: Color.fromARGB(255, 247, 222, 0), title: '20%'),
      PieChartSectionData(
          value: 15, color: Color.fromARGB(255, 32, 182, 2), title: '15%'),
    ];
    return Container(
      width: 252,
      height: 200,
            decoration: BoxDecoration(
        color: const Color.fromARGB(255, 112, 112, 219),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 48, 48, 48),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 5),
          Text(
            '判定状況進捗',
            style: TextStyle(
              color: CupertinoColors.white,
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
                  Text(
                    '青: 40%',
                    style: TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    '赤: 25%',
                    style: TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    '黄: 20%',
                    style: TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    '緑: 15%',
                    style: TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
