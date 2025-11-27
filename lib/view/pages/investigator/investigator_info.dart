import 'package:flutter/cupertino.dart';
import '../../wigets/card/total.dart';
import '../../wigets/card/progress_rate.dart';

class InvestigatorInfo extends StatelessWidget {
  const InvestigatorInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 120,
            ),
            // BuildingCt(),
            // SizedBox(width: 12),
            // EndBuildingCt(),
            // SizedBox(width: 12),
            // RiskBuildingCt(),
            // SizedBox(width: 12),
            // WaitingBuildingCt(),
          ],
        ),
        // ProgressRate(),
      ],
    ));
  }
}
