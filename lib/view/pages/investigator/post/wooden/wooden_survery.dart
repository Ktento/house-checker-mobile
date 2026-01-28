import 'package:flutter/cupertino.dart';
import 'package:house_check_mobile/view_model/investigator_post/wooden_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/Form_view_model.dart';
import '../../../../../utils/helpers/damageLevel.dart';
import './wooden_check.dart';
import '../../../../wigets/radiobutton.dart';

class WoodenSurvery extends StatelessWidget {
  final String? uuid;
  const WoodenSurvery({super.key, this.uuid});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<WoodenViewModel>();
    final inputVM = context.read<FormViewModel>();

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('調査内容入力'),
        automaticallyImplyLeading: false,
      ),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Form(
                child: ListView(
                  children: [
                    // --- 1. 一見して危険と判断される ---
                    _buildSectionTitle('1. 一見して危険と判断される'),

                    buildRadioGroup(
                      title: '外観調査点数',
                      controller: inputVM.exteriorInspectionScoreController,
                      options: [
                        '1.建物全体又は一部の崩壊・落階',
                        '2.基礎の著しい破壊、上部構造との著しいずれ',
                        '3.建物全体又は一部の著しい傾斜',
                        '4.その他',
                        '5.なし'
                      ],
                      // 画像保存が必要ない場合はnull
                      onImagePicked: null,
                    ),

                    _buildTextInputSection(
                      label: '外観調査備考',
                      controller: inputVM.exteriorInspectionRemarksController,
                      placeholder: '備考を入力',
                    ),

                    const SizedBox(height: 20),

                    // --- 2. 構造躯体・周辺地盤等の危険度 ---
                    _buildSectionTitle('2. 構造躯体・周辺地盤等の危険度'),

                    buildRadioGroup(
                      title: '隣接建築物・地盤',
                      controller: inputVM.adjacentBuildingRiskController,
                      options: ['A.危険無し', 'B.不明確', 'C.危険あり'],
                      onImagePicked: (path) => viewModel.updateImageField(
                          'adjacentBuildingRiskImages', [path]),
                      savedImage: viewModel
                          .woodenRecord?.content.adjacentBuildingRiskImages,
                    ),

                    buildRadioGroup(
                      title: '不同沈下',
                      controller: inputVM.unevenSettlementController,
                      options: [
                        'A.無し又は軽微',
                        'B.著しい床、屋根の落ち込み、浮き上がり',
                        'C.小屋組みの破壊、床全体の沈下'
                      ],
                      onImagePicked: (path) => viewModel
                          .updateImageField('unevenSettlementImages', [path]),
                      savedImage: viewModel
                          .woodenRecord?.content.unevenSettlementImages,
                    ),

                    buildRadioGroup(
                      title: '基礎の被害',
                      controller: inputVM.foundationDamageController,
                      options: ['A.無被害', 'B.部分的', 'C.著しい(被害あり)'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('foundationDamageImages', [path]),
                      savedImage: viewModel
                          .woodenRecord?.content.foundationDamageImages,
                    ),

                    buildRadioGroup(
                      title: '1階の傾斜',
                      controller: inputVM.firstFloorTiltController,
                      options: ['A.1/60以下', 'B.1/60～1/20', 'C.1/20超'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('firstFloorTiltImages', [path]),
                      savedImage:
                          viewModel.woodenRecord?.content.firstFloorTiltImages,
                    ),

                    buildRadioGroup(
                      title: '壁の被害',
                      controller: inputVM.wallDamageController,
                      options: ['A.軽微なひび割れ', 'B.大きな亀裂、剥離', 'C.落下の危険有り'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('wallDamageImages', [path]),
                      savedImage:
                          viewModel.woodenRecord?.content.wallDamageImages,
                    ),

                    buildRadioGroup(
                      title: '腐食・蟻害',
                      controller: inputVM.corrosionOrTermiteController,
                      options: ['A.ほとんど無し', 'B.一部の断面欠損', 'C.著しい断面欠損'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('corrosionOrTermiteImages', [path]),
                      savedImage: viewModel
                          .woodenRecord?.content.corrosionOrTermiteImages,
                    ),

                    const SizedBox(height: 20),

                    // --- 3. 落下・転倒危険物の危険度 ---
                    _buildSectionTitle('3. 落下・転倒危険物の危険度'),

                    buildRadioGroup(
                      title: '瓦',
                      controller: inputVM.roofOrSignboardRiskController,
                      options: ['A.ほとんど無被害', 'B.著しいずれ', 'C.全面的にずれ、破損'],
                      onImagePicked: (path) => viewModel.updateImageField(
                          'roofOrSignboardRiskImages', [path]),
                      savedImage:
                          viewModel.woodenRecord?.content.roofTileImages,
                    ),

                    buildRadioGroup(
                      title: '窓枠・ガラス',
                      controller: inputVM.windowFrameController,
                      options: ['A.ほとんど無被害', 'B.歪み、ひび割れ', 'C.落下の危険有'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('windowFrameImages', [path]),
                      savedImage:
                          viewModel.woodenRecord?.content.windowFrameImages,
                    ),

                    buildRadioGroup(
                      title: '外装材(湿式)',
                      controller: inputVM.exteriorWetController,
                      options: ['A.ほとんど無被害', 'B.部分的なひび割れ、隙間', 'C.顕著なひび割れ、剥離'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('exteriorWetImages', [path]),
                      savedImage:
                          viewModel.woodenRecord?.content.exteriorWetImages,
                    ),

                    buildRadioGroup(
                      title: '外装材(乾式)',
                      controller: inputVM.exteriorDryController,
                      options: ['A.目地の亀裂程度', 'B.板に隙間がみられる', 'C.顕著な目地ずれ、板破損'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('exteriorDryImages', [path]),
                      savedImage:
                          viewModel.woodenRecord?.content.exteriorDryImages,
                    ),

                    buildRadioGroup(
                      title: '看板・機器',
                      controller: inputVM.signageAndEquipmentController,
                      options: ['A.傾斜無し', 'B.わずかな傾斜', 'C.落下の危険有り'],
                      onImagePicked: (path) => viewModel.updateImageField(
                          'signageAndEquipmentImages', [path]),
                      savedImage: viewModel
                          .woodenRecord?.content.signageAndEquipmentImages,
                    ),

                    buildRadioGroup(
                      title: '屋外階段',
                      controller: inputVM.outdoorStairsController,
                      options: ['A.傾斜なし', 'B.わずかな傾斜', 'C.明瞭な傾斜'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('outdoorStairsImages', [path]),
                      savedImage:
                          viewModel.woodenRecord?.content.outdoorStairsImages,
                    ),

                    buildRadioGroup(
                      title: 'その他',
                      controller: inputVM.othersController,
                      options: ['A.安全', 'B.要注意', 'C.危険'],
                      onImagePicked: (path) =>
                          viewModel.updateImageField('othersImages', [path]),
                      savedImage: viewModel.woodenRecord?.content.othersImages,
                    ),

                    _buildTextInputSection(
                      label: 'その他の内容',
                      controller: inputVM.otherRemarksController,
                      placeholder: '内容を入力',
                    ),

                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),

            // --- アクションボタンエリア ---
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: CupertinoColors.systemBackground.resolveFrom(context),
                border: const Border(
                  top: BorderSide(color: CupertinoColors.separator, width: 0.5),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      color: CupertinoColors.systemGrey5,
                      borderRadius: BorderRadius.circular(12),
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        '戻る',
                        style: TextStyle(
                            color: CupertinoColors.systemGrey,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CupertinoButton.filled(
                      padding: EdgeInsets.zero,
                      borderRadius: BorderRadius.circular(12),
                      onPressed: () {
                        // データ更新ロジック
                        viewModel.updateContent(
                          exteriorInspectionScore: parseExteriorScore(
                              inputVM.exteriorInspectionScoreController.text),
                          exteriorInspectionRemarks:
                              inputVM.exteriorInspectionRemarksController.text,
                          adjacentBuildingRisk: stringToDamageLevel(
                              inputVM.adjacentBuildingRiskController.text),
                          unevenSettlement: stringToDamageLevel(
                              inputVM.unevenSettlementController.text),
                          foundationDamage: stringToDamageLevel(
                              inputVM.foundationDamageController.text),
                          firstFloorTilt: stringToDamageLevel(
                              inputVM.firstFloorTiltController.text),
                          wallDamage: stringToDamageLevel(
                              inputVM.wallDamageController.text),
                          corrosionOrTermite: stringToDamageLevel(
                              inputVM.corrosionOrTermiteController.text),
                          roofTile: stringToDamageLevel(
                              inputVM.roofOrSignboardRiskController.text),
                          windowFrame: stringToDamageLevel(
                              inputVM.windowFrameController.text),
                          exteriorWet: stringToDamageLevel(
                              inputVM.exteriorWetController.text),
                          exteriorDry: stringToDamageLevel(
                              inputVM.exteriorDryController.text),
                          signageAndEquipment: stringToDamageLevel(
                              inputVM.signageAndEquipmentController.text),
                          outdoorStairs: stringToDamageLevel(
                              inputVM.outdoorStairsController.text),
                          others: stringToDamageLevel(
                              inputVM.othersController.text),
                          otherRemarks: inputVM.otherRemarksController.text,
                        );

                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (_) => MultiProvider(
                              providers: [
                                ChangeNotifierProvider.value(
                                    value: context.read<WoodenViewModel>()),
                                ChangeNotifierProvider.value(
                                    value: context.read<FormViewModel>()),
                              ],
                              child: WoodenDangerSurveyFormPage(uuid: uuid),
                            ),
                          ),
                        );
                      },
                      child: const Text('次へ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- 大見出し用 ---
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: CupertinoColors.label,
        ),
      ),
    );
  }

  // --- テキスト入力用セクション ---
  Widget _buildTextInputSection({
    required String label,
    required TextEditingController controller,
    String? placeholder,
  }) {
    return CupertinoFormSection.insetGrouped(
      header: Text(label),
      children: [
        CupertinoFormRow(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: CupertinoTextField(
            controller: controller,
            placeholder: placeholder,
            decoration: null,
            maxLines: null, // 複数行入力を許可
            style: const TextStyle(fontSize: 16),
            padding: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}
