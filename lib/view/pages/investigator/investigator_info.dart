import 'package:flutter/cupertino.dart';
import '../../wigets/card/total_card.dart';

class InvestigatorInfo extends StatelessWidget {
  const InvestigatorInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 120,
        ),
        BuildingCt(),
        SizedBox(width: 12),
        EndBuildingCt(),
        SizedBox(width: 12),
        RiskBuildingCt(),
        SizedBox(width: 12),
        WaitingBuildingCt(),
      ],
    ));
  }
}
