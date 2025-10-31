import 'package:flutter/cupertino.dart';
import 'package:house_check_mobile/view/investigator/post/wooden/wooden_check.dart';
import '../../../../models/investigator_post_model.dart';
import '../../../../controllers/investigator_post_controller.dart';
import 'package:house_check_mobile/utils/widgets/dialog.dart';
import '../../../../utils/db_service.dart';
import '../../../../utils/components/choose_picker.dart';

class WoodenSurvey extends StatefulWidget {
  const WoodenSurvey(
      {super.key, required this.unit, required this.buildingOverview});
  final BuildingOverview buildingOverview;
  final InvestigationUnit unit;
  @override
  State<WoodenSurvey> createState() => _WoodenSurveyState();
}

class _WoodenSurveyState extends State<WoodenSurvey> {
  final _formKey = GlobalKey<FormState>();
  final controller = InvestigatorPostController();

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
      sendRecord(record);
      Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => DangerSurveyFormPage()),
      );
    }
  }

  Widget _buildCupertinoTextField({
    required String label,
    required TextEditingController controller,
    bool numeric = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w500)),
        const SizedBox(height: 4),
        CupertinoTextField(
          controller: controller,
          keyboardType: numeric ? TextInputType.number : TextInputType.text,
          placeholder: '$label を入力',
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          decoration: BoxDecoration(
            color: CupertinoColors.systemGrey6,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
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
                  _buildCupertinoTextField(
                      label: '外観調査備考',
                      controller:
                          controller.exteriorInspectionRemarksController),
                  const Text(
                    '隣接建築物・周辺地盤の危険',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.危険無し',
                      'B.不明確',
                      'C.危険あり',
                    ],
                    initialValue: 'A.危険無し',
                    onChanged: (value) {
                      controller.adjacentBuildingRiskController.text = value;
                    },
                  ),
                  const Text(
                    '構造躯体の不同沈下',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.無し又は軽微',
                      'B.著しい床、屋根の落ち込み、浮き上がり',
                      'C.小屋組みの破壊、床全体の沈下',
                    ],
                    initialValue: 'A.無し又は軽微',
                    onChanged: (value) {
                      controller.unevenSettlementController.text = value;
                    },
                  ),
                  const Text(
                    '基礎の被害',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.無被害',
                      'B.部分的',
                      'C.著しい(被害あり)',
                    ],
                    initialValue: 'A.無被害',
                    onChanged: (value) {
                      controller.foundationDamageController.text = value;
                    },
                  ),
                  const Text(
                    '建築物の1階の傾斜',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.1/60以下',
                      'B.1/60～1/20',
                      'C.1/20超',
                    ],
                    initialValue: 'A.1/60以下',
                    onChanged: (value) {
                      controller.firstFloorTiltController.text = value;
                    },
                  ),
                  const Text(
                    '壁の被害',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.軽微なひび割れ',
                      'B.大きな亀裂、剥離',
                      'C.落下の危険有り',
                    ],
                    initialValue: 'A.軽微なひび割れ',
                    onChanged: (value) {
                      controller.wallDamageController.text = value;
                    },
                  ),
                  const Text(
                    '腐食・蟻害の有無',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.ほとんど無し',
                      'B.一部の断面欠損',
                      'C.著しい断面欠損',
                    ],
                    initialValue: 'A.ほとんど無し',
                    onChanged: (value) {
                      controller.corrosionOrTermiteController.text = value;
                    },
                  ),
                  const Text(
                    '瓦',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.ほとんど無被害',
                      'B.著しいずれ',
                      'C.全面的にずれ、破損',
                    ],
                    initialValue: 'A.ほとんど無被害',
                    onChanged: (value) {
                      controller.roofOrSignboardRiskController.text = value;
                    },
                  ),
                  const Text(
                    '窓枠・窓ガラス',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.ほとんど無被害',
                      'B.歪み、ひび割れ',
                      'C.落下の危険有',
                    ],
                    initialValue: 'A.ほとんど無被害',
                    onChanged: (value) {
                      controller.windowFrameController.text = value;
                    },
                  ),
                  const Text(
                    '外装材　湿式の場合',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.ほとんど無被害',
                      'B.部分的なひび割れ、隙間',
                      'C.顕著なひび割れ、剥離',
                    ],
                    initialValue: 'A.ほとんど無被害',
                    onChanged: (value) {
                      controller.exteriorWetController.text = value;
                    },
                  ),
                  const Text(
                    '外装材　乾式の場合',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.目地の亀裂程度',
                      'B.板に隙間がみられる',
                      'C.顕著な目地ずれ、板破損',
                    ],
                    initialValue: 'A.目地の亀裂程度',
                    onChanged: (value) {
                      controller.exteriorDryController.text = value;
                    },
                  ),
                  const Text(
                    '看板・機器類',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.傾斜無し',
                      'B.わずかな傾斜',
                      'C.落下の危険有り',
                    ],
                    initialValue: 'A.傾斜無し',
                    onChanged: (value) {
                      controller.signageAndEquipmentController.text = value;
                    },
                  ),
                  const Text(
                    '屋外階段',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.傾斜なし',
                      'B.わずかな傾斜',
                      'C.明瞭な傾斜',
                    ],
                    initialValue: 'A.傾斜なし',
                    onChanged: (value) {
                      controller.outdoorStairsController.text = value;
                    },
                  ),
                  const Text(
                    'その他',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.安全',
                      'B.要注意',
                      'C.危険',
                    ],
                    initialValue: 'A.安全',
                    onChanged: (value) {
                      controller.othersController.text = value;
                    },
                  ),
                  _buildCupertinoTextField(
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
