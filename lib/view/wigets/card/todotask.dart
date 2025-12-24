import 'package:flutter/cupertino.dart';
import '../../../models/dashboard_model.dart';
import '../../../utils/services/DB/get_record.dart';
import '../../../view/pages/investigator/post/rc/reabar_research_unit.dart';
import '../../../view/pages/investigator/post/wooden/wooden_research_unit.dart';
import '../../../view/pages/investigator/post/steelFrame/steelFrame_research_unit.dart';
import 'package:provider/provider.dart';
import '../../../view_model/location_view_model.dart';

class TODOTasks extends StatelessWidget {
  final List<Tasks> data;
  TODOTasks({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(children: [
            Text(
              '合計',
              style: TextStyle(
                color: CupertinoColors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
          SizedBox(height: 10),
          Expanded(
            child: CupertinoScrollbar(
              thickness: 6.0,
              thicknessWhileDragging: 10.0,
              radius: const Radius.circular(34.0),
              radiusWhileDragging: Radius.zero,
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  String uuid = data[index].uuid;
                  String name = data[index].buildingName;
                  String username = data[index].postusername;
                  String buildingtype = data[index].buildingtype;
                  String buildingUse = data[index].buildingUse;
                  String score = data[index].overallScore;
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        child: Row(
                          children: [
                            Expanded(
                              child: CupertinoButton.filled(
                                color: scoreToColor(score),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 4),
                                onPressed: () async {
                                  if (buildingtype == "R") {
                                    final record = await getRebarRecord(uuid);
                                    if (record == null) return;
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (context) =>
                                            RebarResearchUnit(record: record),
                                      ),
                                    );
                                  } else if (buildingtype == "S") {
                                    final record =
                                        await getSteelFrameRecord(uuid);
                                    if (record == null) return;
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (context) =>
                                            SteelFrameResearchUnit(
                                          record: record,
                                          uuid:uuid
                                        ),
                                      ),
                                    );
                                  } else if (buildingtype == "W") {
                                    print(buildingtype);
                                    final record = await getWoodenRecord(uuid);
                                    if (record == null) return;
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (_) => MultiProvider(
                                          providers: [
                                            ChangeNotifierProvider.value(
                                              value: context
                                                  .read<LocationViewModel>(),
                                            ),
                                          ],
                                          child: WoodenResearchUnit(
                                            record: record,
                                            uuid: uuid,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      buildingUse,
                                      style: TextStyle(
                                        color: CupertinoColors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      buildingtypeToName(buildingtype),
                                      style: TextStyle(
                                        color: CupertinoColors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      username,
                                      style: TextStyle(
                                        color: CupertinoColors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
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
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Color scoreToColor(String score) {
  switch (score) {
    case 'red':
      return CupertinoColors.systemRed;
    case 'yellow':
      return CupertinoColors.systemYellow;
    case 'green':
      return CupertinoColors.systemGreen;
    default:
      return CupertinoColors.systemGrey;
  }
}

String buildingtypeToName(String buildingtype) {
  switch (buildingtype) {
    case 'R':
      return "RC造建築";
    case 'W':
      return "木造建築";
    case 'S':
      return "鉄筋建築";
    default:
      return "不明";
  }
}
