import 'package:flutter/cupertino.dart';
import 'package:house_check_mobile/view/investigator/post/wooden/wooden_check.dart';
import '../../../../models/investigator_post_model.dart';
import '../../../../controllers/investigator_post_controller.dart';
import 'package:house_check_mobile/utils/dialog_helper.dart';

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
        '外観調査備考': controller.exteriorInspectionRemarksController,
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
        'その他の内容': controller.otherRemarksController,
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

      Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => const WoodenCheck()),
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
                  _buildCupertinoTextField(
                      label: '外観調査点数',
                      controller: controller.exteriorInspectionScoreController),
                  _buildCupertinoTextField(
                      label: '外観調査備考',
                      controller:
                          controller.exteriorInspectionRemarksController),
                  _buildCupertinoTextField(
                      label: '隣接建築物・周辺地盤の危険',
                      controller: controller.adjacentBuildingRiskController),
                  _buildCupertinoTextField(
                      label: '構造躯体の不同沈下',
                      controller: controller.unevenSettlementController),
                  _buildCupertinoTextField(
                    label: '基礎の被害',
                    controller: controller.foundationDamageController,
                  ),
                  _buildCupertinoTextField(
                      label: ' 建築物の1階の傾斜',
                      controller: controller.firstFloorTiltController),
                  _buildCupertinoTextField(
                      label: '壁の被害',
                      controller: controller.wallDamageController),
                  _buildCupertinoTextField(
                      label: '腐食・蟻害の有無',
                      controller: controller.corrosionOrTermiteController),
                  _buildCupertinoTextField(
                      label: '瓦',
                      controller: controller.roofOrSignboardRiskController),
                  _buildCupertinoTextField(
                      label: '窓枠・窓ガラス',
                      controller: controller.windowFrameController),
                  _buildCupertinoTextField(
                      label: '外装材（湿式）',
                      controller: controller.exteriorWetController),
                  _buildCupertinoTextField(
                      label: '外装材（乾式）',
                      controller: controller.exteriorDryController),
                  _buildCupertinoTextField(
                      label: '看板・機器類',
                      controller: controller.signageAndEquipmentController),
                  _buildCupertinoTextField(
                      label: '屋外階段',
                      controller: controller.outdoorStairsController),
                  _buildCupertinoTextField(
                      label: 'その他', controller: controller.othersController),
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
