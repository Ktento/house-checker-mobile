import 'package:flutter/cupertino.dart';

class BuildingCt extends StatelessWidget {
  const BuildingCt({super.key});

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
            children: const [
              Icon(CupertinoIcons.house_fill, color: CupertinoColors.activeBlue),
              SizedBox(width: 6),
              Column(children: [
                Text(
                  '123',
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

class EndBuildingCt extends StatelessWidget {
  const EndBuildingCt({super.key});

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
            children: const [
              Icon(CupertinoIcons.checkmark_square_fill,
                  color: CupertinoColors.activeGreen),
              SizedBox(width: 6),
              Column(children: [
                Text(
                  '123',
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

class RiskBuildingCt extends StatelessWidget {
  const RiskBuildingCt({super.key});

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
            children: const [
              Icon(CupertinoIcons.exclamationmark_triangle_fill,
                  color: CupertinoColors.systemRed),
              SizedBox(width: 6),
              Column(children: [
                Text(
                  '123',
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

class WaitingBuildingCt extends StatelessWidget {
  const WaitingBuildingCt({super.key});

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
            children: const [
              Icon(CupertinoIcons.time_solid, color: CupertinoColors.systemYellow),
              SizedBox(width: 6),
              Column(children: [
                Text(
                  '123',
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
