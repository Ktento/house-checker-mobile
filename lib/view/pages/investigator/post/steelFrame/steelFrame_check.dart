import 'package:flutter/cupertino.dart';
import 'package:house_check_mobile/view_model/investigator_post/steelFrame_view_model.dart';
import '../../../../../models/investigator_model.dart';
import '../../../../../utils/services/DB/send_record.dart';
import 'package:provider/provider.dart';
import '../../../../../utils/services/DB/image_upload.dart';
import '../../../../wigets/checkwiget.dart';

class SteelFrameDangerSurveyFormPage extends StatelessWidget {
  final String? uuid;
  const SteelFrameDangerSurveyFormPage({super.key, this.uuid});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SteelFrameViewModel>();
    SteelFrameRecord record = viewModel.steelFrameRecord!;
    final List<Map<String, dynamic>> surveyItems1 = [
      {
        'title': '隣接建築物・周辺地盤',
        'record': record.content.adjacentBuildingRisk,
        'options': ['A.危険無し', 'B.不明確', 'C.危険あり'],
      },
      {
        'title': '不同沈下による傾斜',
        'record': record.content.unevenSettlement,
        'options': ['A.1/300以下', 'B.1/300～1/100', 'C.1/100超'],
      },
      {
        'title': '上階数1以下の傾斜',
        'record': record.content.upperFloorLe1,
        'options': ['A.1/100以下', 'B.1/100～1/30', 'C.1/30超'],
      },
      {
        'title': '上階数2以下の傾斜',
        'record': record.content.upperFloorLe2,
        'options': ['A.1/200以下', 'B.1/200～1/50', 'C.1/50超'],
      },
      {
        'title': '部材の座屈',
        'record': record.content.hasBuckling,
        'options': ['A.無し', 'B.局部座屈あり', 'C.全体座屈または著しい局部座屈'],
      },
      {
        'title': '筋違の破断率',
        'record': record.content.bracingBreakRate,
        'options': ['A.20%以下', 'B.20%～50%', 'C.50%超'],
      },
      {
        'title': '柱梁接合部・継手',
        'record': record.content.jointFailure,
        'options': ['A.無し', 'B.一部破断・亀裂', 'C.20%以上の破断'],
      },
      {
        'title': '柱脚の破損',
        'record': record.content.columnBaseDamage,
        'options': ['A.無し', 'B.部分的', 'C.著しい'],
      },
      {
        'title': '腐食',
        'record': record.content.corrosion,
        'options': ['A.ほとんど無し', 'B.各所に著しい錆', 'C.孔食が各所に見られる'],
      },
    ];
    final List<Map<String, dynamic>> surveyItems2 = [
      {
        'title': '屋根材',
        'record': record.content.roofingMaterial,
        'options': ['A.ほとんど無被害', 'B.著しいずれ', 'C.全面的にずれ、破損'],
      },
      {
        'title': '窓枠・ガラス',
        'record': record.content.windowFrame,
        'options': ['A.ほとんど無被害', 'B.歪み、ひび割れ', 'C.落下の危険有'],
      },
      {
        'title': '外装材（湿式）',
        'record': record.content.exteriorWet,
        'options': ['A.ほとんど無被害', 'B.部分的なひび割れ、隙間', 'C.顕著なひび割れ、剥離'],
      },
      {
        'title': '外装材（乾式）',
        'record': record.content.exteriorDry,
        'options': ['A.目地の亀裂程度', 'B.板に隙間がみられる', 'C.顕著な目地ずれ、板破損'],
      },
      {
        'title': '看板・機器',
        'record': record.content.signageAndEquipment,
        'options': ['A.傾斜無し', 'B.わずかな傾斜', 'C.落下の危険有り'],
      },
      {
        'title': '屋外階段',
        'record': record.content.outdoorStairs,
        'options': ['A.傾斜なし', 'B.わずかな傾斜', 'C.明瞭な傾斜'],
      },
      {
        'title': 'その他',
        'record': record.content.others,
        'options': ['A.安全', 'B.要注意', 'C.危険'],
      },
    ];
    final List<String> options = [
      '1.建物全体又は一部の崩壊・落階',
      '2.基礎の著しい破壊、上部構造との著しいずれ',
      '3.建物全体又は一部の著しい傾斜',
      '4.その他',
    ];

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
              buildSection(context, '調査情報', [
                buildRow(context, '整理番号', record.unit.number),
                buildRow(
                    context, '調査回数 ', '${record.unit.surveyCount.toString()}回'),
                buildRow(
                    //調査人の一人目の氏名を表示
                    context,
                    '調査者氏名',
                    record.unit.investigator[0]),
                buildRow(context, '都道府県',
                    record.unit.investigatorPrefecture[0].toString()),
                buildRow(context, '調査人番号',
                    record.unit.investigatorNumber[0].toString()),
                buildRow(context, '調査日時',
                    '${record.unit.date.year}/${record.unit.date.month}/${record.unit.date.day} '),
              ]),
              buildSection(context, '建築物概要', [
                buildRow(context, '名称', record.overview.buildingName),
                buildRow(context, '所在地', record.overview.address),
                buildRow(context, '用途', record.overview.buildingUse),
                buildRow(context, '構造形式', record.overview.structure),
                buildRow(context, '階数', record.overview.floors.toString()),
                buildRow(context, '建築物規模', record.overview.scale),
              ]),
              SizedBox(height: 8),
              Text('１.一見して危険と判断される',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: const Color.fromARGB(255, 0, 0, 0))),
              SizedBox(height: 8),
              buildSurvey1Table(
                  context, options, record.content.exteriorInspectionScore),
              SizedBox(height: 8),
              Text('２.隣接建築物・周辺の地盤等及び構造躯体に関する危険度',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: const Color.fromARGB(255, 0, 0, 0))),
              SizedBox(
                height: 8,
              ),
              buildSurvey2Table(context, surveyItems1),
              SizedBox(height: 8),
              Text('３.落下危険物・転倒危険物に関する危険度',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: const Color.fromARGB(255, 0, 0, 0))),
              SizedBox(height: 8),
              buildSurvey2Table(context, surveyItems2),
              buildSection(context, '危険度評価', [
                buildRow(context, '一見して危険と判断される',
                    record.content.overallExteriorScore?.name ?? "未入力",
                    labelWidth: 180),
                buildRow(context, '隣接建築物・周辺の地盤等及び構造躯体',
                    record.content.overallStructuralScore?.name ?? "未入力",
                    labelWidth: 180),
                buildRow(context, '落下危険物・転倒危険物に関する危険度',
                    record.content.overallFallingObjectScore?.name ?? "未入力",
                    labelWidth: 180),
              ]),
              buildSection(context, '総合判定', [
                buildRow(context, '判定', record.overallScore.name),
              ]),
              // buildSection('コメント', [
              //   buildRow('備考', comment),
              // ]),
              SizedBox(height: 20),
              Center(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CupertinoButton.filled(
                    onPressed: () async {
                      await uploadAllImages(steelFrameViewModel: viewModel);
                      if (uuid != null) {
                        inevestigatorUpdateRecord(
                            steelFrameRecord: viewModel.steelFrameRecord,
                            uuid: uuid!);
                      } else {
                        inevestigatorSendRecord(
                            steelFrameRecord: viewModel.steelFrameRecord);
                      }
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
