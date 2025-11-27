import 'package:flutter/cupertino.dart';
import '../../../models/dashboard_model.dart';

class RegionalStatistics extends StatelessWidget {
  final DashboardData data;
  RegionalStatistics({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final region = data.regionanalysis;
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
      child: Padding(
        padding: const EdgeInsets.only(left: 12, top: 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(children: [
              Text(
                '地域別統計',
                style: TextStyle(
                  color: CupertinoColors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(CupertinoIcons.graph_square,
                  color: CupertinoColors.black, size: 20),
            ]),
            SizedBox(height: 10),
            Expanded(
              child: CupertinoScrollbar(
                thickness: 6.0,
                thicknessWhileDragging: 10.0,
                radius: const Radius.circular(34.0),
                radiusWhileDragging: Radius.zero,
                child: ListView.builder(
                    itemCount: region.length,
                    itemBuilder: (context, index) {
                      final entry = region.entries.elementAt(index);
                      final regionName = entry.key;
                      final currentRegion = entry.value;
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            child: Row(
                              children: [
                                Text(
                                  regionName,
                                  style: const TextStyle(
                                    color: CupertinoColors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '総建物数: ${currentRegion.totalbuilding.toString()}',
                                  style: const TextStyle(
                                    color: CupertinoColors.activeBlue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '判定完了:${currentRegion.checkcomplete.toString()}',
                                  style: const TextStyle(
                                    color: CupertinoColors.activeGreen,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '危険:${currentRegion.dangerbuilding.toString()}',
                                  style: const TextStyle(
                                    color: CupertinoColors.systemRed,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '判定待ち:${currentRegion.checkwaiting.toString()}',
                                  style: const TextStyle(
                                    color: CupertinoColors.systemYellow,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 1,
                            color: const Color.fromARGB(40, 0, 0, 0),
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                          ),
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
