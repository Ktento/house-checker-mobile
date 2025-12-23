import 'package:flutter/cupertino.dart';
import 'package:house_check_mobile/view_model/investigator_post/wooden_view_model.dart';
import '../../../../../models/investigator_model.dart';
import '../../../../../utils/services/DB/send_record.dart';
import 'package:provider/provider.dart';
import '../../../../../utils/helpers/damageLevel.dart';
import '../../../../../utils/services/DB/image_upload.dart';

class DangerSurveyFormPage extends StatelessWidget {
  const DangerSurveyFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<WoodenViewModel>();
    // final inputVM = context.read<FormViewModel>();
    WoodenRecord record = viewModel.woodenRecord!;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('応急危険度 判定調査表'),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSection(context, '調査情報', [
                _buildRow(context, '整理番号', record.unit.number),
                _buildRow(
                    context, '調査回数 ', '${record.unit.surveyCount.toString()}回'),
                _buildRow(
                    //調査人の一人目の氏名を表示
                    context,
                    '調査者氏名',
                    record.unit.investigator[0]),
                _buildRow(context, '都道府県',
                    record.unit.investigatorPrefecture[0].toString()),
                _buildRow(context, '調査人番号',
                    record.unit.investigatorNumber[0].toString()),
                _buildRow(context, '調査日時',
                    '${record.unit.date.year}/${record.unit.date.month}/${record.unit.date.day} '),
              ]),
              _buildSection(context, '建築物概要', [
                _buildRow(context, '名称', record.overview.buildingName),
                _buildRow(context, '所在地', record.overview.address),
                _buildRow(context, '用途', record.overview.buildingUse),
                _buildRow(context, '構造形式', record.overview.structure),
                _buildRow(context, '階数', record.overview.floors.toString()),
                _buildRow(context, '建築物規模', record.overview.scale),
              ]),
              _buildSection(context, '調査', [
                Text('１.一見して危険と判断される',
                    style: TextStyle(
                        inherit: false,
                        fontSize: 17,
                        color: const Color.fromARGB(255, 140, 140, 246))),
                _buildRow(
                  context,
                  '内容',
                  record.content.exteriorInspectionScore.toString(),
                  labelWidth: 180,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('２.隣接建築物・周辺の地盤等及び構造躯体に関する危険度',
                    style: TextStyle(
                        inherit: false,
                        fontSize: 17,
                        color: const Color.fromARGB(255, 140, 140, 246))),
                _buildRow(
                  context,
                  '隣接建築物・周辺の地盤の破壊による危険度',
                  adjacentBuildingRiskToLabel(
                      record.content.adjacentBuildingRisk?.name),
                  labelWidth: 180,
                ),
                _buildRow(
                  context,
                  '構造躯体の不同沈下',
                  unevenSettlementToLabel(
                      record.content.unevenSettlement?.name),
                  labelWidth: 180,
                ),
                _buildRow(
                  context,
                  '基礎の被害',
                  foundationDamageToLabel(
                      record.content.foundationDamage?.name),
                  labelWidth: 180,
                ),
                _buildRow(
                  context,
                  '建築物の1階の傾斜',
                  firstFloorTiltToLabel(record.content.firstFloorTilt?.name),
                  labelWidth: 180,
                ),
                _buildRow(
                  context,
                  '壁の被害',
                  wallDamageToLabel(record.content.wallDamage?.name),
                  labelWidth: 180,
                ),
                _buildRow(
                  context,
                  '腐食・蟻害の有無',
                  corrosionOrTermiteToLabel(
                      record.content.corrosionOrTermite?.name),
                  labelWidth: 180,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('３.落下危険物・転倒危険物に関する危険度',
                    style: TextStyle(
                        inherit: false,
                        fontSize: 17,
                        color: const Color.fromARGB(255, 140, 140, 246))),
                _buildRow(context, '瓦',
                    roofTileToLabel(record.content.roofTile?.name)),
                _buildRow(context, '窓枠・窓ガラス',
                    windowFrameToLabel(record.content.windowFrame?.name)),
                _buildRow(context, '外装材（湿式）',
                    exteriorWetToLabel(record.content.exteriorWet?.name)),
                _buildRow(context, '外装材（乾式）',
                    exteriorDryToLabel(record.content.exteriorDry?.name)),
                _buildRow(
                    context,
                    '看板・機器類',
                    signageAndEquipmentToLabel(
                        record.content.signageAndEquipment?.name)),
                _buildRow(context, '屋外階段',
                    outdoorStairsToLabel(record.content.outdoorStairs?.name)),
                _buildRow(
                    context, 'その他', othersToLabel(record.content.others?.name)),
              ]),
              _buildSection(context, '危険度評価', [
                _buildRow(context, '一見して危険と判断される',
                    record.content.overallExteriorScore,
                    labelWidth: 180),
                _buildRow(context, '隣接建築物・周辺の地盤等及び構造躯体',
                    record.content.overallStructuralScore?.name ?? "未入力",
                    labelWidth: 180),
                _buildRow(context, '落下危険物・転倒危険物に関する危険度',
                    record.content.overallFallingObjectScore?.name ?? "未入力",
                    labelWidth: 180),
              ]),
              _buildSection(context, '総合判定', [
                _buildRow(context, '判定', record.overallScore.name),
              ]),
              // _buildSection('コメント', [
              //   _buildRow('備考', comment),
              // ]),
              SizedBox(height: 20),
              Center(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CupertinoButton.filled(
                    onPressed: () async {
                      await uploadAllImages(woodenViewModel: viewModel);
                      generalSendRecord(woodenRecord: viewModel.woodenRecord);
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: const Text('送信'),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/// 表示用のセクション
Widget _buildSection(
    BuildContext context, String title, List<Widget> children) {
  final separatorColor = CupertinoColors.separator.resolveFrom(context);

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: CupertinoColors.activeBlue,
        ),
      ),
      SizedBox(height: 8),
      ...children,
      Container(height: 2, color: separatorColor),
    ],
  );
}

/// 1行表示
Widget _buildRow(BuildContext context, String label, String value,
    {double labelWidth = 140}) {
  final separatorColor =
      CupertinoColors.separator.resolveFrom(context).withOpacity(0.3);
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          children: [
            SizedBox(
                width: labelWidth,
                child:
                    Text(label, style: TextStyle(fontWeight: FontWeight.w500))),
            Expanded(
              child:
                  Text(value, style: TextStyle(color: CupertinoColors.label)),
            ),
          ],
        ),
      ),
      Container(height: 1, color: separatorColor),
    ],
  );
}
