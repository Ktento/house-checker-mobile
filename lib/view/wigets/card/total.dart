import 'package:flutter/cupertino.dart';
import '../../../models/dashboard_model.dart';


//総建物数のwidget
class BuildingCt extends StatelessWidget {
  final DashboardData data;
  const BuildingCt({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      decoration: BoxDecoration(
        color: CupertinoColors.systemBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: CupertinoColors.black,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.house_fill,
                  color: CupertinoColors.activeBlue),
              SizedBox(width: 6),
              Column(children: [
                Text(
                  data.totalbuilding.toString(),
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '総建物数',
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ])
            ],
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}

//判定完了済みのwidget
class EndBuildingCt extends StatelessWidget {
  final DashboardData data;
  const EndBuildingCt({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      decoration: BoxDecoration(
        color: CupertinoColors.systemBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: CupertinoColors.black,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.checkmark_square_fill,
                  color: CupertinoColors.activeGreen),
              SizedBox(width: 6),
              Column(children: [
                Text(
                  data.checkcomplete.toString(),
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '判定完了',
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ])
            ],
          ),
          const SizedBox(height: 4),
          // 下段：数字（例）
        ],
      ),
    );
  }
}

//危険建築物のwidget
class RiskBuildingCt extends StatelessWidget {
  final DashboardData data;
  const RiskBuildingCt({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      decoration: BoxDecoration(
        color: CupertinoColors.systemBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: CupertinoColors.black,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.exclamationmark_triangle_fill,
                  color: CupertinoColors.systemRed),
              SizedBox(width: 6),
              Column(children: [
                Text(
                  data.dangerbuilding.toString(),
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '危険建物',
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ])
            ],
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}

//判定待ちのwidget
class WaitingBuildingCt extends StatelessWidget {
  final DashboardData data;
  const WaitingBuildingCt({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      decoration: BoxDecoration(
        color: CupertinoColors.systemBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: CupertinoColors.black,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.time_solid,
                  color: CupertinoColors.systemPurple),
              SizedBox(width: 6),
              Column(children: [
                Text(
                  data.checkwaiting.toString(),
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '判定待ち',
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ])
            ],
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
