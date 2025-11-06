import 'package:flutter/cupertino.dart';

class BuildingCt extends StatelessWidget {
  const BuildingCt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(CupertinoIcons.house_fill, color: CupertinoColors.white),
              SizedBox(width: 6),
              Column(children: [
                Text(
                  '123',
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '総建物数',
                  style: TextStyle(
                    color: CupertinoColors.white,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(CupertinoIcons.checkmark_square_fill,
                  color: CupertinoColors.white),
              SizedBox(width: 6),
              Column(children: [
                Text(
                  '123',
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '判定完了',
                  style: TextStyle(
                    color: CupertinoColors.white,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(CupertinoIcons.exclamationmark_triangle_fill,
                  color: CupertinoColors.white),
              SizedBox(width: 6),
              Column(children: [
                Text(
                  '123',
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '危険建物',
                  style: TextStyle(
                    color: CupertinoColors.white,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(CupertinoIcons.time_solid, color: CupertinoColors.white),
              SizedBox(width: 6),
              Column(children: [
                Text(
                  '123',
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '判定待ち',
                  style: TextStyle(
                    color: CupertinoColors.white,
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
