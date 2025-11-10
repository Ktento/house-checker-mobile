import 'package:flutter/cupertino.dart';
import 'package:house_check_mobile/view/pages/investigator/post/wooden/wooden_check.dart';
import '../../../../../models/investigator_post_model.dart';
import '../../../../../controllers/investigator_post_controller.dart';
import 'package:house_check_mobile/utils/helpers/dialog.dart';
import '../../../../wigets/choose_picker.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../wigets/TextField.dart';
import 'dart:io';
import '../../../../wigets/image_pickere.dart';

class WoodenSurvey extends StatefulWidget {
  const WoodenSurvey(
      {super.key, required this.unit, required this.buildingOverview});
  final BuildingOverview buildingOverview;
  final InvestigationUnit unit;
  @override
  State<WoodenSurvey> createState() => _WoodenSurveyState();
}

class _WoodenSurveyState extends State<WoodenSurvey> {
  //フォーム全体の状態を管理するキー
  final _formKey = GlobalKey<FormState>();
  final controller = InvestigatorPostController();

  XFile? _image;
  final ImagePicker _picker = ImagePicker();

  // 画像選択関数
  Future<void> pickImage() async {
    final picked = await _picker.pickImage(source: ImageSource.gallery);
    if (picked == null) return;
    setState(() => _image = picked);
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final Map<String, TextEditingController> fields = {
        '外観調査点数': controller.exteriorInspectionScoreController,
        '隣接建築物・周辺地盤の危険': controller.adjacentBuildingRiskController,
        '構造躯体の不同沈下': controller.unevenSettlementController,
        '基礎の被害': controller.foundationDamageController,
        '建築物の1階の傾斜': controller.firstFloorTiltController,
        '壁の被害': controller.wallDamageController,
        '腐食・蟻害の有無': controller.corrosionOrTermiteController,
        '瓦': controller.roofOrSignboardRiskController,
        '窓枠・窓ガラス': controller.windowFrameController,
        '外装材（湿式）': controller.exteriorWetController,
        '外装材（乾式）': controller.exteriorDryController,
        '看板・機器類': controller.signageAndEquipmentController,
        '屋外階段': controller.outdoorStairsController,
        'その他': controller.othersController,
      };

      for (final entry in fields.entries) {
        if (entry.value.text.trim().isEmpty) {
          DialogHelper.showErrorDialog(context, '「${entry.key}」が未入力です。');
          return;
        }
      }
      //調査内容のモデルを作成
      InvestigationContent investigationContent =
          controller.createInvestigationContent();
      //すべてをまとめたモデルを作成
      InvestigationRecord record = controller.createInvestigationRecord(
          widget.unit, widget.buildingOverview, investigationContent);
      //結果の画面に全てをまとめたモデルを受け渡し、画面遷移
      Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (context) => DangerSurveyFormPage(record: record)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final surveyItems = [
      {
        'label': '隣接建築物・周辺地盤の危険',
        'options': ['A.危険無し', 'B.不明確', 'C.危険あり'],
        'controller': controller.adjacentBuildingRiskController
      },
      {
        'label': '構造躯体の不同沈下',
        'options': ['A.無し又は軽微', 'B.著しい床、屋根の落ち込み、浮き上がり', 'C.小屋組みの破壊、床全体の沈下'],
        'controller': controller.unevenSettlementController
      },
      {
        'label': '基礎の被害',
        'options': ['A.無被害', 'B.部分的', 'C.著しい(被害あり)'],
        'controller': controller.foundationDamageController
      },
      {
        'label': '建築物の1階の傾斜',
        'options': ['A.1/60以下', 'B.1/60～1/20', 'C.1/20超'],
        'controller': controller.firstFloorTiltController
      },
      {
        'label': '壁の被害',
        'options': ['A.軽微なひび割れ', 'B.大きな亀裂、剥離', 'C.落下の危険有り'],
        'controller': controller.wallDamageController
      },
      {
        'label': '腐食・蟻害の有無',
        'options': ['A.ほとんど無し', 'B.一部の断面欠損', 'C.著しい断面欠損'],
        'controller': controller.corrosionOrTermiteController
      },
      {
        'label': '瓦',
        'options': ['A.ほとんど無被害', 'B.著しいずれ', 'C.全面的にずれ、破損'],
        'controller': controller.roofOrSignboardRiskController
      },
      {
        'label': '窓枠・窓ガラス',
        'options': ['A.ほとんど無被害', 'B.歪み、ひび割れ', 'C.落下の危険有'],
        'controller': controller.windowFrameController
      },
      {
        'label': '外装材（湿式）',
        'options': ['A.ほとんど無被害', 'B.部分的なひび割れ、隙間', 'C.顕著なひび割れ、剥離'],
        'controller': controller.exteriorWetController
      },
      {
        'label': '外装材（乾式）',
        'options': ['A.目地の亀裂程度', 'B.板に隙間がみられる', 'C.顕著な目地ずれ、板破損'],
        'controller': controller.exteriorDryController
      },
      {
        'label': '看板・機器類',
        'options': ['A.傾斜無し', 'B.わずかな傾斜', 'C.落下の危険有り'],
        'controller': controller.signageAndEquipmentController
      },
      {
        'label': '屋外階段',
        'options': ['A.傾斜なし', 'B.わずかな傾斜', 'C.明瞭な傾斜'],
        'controller': controller.outdoorStairsController
      },
      {
        'label': 'その他',
        'options': ['A.安全', 'B.要注意', 'C.危険'],
        'controller': controller.othersController
      },
    ];
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('調査内容入力'),
        automaticallyImplyLeading: false,
      ),
      child: SafeArea(
        child: Form(
          key: _formKey,
          child: CupertinoScrollbar(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '外観調査点数',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      '1.建物全体又は一部の崩壊・落階',
                      '2.基礎の著しい破壊、上部構造との著しいずれ',
                      '3.建物全体又は一部の著しい傾斜',
                      '4.その他',
                      '5.なし'
                    ],
                    initialValue: '5.なし',
                    onChanged: (value) {
                      controller.exteriorInspectionScoreController.text = value;
                    },
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: buildCupertinoTextField(
                          label: '外観調査備考',
                          controller:
                              controller.exteriorInspectionRemarksController,
                        ),
                      ),
                      ImagePickerButton(
                        width: 40,
                        height: 40,
                        onImagePicked: (picked) {},
                      ),
                    ],
                  ),
                  ...surveyItems.map((item) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['label'] as String,
                          style: const TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Expanded(
                              child: CupertinoDropdown(
                                options: (item['options'] as List<String>),
                                initialValue:
                                    (item['options'] as List<String>).first,
                                onChanged: (value) {
                                  (item['controller'] as TextEditingController)
                                      .text = value;
                                },
                              ),
                            ),
                            ImagePickerButton(
                              width: 40,
                              height: 40,
                              onImagePicked: (picked) {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                      ],
                    );
                  }).toList(),
                  buildCupertinoTextField(
                      label: 'その他の内容',
                      controller: controller.otherRemarksController),

                  const SizedBox(height: 30),

                  // --- 次の画面に行く ---
                  Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CupertinoButton.filled(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            borderRadius: BorderRadius.circular(12),
                            child: const Text('戻る'),
                          ),
                          const SizedBox(width: 40),
                          CupertinoButton.filled(
                            onPressed: () {
                              _submit();
                            },
                            borderRadius: BorderRadius.circular(12),
                            child: const Text('次へ'),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
