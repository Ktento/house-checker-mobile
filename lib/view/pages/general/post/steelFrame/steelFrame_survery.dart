import 'package:flutter/cupertino.dart';
import 'package:house_check_mobile/view_model/investigator_post/steelFrame_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/Form_view_model.dart';
import '../../../../../utils/helpers/damageLevel.dart';
import 'steelFrame_check.dart';
import '../../../../wigets/image_pickere.dart';
import '../../../../../models/investigator_model.dart';

class SteelFrameSurvery extends StatelessWidget {
  const SteelFrameSurvery({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<SteelFrameViewModel>();
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

                    _buildRadioGroup(
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

                    _buildRadioGroup(
                      title: '隣接建築物・周辺地盤の破壊による危険',
                      controller: inputVM.adjacentBuildingRiskController,
                      options: ['A.危険無し', 'B.不明確', 'C.危険あり'],
                      onImagePicked: (path) => viewModel.updateImageField(
                          'adjacentBuildingRiskImages', [path]),
                      savedImage: viewModel
                          .steelFrameRecord?.content.adjacentBuildingRiskImages,
                    ),

                    _buildRadioGroup(
                      title: '不同沈下による建築物全体の傾斜',
                      controller: inputVM.unevenSettlementController,
                      options: ['A.1/300以下', 'B.1/300～1/100', 'C.1/100超'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('unevenSettlementImages', [path]),
                      savedImage:
                          viewModel.steelFrameRecord?.content.unevenSettlementImages,
                    ),

                    // _buildRadioGroup(
                    //   title: '傾斜を生じた階の上の階数が1階以下の場合',
                    //   controller: inputVM.upperFloorLe1Controller,
                    //   options: ['A.1/100以下', 'B.1/100～1/30', 'C.1/30超'],
                    //   onImagePicked: (path) => viewModel
                    //       .updateImageField('upperFloorLe1Images', [path]),
                    //   savedImage:
                    //       viewModel.steelFrameRecord?.content.upperFloorLe1Images,
                    // ),
                    // _buildRadioGroup(
                    //   title: '傾斜を生じた階の上の階数が2階以下の場合',
                    //   controller: inputVM.upperFloorLe2Controller,
                    //   options: ['A.1/200以下', 'B.1/200～1/50', 'C.1/50超'],
                    //   onImagePicked: (path) => viewModel
                    //       .updateImageField('upperFloorLe2Images', [path]),
                    //   savedImage:
                    //       viewModel.steelFrameRecord?.content.upperFloorLe2Images,
                    // ),

                    // _buildRadioGroup(
                    //   title: '部材の座屈の有無',
                    //   controller: inputVM.hasBucklingController,
                    //   options: ['A.無し', 'B.局部座屈あり', 'C.全体座屈あるいは著しい局部座屈'],
                    //   onImagePicked: (path) => viewModel
                    //       .updateImageField('hasBucklingImages', [path]),
                    //   savedImage:
                    //       viewModel.steelFrameRecord?.content.hasBucklingImages,
                    // ),
                    // _buildRadioGroup(
                    //   title: '筋違の破断率',
                    //   controller: inputVM.bracingBreakRateController,
                    //   options: ['A.20%以下', 'B.20%～50%', 'C.50%超'],
                    //   onImagePicked: (path) => viewModel
                    //       .updateImageField('bracingBreakRateImages', [path]),
                    //   savedImage:
                    //       viewModel.steelFrameRecord?.content.bracingBreakRateImages,
                    // ),
                    // _buildRadioGroup(
                    //   title: '柱梁接合部および継手の破壊',
                    //   controller: inputVM.jointFailureController,
                    //   options: ['A.無し', 'B.一部破断あるいは亀裂', 'C.20%以上の破断'],
                    //   onImagePicked: (path) => viewModel
                    //       .updateImageField('jointFailureImages', [path]),
                    //   savedImage:
                    //       viewModel.steelFrameRecord?.content.jointFailureImages,
                    // ),

                    // _buildRadioGroup(
                    //   title: '柱脚の破損',
                    //   controller: inputVM.columnBaseDamageController,
                    //   options: ['A.無し', 'B.部分的', 'C.著しい'],
                    //   onImagePicked: (path) => viewModel
                    //       .updateImageField('columnBaseDamageImages', [path]),
                    //   savedImage:
                    //       viewModel.steelFrameRecord?.content.columnBaseDamageImages,
                    // ),

                    _buildRadioGroup(
                      title: '腐食の有無',
                      controller: inputVM.corrosionController,
                      options: ['A.ほとんど無し', 'B.各所に著しい錆', 'C.孔所が各所に見られる'],
                      onImagePicked: (path) =>
                          viewModel.updateImageField('corrosionImages', [path]),
                      savedImage:
                          viewModel.steelFrameRecord?.content.corrosionImages,
                    ),

                    const SizedBox(height: 20),

                    // --- 3. 落下・転倒危険物の危険度 ---
                    _buildSectionTitle('3. 落下・転倒危険物の危険度'),

                    _buildRadioGroup(
                      title: '屋根材',
                      controller: inputVM.roofOrSignboardRiskController,
                      options: ['A.ほとんど無被害', 'B.著しいずれ', 'C.全面的にずれ、破損'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('roofingMaterialImages', [path]),
                      savedImage:
                          viewModel.steelFrameRecord?.content.roofingMaterialImages,
                    ),

                    _buildRadioGroup(
                      title: '窓枠・ガラス',
                      controller: inputVM.windowFrameController,
                      options: ['A.ほとんど無被害', 'B.歪み、ひび割れ', 'C.落下の危険有'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('windowFrameImages', [path]),
                      savedImage:
                          viewModel.steelFrameRecord?.content.windowFrameImages,
                    ),

                    _buildRadioGroup(
                      title: '外装材(湿式)',
                      controller: inputVM.exteriorWetController,
                      options: ['A.ほとんど無被害', 'B.部分的なひび割れ、隙間', 'C.顕著なひび割れ、剥離'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('exteriorWetImages', [path]),
                      savedImage:
                          viewModel.steelFrameRecord?.content.exteriorWetImages,
                    ),

                    _buildRadioGroup(
                      title: '外装材(乾式)',
                      controller: inputVM.exteriorDryController,
                      options: ['A.目地の亀裂程度', 'B.板に隙間がみられる', 'C.顕著な目地ずれ、板破損'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('exteriorDryImages', [path]),
                      savedImage:
                          viewModel.steelFrameRecord?.content.exteriorDryImages,
                    ),

                    _buildRadioGroup(
                      title: '看板・機器',
                      controller: inputVM.signageAndEquipmentController,
                      options: ['A.傾斜無し', 'B.わずかな傾斜', 'C.落下の危険有り'],
                      onImagePicked: (path) => viewModel.updateImageField(
                          'signageAndEquipmentImages', [path]),
                      savedImage: viewModel
                          .steelFrameRecord?.content.signageAndEquipmentImages,
                    ),

                    _buildRadioGroup(
                      title: '屋外階段',
                      controller: inputVM.outdoorStairsController,
                      options: ['A.傾斜なし', 'B.わずかな傾斜', 'C.明瞭な傾斜'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('outdoorStairsImages', [path]),
                      savedImage:
                          viewModel.steelFrameRecord?.content.outdoorStairsImages,
                    ),

                    _buildRadioGroup(
                      title: 'その他',
                      controller: inputVM.othersController,
                      options: ['A.安全', 'B.要注意', 'C.危険'],
                      onImagePicked: (path) =>
                          viewModel.updateImageField('othersImages', [path]),
                      savedImage: viewModel.steelFrameRecord?.content.othersImages,
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
                        print(inputVM.adjacentBuildingRiskController.text);
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
                          // upperFloorLe1: stringToDamageLevel(
                          //     inputVM.upperFloorLe1Controller.text),
                          // upperFloorLe2: stringToDamageLevel(
                          //     inputVM.upperFloorLe2Controller.text),
                          // hasBuckling: stringToDamageLevel(
                          //     inputVM.hasBucklingController.text),
                          // bracingBreakRate: stringToDamageLevel(
                          //     inputVM.bracingBreakRateController.text),
                          // jointFailure: stringToDamageLevel(
                          //     inputVM.jointFailureController.text),
                          // columnBaseDamage: stringToDamageLevel(
                          //     inputVM.columnBaseDamageController.text),
                          corrosion: stringToDamageLevel(
                              inputVM.corrosionController.text),
                          roofingMaterial: stringToDamageLevel(
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
                                    value: context.read<SteelFrameViewModel>()),
                                ChangeNotifierProvider.value(
                                    value: context.read<FormViewModel>()),
                              ],
                              child: DangerSurveyFormPage(),
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

  // --- ラジオボタンスタイル（選択肢常時表示） ---
  Widget _buildRadioGroup({
    required String title,
    required TextEditingController controller,
    required List<String> options,
    Function(String path)? onImagePicked,
    final List<ImagePaths>? savedImage,
  }) {
    final String? path;
    // 初期値が空の場合の安全策
    if (controller.text.isEmpty && options.isNotEmpty) {
      // 必要であれば初期値を設定。ここではユーザーの選択を待つため何もしない、またはデフォルト値をセット
      // controller.text = options.first;
    }
    if (savedImage != null && savedImage.isNotEmpty) {
      path = savedImage[0].localPath;
    } else {
      path = null;
    }

    return CupertinoFormSection.insetGrouped(
      // ヘッダー部分に「質問タイトル」と「カメラボタン」を配置
      header: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(title, style: const TextStyle(fontSize: 15))),
          if (onImagePicked != null)
            ImagePickerButton(
              onImagePicked: (file) {
                if (file != null) {
                  onImagePicked(file.path);
                }
              },
              //モデルに保存された画像があればその保存先を渡し表示
              imagePath: path,
            ),
        ],
      ),
      children: options.map((option) {
        return ValueListenableBuilder<TextEditingValue>(
          valueListenable: controller,
          builder: (context, value, child) {
            // 文字列比較で選択状態を判定
            final isSelected = value.text == option ||
                (value.text.isNotEmpty &&
                    option.startsWith(value.text.substring(0, 1)));

            return GestureDetector(
              onTap: () {
                controller.text = option;
              },
              behavior: HitTestBehavior.opaque, // 行全体をタップ可能にする
              child: CupertinoFormRow(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Row(
                  children: [
                    // 選択肢テキスト
                    Expanded(
                      child: Text(
                        option,
                        style: TextStyle(
                          fontSize: 16,
                          color: isSelected
                              ? CupertinoColors.activeBlue
                              : CupertinoColors.label,
                          fontWeight:
                              isSelected ? FontWeight.w600 : FontWeight.normal,
                        ),
                      ),
                    ),
                    // チェックマーク
                    if (isSelected)
                      const Icon(CupertinoIcons.checkmark,
                          color: CupertinoColors.activeBlue, size: 20),
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
