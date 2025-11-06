import 'package:flutter/cupertino.dart';
import '../../wigets/card/total_card.dart';
import '../../wigets/card/progress_rate.dart';
import '../../wigets/card/work_status.dart';

class InvestigatorTotal extends StatelessWidget {
  const InvestigatorTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: LayoutBuilder(
        builder: (context, constraints) {
          // 画面の横幅
          final screenWidth = constraints.maxWidth;
          // Row全体の幅（BuildingCt4つ＋隙間3つ）
          const totalWidth = (120 * 4) + (12 * 3);
          // 左端の位置を計算
          final sidePadding = (screenWidth - totalWidth) / 2;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // 中央に配置された4つのカード
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildingCt(),
                  SizedBox(width: 12),
                  EndBuildingCt(),
                  SizedBox(width: 12),
                  RiskBuildingCt(),
                  SizedBox(width: 12),
                  WaitingBuildingCt(),
                ],
              ),

              const SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: sidePadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProgressRate(),
                    WorkStatus(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
