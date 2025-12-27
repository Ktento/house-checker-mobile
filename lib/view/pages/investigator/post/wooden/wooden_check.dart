import 'package:flutter/cupertino.dart';
import 'package:house_check_mobile/view_model/investigator_post/wooden_view_model.dart';
import '../../../../../models/investigator_model.dart';
import '../../../../../utils/services/DB/send_record.dart';
import 'package:provider/provider.dart';
import '../../../../../utils/services/DB/image_upload.dart';
import '../../investigator_home.dart';
import '../../../../wigets/checkwiget.dart';

class WoodenDangerSurveyFormPage extends StatefulWidget {
  final String? uuid;
  const WoodenDangerSurveyFormPage({super.key, this.uuid});

  @override
  State<WoodenDangerSurveyFormPage> createState() =>
      _WoodenDangerSurveyFormPageState();
}

class _WoodenDangerSurveyFormPageState
    extends State<WoodenDangerSurveyFormPage> {
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<WoodenViewModel>();
    // final inputVM = context.read<FormViewModel>();

    WoodenRecord record = viewModel.woodenRecord!;

    final List<Map<String, dynamic>> surveyItems1 = [
      {
        'title': '隣接建築物・地盤',
        'record': record.content.adjacentBuildingRisk,
        'options': ['A.危険無し', 'B.不明確', 'C.危険あり'],
      },
      {
        'title': '不同沈下',
        'record': record.content.unevenSettlement,
        'options': ['A.無し又は軽微', 'B.著しい床、屋根の落ち込み、浮き上がり', 'C.小屋組みの破壊、床全体の沈下'],
      },
      {
        'title': '基礎の被害',
        'record': record.content.foundationDamage,
        'options': ['A.無被害', 'B.部分的', 'C.著しい(被害あり)'],
      },
      {
        'title': '1階の傾斜',
        'record': record.content.firstFloorTilt,
        'options': ['A.1/60以下', 'B.1/60～1/20', 'C.1/20超'],
      },
      {
        'title': '壁の被害',
        'record': record.content.wallDamage,
        'options': ['A.軽微なひび割れ', 'B.大きな亀裂、剥離', 'C.落下の危険有り'],
      },
      {
        'title': '腐食・蟻害',
        'record': record.content.corrosionOrTermite,
        'options': ['A.ほとんど無し', 'B.一部の断面欠損', 'C.著しい断面欠損'],
      },
    ];
    final List<Map<String, dynamic>> surveyItems2 = [
      // --- 落下転倒物セクション ---
      {
        'title': '瓦',
        'record': record.content.roofTile,
        'options': ['A.ほとんど無被害', 'B.著しいずれ', 'C.全面的にずれ、破損'],
      },
      {
        'title': '窓枠・ガラス',
        'record': record.content.windowFrame,
        'options': ['A.ほとんど無被害', 'B.歪み、ひび割れ', 'C.落下の危険有'],
      },
      {
        'title': '外装材(湿式)',
        'record': record.content.exteriorWet,
        'options': ['A.ほとんど無被害', 'B.部分的なひび割れ、隙間', 'C.顕著なひび割れ、剥離'],
      },
      {
        'title': '外装材(乾式)',
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
      '2.基礎の著しい破壊,上部構造とのずれ',
      '3.建築物全体又は一部の著しい傾斜',
      '4.その他'
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
              // buildSection(context, '総合判定', [
              //   buildRow(context, '判定', record.overallScore.name),
              // ]),
              // buildSection('コメント', [
              //   buildRow('備考', comment),
              // ]),
              SizedBox(height: 20),
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
              Center(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CupertinoButton.filled(
                    onPressed: _isLoading
                        ? null
                        : () async {
                            setState(() {
                              _isLoading = true; // ローディング開始
                            });
                            await uploadAllImages(woodenViewModel: viewModel);
                            if (widget.uuid != null) {
                              await inevestigatorUpdateRecord(
                                  woodenRecord: viewModel.woodenRecord,
                                  uuid: widget.uuid!);
                            } else {
                              await inevestigatorSendRecord(
                                  woodenRecord: viewModel.woodenRecord);
                            }
                            await showCupertinoDialog(
                              context: context,
                              builder: (context) {
                                return CupertinoAlertDialog(
                                  title: const Text('完了'),
                                  content: const Text('判定調査票を正常に送信しました。'),
                                  actions: [
                                    CupertinoDialogAction(
                                      isDefaultAction: true,
                                      child: const Text('OK'),
                                      onPressed: () {
                                        // ダイアログを閉じる
                                        Navigator.pop(context);
                                        // 画面遷移（前の画面に戻る、または一覧へ）
                                        Navigator.pushReplacement(
                                          context,
                                          CupertinoPageRoute(
                                            builder: (context) =>
                                                const InvestigatorHomePage(),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                    borderRadius: BorderRadius.circular(12),
                    child: _isLoading
                        ? const CupertinoActivityIndicator(
                            color: CupertinoColors.white)
                        : const Text('送信'),
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
