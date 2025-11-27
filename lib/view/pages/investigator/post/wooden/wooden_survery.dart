import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/Form_view_model.dart';
import '../../../../../view_model/investigator_post_view_model.dart';
import '../../../../../models/investigator_model.dart';
import '../../../../../utils/helpers/damageLevel.dart';
import './wooden_check.dart';
import '../../../../wigets/image_pickere.dart';

class WoodenSurvery extends StatelessWidget {
  const WoodenSurvery({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<InvestigationViewModel>();
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
                      title: '隣接建築物・地盤',
                      controller: inputVM.adjacentBuildingRiskController,
                      options: ['A.危険無し', 'B.不明確', 'C.危険あり'],
                      onImagePicked: (path) => viewModel.updateImageField(
                          'adjacentBuildingRiskImages', [path]),
                    ),

                    _buildRadioGroup(
                      title: '不同沈下',
                      controller: inputVM.unevenSettlementController,
                      options: [
                        'A.無し又は軽微',
                        'B.著しい床、屋根の落ち込み、浮き上がり',
                        'C.小屋組みの破壊、床全体の沈下'
                      ],
                      onImagePicked: (path) => viewModel
                          .updateImageField('unevenSettlementImages', [path]),
                    ),

                    _buildRadioGroup(
                      title: '基礎の被害',
                      controller: inputVM.foundationDamageController,
                      options: ['A.無被害', 'B.部分的', 'C.著しい(被害あり)'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('foundationDamageImages', [path]),
                    ),

                    _buildRadioGroup(
                      title: '1階の傾斜',
                      controller: inputVM.firstFloorTiltController,
                      options: ['A.1/60以下', 'B.1/60～1/20', 'C.1/20超'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('firstFloorTiltImages', [path]),
                    ),

                    _buildRadioGroup(
                      title: '壁の被害',
                      controller: inputVM.wallDamageController,
                      options: ['A.軽微なひび割れ', 'B.大きな亀裂、剥離', 'C.落下の危険有り'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('wallDamageImages', [path]),
                    ),

                    _buildRadioGroup(
                      title: '腐食・蟻害',
                      controller: inputVM.corrosionOrTermiteController,
                      options: ['A.ほとんど無し', 'B.一部の断面欠損', 'C.著しい断面欠損'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('corrosionOrTermiteImages', [path]),
                    ),

                    const SizedBox(height: 20),

                    // --- 3. 落下・転倒危険物の危険度 ---
                    _buildSectionTitle('3. 落下・転倒危険物の危険度'),

                    _buildRadioGroup(
                      title: '瓦',
                      controller: inputVM.roofOrSignboardRiskController,
                      options: ['A.ほとんど無被害', 'B.著しいずれ', 'C.全面的にずれ、破損'],
                      onImagePicked: (path) => viewModel.updateImageField(
                          'roofOrSignboardRiskImages', [path]),
                    ),

                    _buildRadioGroup(
                      title: '窓枠・ガラス',
                      controller: inputVM.windowFrameController,
                      options: ['A.ほとんど無被害', 'B.歪み、ひび割れ', 'C.落下の危険有'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('windowFrameImages', [path]),
                    ),

                    _buildRadioGroup(
                      title: '外装材(湿式)',
                      controller: inputVM.exteriorWetController,
                      options: ['A.ほとんど無被害', 'B.部分的なひび割れ、隙間', 'C.顕著なひび割れ、剥離'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('exteriorWetImages', [path]),
                    ),

                    _buildRadioGroup(
                      title: '外装材(乾式)',
                      controller: inputVM.exteriorDryController,
                      options: ['A.目地の亀裂程度', 'B.板に隙間がみられる', 'C.顕著な目地ずれ、板破損'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('exteriorDryImages', [path]),
                    ),

                    _buildRadioGroup(
                      title: '看板・機器',
                      controller: inputVM.signageAndEquipmentController,
                      options: ['A.傾斜無し', 'B.わずかな傾斜', 'C.落下の危険有り'],
                      onImagePicked: (path) => viewModel.updateImageField(
                          'signageAndEquipmentImages', [path]),
                    ),

                    _buildRadioGroup(
                      title: '屋外階段',
                      controller: inputVM.outdoorStairsController,
                      options: ['A.傾斜なし', 'B.わずかな傾斜', 'C.明瞭な傾斜'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('outdoorStairsImages', [path]),
                    ),

                    _buildRadioGroup(
                      title: 'その他',
                      controller: inputVM.othersController,
                      options: ['A.安全', 'B.要注意', 'C.危険'],
                      onImagePicked: (path) =>
                          viewModel.updateImageField('othersImages', [path]),
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
                          exteriorInspectionScore: _parseExteriorScore(
                              inputVM.exteriorInspectionScoreController.text),
                          exteriorInspectionRemarks:
                              inputVM.exteriorInspectionRemarksController.text,
                          adjacentBuildingRisk: _parseDamageLevel(
                              inputVM.adjacentBuildingRiskController.text),
                          unevenSettlement: _parseDamageLevel(
                              inputVM.unevenSettlementController.text),
                          foundationDamage: _parseDamageLevel(
                              inputVM.foundationDamageController.text),
                          firstFloorTilt: _parseDamageLevel(
                              inputVM.firstFloorTiltController.text),
                          wallDamage: _parseDamageLevel(
                              inputVM.wallDamageController.text),
                          corrosionOrTermite: _parseDamageLevel(
                              inputVM.corrosionOrTermiteController.text),
                          roofTile: _parseDamageLevel(
                              inputVM.roofOrSignboardRiskController.text),
                          windowFrame: _parseDamageLevel(
                              inputVM.windowFrameController.text),
                          exteriorWet: _parseDamageLevel(
                              inputVM.exteriorWetController.text),
                          exteriorDry: _parseDamageLevel(
                              inputVM.exteriorDryController.text),
                          signageAndEquipment: _parseDamageLevel(
                              inputVM.signageAndEquipmentController.text),
                          outdoorStairs: _parseDamageLevel(
                              inputVM.outdoorStairsController.text),
                          others:
                              _parseDamageLevel(inputVM.othersController.text),
                          otherRemarks: inputVM.otherRemarksController.text,
                        );
                       
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (_) => MultiProvider(
                              providers: [
                                ChangeNotifierProvider.value(
                                    value:
                                        context.read<InvestigationViewModel>()),
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
  }) {
    // 初期値が空の場合の安全策
    if (controller.text.isEmpty && options.isNotEmpty) {
      // 必要であれば初期値を設定。ここではユーザーの選択を待つため何もしない、またはデフォルト値をセット
      // controller.text = options.first;
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
            ),
        ],
      ),
      children: options.map((option) {
        return ValueListenableBuilder<TextEditingValue>(
          valueListenable: controller,
          builder: (context, value, child) {
            // 文字列比較で選択状態を判定
            // ※データに"Damage"などの接頭辞がつく可能性がある場合は適宜 `contains` 等で調整してください
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

// --- ユーティリティ ---
DamageLevel _parseDamageLevel(String value) {
  if (value.startsWith('A')) return DamageLevel.A;
  if (value.startsWith('B')) return DamageLevel.B;
  if (value.startsWith('C')) return DamageLevel.C;
  return DamageLevel.A;
}

int _parseExteriorScore(String value) {
  if (value.isEmpty) return 5;
  final firstChar = value.trim().substring(0, 1);
  return int.tryParse(firstChar) ?? 5;
}
