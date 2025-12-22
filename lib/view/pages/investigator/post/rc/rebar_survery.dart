import 'package:flutter/cupertino.dart';
import 'package:house_check_mobile/view_model/investigator_post/rebar_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/Form_view_model.dart';
import '../../../../../utils/helpers/damageLevel.dart';
import 'reabar_check.dart';
import '../../../../wigets/image_pickere.dart';
import '../../../../../models/investigator_model.dart';

class RebarSurvery extends StatefulWidget {
  const RebarSurvery({super.key});

  @override
  State<RebarSurvery> createState() => _RebarSurveryState();
}

class _RebarSurveryState extends State<RebarSurvery> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<RebarViewModel>();
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
                    _buildSectionTitle('2. 隣接建築物・周辺地盤等及び構造躯体に関する危険度'),
                    _buildRadioGroup(
                      title: '損傷度Ⅲ以上の損傷部材の有無',
                      controller: inputVM.hasBucklingController,
                      options: [
                        'A.無し',
                        'B.あり',
                      ],
                      onImagePicked: (path) => viewModel.updateImageField(
                          'hasSevereDamageMembersImages', [path]),
                      savedImage: viewModel
                          .rebarRecord?.content.hasSevereDamageMembersImages,
                    ),

                    _buildRadioGroup(
                      title: '隣接建築物・周辺地盤の破壊による危険',
                      controller: inputVM.adjacentBuildingRiskController,
                      options: ['A.危険無し', 'B.不明確', 'C.危険あり'],
                      onImagePicked: (path) => viewModel.updateImageField(
                          'adjacentBuildingRiskImages', [path]),
                      savedImage: viewModel
                          .rebarRecord?.content.adjacentBuildingRiskImages,
                    ),
                    _buildRadioGroup(
                      title: '地盤破壊による建築物全体の傾斜',
                      controller: inputVM.groundFailureInclinationController,
                      options: ['A.0.2m以下', 'B.0.2m～1.0m', 'C.1.0m超'],
                      onImagePicked: (path) => viewModel.updateImageField(
                          'groundFailureInclinationImages', [path]),
                      savedImage: viewModel
                          .rebarRecord?.content.groundFailureInclinationImages,
                    ),
                    _buildRadioGroup(
                      title: '不同沈下による建築物全体の傾斜',
                      controller: inputVM.unevenSettlementController,
                      options: ['A.1/60以下', 'B.1/60～1/30', 'C.1/30超'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('unevenSettlementImages', [path]),
                      savedImage:
                          viewModel.rebarRecord?.content.unevenSettlementImages,
                    ),

                    _buildTextInputSection(
                      label: '柱の被害',
                      controller: inputVM.inspectedFloorsForColumnsController,
                      placeholder: '➄➅の調査階数(被害最大の階)',
                    ),
                    _buildRadio(
                      title: '損傷度Ⅴの柱本数/調査柱本数',
                      inputVM: inputVM,
                      controller1: inputVM.totalColumnsLevel5Controller,
                      controller2: inputVM.surveyedColumnsLevel5Controller,
                      level: 1,
                      onImagePicked: (path) => viewModel.updateImageField(
                          'percentColumnsDamageLevel5Images', [path]),
                      savedImage: viewModel.rebarRecord?.content
                          .percentColumnsDamageLevel5Images,
                    ),
                    _buildRadio(
                      title: '損傷度Ⅳの柱本数/調査柱本数',
                      inputVM: inputVM,
                      controller1: inputVM.totalColumnsLevel4Controller,
                      controller2: inputVM.surveyedColumnsLevel4Controller,
                      level: 2,
                      onImagePicked: (path) => viewModel.updateImageField(
                          'percentColumnsDamageLevel4Images', [path]),
                      savedImage: viewModel.rebarRecord?.content
                          .percentColumnsDamageLevel4Images,
                    ),
                    const SizedBox(height: 20),

                    // --- 3. 落下・転倒危険物の危険度 ---
                    _buildSectionTitle('3. 落下・転倒危険物の危険度'),

                    _buildRadioGroup(
                      title: '窓枠・ガラス',
                      controller: inputVM.windowFrameController,
                      options: ['A.ほとんど無被害', 'B.歪み、ひび割れ', 'C.落下の危険有'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('windowFrameImages', [path]),
                      savedImage:
                          viewModel.rebarRecord?.content.windowFrameImages,
                    ),
                    _buildRadioGroup(
                      title: '外装材(モルタル・タイル・石貼り等)',
                      controller:
                          inputVM.exteriorMaterialMortarTileStoneController,
                      options: ['A.ほとんど無被害', 'B.部分的なひび割れ、隙間', 'C.顕著なひび割れ、剥離'],
                      onImagePicked: (path) => viewModel.updateImageField(
                          'exteriorMaterialMortarTileStoneImages', [path]),
                      savedImage: viewModel.rebarRecord?.content
                          .exteriorMaterialMortarTileStoneImages,
                    ),

                    _buildRadioGroup(
                      title: '外装材(ALC板・PC板・金属・ブロック等)',
                      controller:
                          inputVM.exteriorMaterialALCPCMetalBlockController,
                      options: ['A.目地の亀裂程度', 'B.板に隙間がみられる', 'C.顕著な目地ずれ、板破損'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('exteriorDryImages', [path]),
                      savedImage: viewModel.rebarRecord?.content
                          .exteriorMaterialALCPCMetalBlockImages,
                    ),

                    _buildRadioGroup(
                      title: '看板・機器',
                      controller: inputVM.signageAndEquipmentController,
                      options: ['A.傾斜無し', 'B.わずかな傾斜', 'C.落下の危険有り'],
                      onImagePicked: (path) => viewModel.updateImageField(
                          'signageAndEquipmentImages', [path]),
                      savedImage: viewModel
                          .rebarRecord?.content.signageAndEquipmentImages,
                    ),

                    _buildRadioGroup(
                      title: '屋外階段',
                      controller: inputVM.outdoorStairsController,
                      options: ['A.傾斜なし', 'B.わずかな傾斜', 'C.明瞭な傾斜'],
                      onImagePicked: (path) => viewModel
                          .updateImageField('outdoorStairsImages', [path]),
                      savedImage:
                          viewModel.rebarRecord?.content.outdoorStairsImages,
                    ),

                    _buildRadioGroup(
                      title: 'その他',
                      controller: inputVM.othersController,
                      options: ['A.安全', 'B.要注意', 'C.危険'],
                      onImagePicked: (path) =>
                          viewModel.updateImageField('othersImages', [path]),
                      savedImage: viewModel.rebarRecord?.content.othersImages,
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
                        final Map<String, TextEditingController> controllers = {
                          'exteriorInspectionScoreController':
                              inputVM.exteriorInspectionScoreController,
                          'exteriorInspectionRemarksController':
                              inputVM.exteriorInspectionRemarksController,
                          'hasBucklingController':
                              inputVM.hasBucklingController,
                          'adjacentBuildingRiskController':
                              inputVM.adjacentBuildingRiskController,
                          'groundFailureInclinationController':
                              inputVM.groundFailureInclinationController,
                          'unevenSettlementController':
                              inputVM.unevenSettlementController,
                          'inspectedFloorsForColumnsController':
                              inputVM.inspectedFloorsForColumnsController,
                          'totalColumnsLevel5Controller':
                              inputVM.totalColumnsLevel5Controller,
                          'surveyedColumnsLevel5Controller':
                              inputVM.surveyedColumnsLevel5Controller,
                          'percentColumnsLevel5Controller':
                              inputVM.percentColumnsLevel5Controller,
                          'percentColumnsDamageLevel5Controller':
                              inputVM.percentColumnsDamageLevel5Controller,
                          'totalColumnsLevel4Controller':
                              inputVM.totalColumnsLevel4Controller,
                          'surveyedColumnsLevel4Controller':
                              inputVM.surveyedColumnsLevel4Controller,
                          'percentColumnsLevel4Controller':
                              inputVM.percentColumnsLevel4Controller,
                          'percentColumnsDamageLevel4Controller':
                              inputVM.percentColumnsDamageLevel4Controller,
                          'windowFrameController':
                              inputVM.windowFrameController,
                          'exteriorMaterialMortarTileStoneController':
                              inputVM.exteriorMaterialMortarTileStoneController,
                          'exteriorMaterialALCPCMetalBlockController':
                              inputVM.exteriorMaterialALCPCMetalBlockController,
                          'signageAndEquipmentController':
                              inputVM.signageAndEquipmentController,
                          'outdoorStairsController':
                              inputVM.outdoorStairsController,
                          'othersController': inputVM.othersController,
                          'otherRemarksController':
                              inputVM.otherRemarksController,
                        };

                        controllers.forEach((name, controller) {
                          print('$name: ${controller.text}');
                        });

                        // データ更新ロジック
                        viewModel.updateContent(
                          exteriorInspectionScore: parseExteriorScore(
                              inputVM.exteriorInspectionScoreController.text),
                          exteriorInspectionRemarks:
                              inputVM.exteriorInspectionRemarksController.text,
                          hasSevereDamageMembers: stringToDamageLevel(
                              inputVM.hasBucklingController.text),
                          adjacentBuildingRisk: stringToDamageLevel(
                              inputVM.adjacentBuildingRiskController.text),
                          groundFailureInclination: stringToDamageLevel(
                              inputVM.groundFailureInclinationController.text),
                          unevenSettlement: stringToDamageLevel(
                              inputVM.unevenSettlementController.text),
                          inspectedFloorsForColumns: int.parse(
                              inputVM.inspectedFloorsForColumnsController.text),
                          totalColumnsLevel5: int.parse(
                              inputVM.totalColumnsLevel5Controller.text),
                          surveyedColumnsLevel5: int.tryParse(
                              inputVM.surveyedColumnsLevel5Controller.text),
                          percentColumnsLevel5: double.tryParse(
                              inputVM.percentColumnsLevel5Controller.text),
                          percentColumnsDamageLevel5: stringToDamageLevel(
                              inputVM
                                  .percentColumnsDamageLevel5Controller.text),
                          totalColumnsLevel4: int.parse(
                              inputVM.totalColumnsLevel4Controller.text),
                          surveyedColumnsLevel4: int.tryParse(
                              inputVM.surveyedColumnsLevel4Controller.text),
                          percentColumnsLevel4: double.tryParse(
                              inputVM.percentColumnsLevel4Controller.text),
                          percentColumnsDamageLevel4: stringToDamageLevel(
                              inputVM
                                  .percentColumnsDamageLevel4Controller.text),
                          windowFrame: stringToDamageLevel(
                              inputVM.windowFrameController.text),
                          exteriorMaterialMortarTileStone: stringToDamageLevel(
                              inputVM.exteriorMaterialMortarTileStoneController
                                  .text),
                          exteriorMaterialALCPCMetalBlock: stringToDamageLevel(
                              inputVM.exteriorMaterialALCPCMetalBlockController
                                  .text),
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
                                    value: context.read<RebarViewModel>()),
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

  Widget _buildRadio({
    required String title,
    required FormViewModel inputVM,
    required TextEditingController controller1,
    required TextEditingController controller2,
    required int level,
    Function(String path)? onImagePicked,
    final List<ImagePaths>? savedImage,
  }) {
    final String? path = (savedImage != null && savedImage.isNotEmpty)
        ? savedImage[0].localPath
        : null;

    String name = "";
    List<String> options = [];

    switch (level) {
      case 1:
        name = "Ⅴ";
        options = ["A.1%以下", "B.1%〜10%", "C.10%超"];
        break;
      case 2:
        name = "Ⅳ";
        options = ["A.10%以下", "B.10%〜20%", "C.20%超"];
        break;
    }

    return CupertinoFormSection.insetGrouped(
      header: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(title, style: const TextStyle(fontSize: 15))),
          if (onImagePicked != null)
            ImagePickerButton(
              onImagePicked: (file) {
                if (file != null) onImagePicked(file.path);
              },
              imagePath: path,
            ),
        ],
      ),
      children: [
        /// 入力欄
        CupertinoFormRow(
          child: Row(
            children: [
              SizedBox(
                width: 100,
                child:
                    Text("損傷度$nameの柱：", style: const TextStyle(fontSize: 16)),
              ),
              Expanded(
                child: CupertinoTextField(
                  controller: controller1,
                  textAlign: TextAlign.right,
                  decoration: null,
                ),
              ),
              const SizedBox(width: 12),
              Container(
                width: 1,
                height: 32,
                color: CupertinoColors.systemGrey4,
                margin: const EdgeInsets.symmetric(horizontal: 8),
              ),
              SizedBox(
                width: 100,
                child: Text("調査柱総数：", style: const TextStyle(fontSize: 16)),
              ),
              Expanded(
                child: CupertinoTextField(
                  controller: controller2,
                  textAlign: TextAlign.right,
                  decoration: null,
                ),
              ),
            ],
          ),
        ),

        /// 入力の変化で自動更新（setStateなし）
        ValueListenableBuilder(
          valueListenable: controller1,
          builder: (_, __, ___) {
            if (!mounted) return const SizedBox();
            return ValueListenableBuilder(
              valueListenable: controller2,
              builder: (_, __, ___) {
                if (!mounted) return const SizedBox();
                // DamageLevelを計算
                DamageLevel? levelValue;
                if (level == 1) {
                  levelValue = inputVM.calc5DamageLevel();
                } else if (level == 2) {
                  levelValue = inputVM.calc4DamageLevel();
                }

                // DamageLevelに応じてselectedIndexを決定
                int selectedIndex = 0;
                switch (levelValue) {
                  case DamageLevel.A:
                    selectedIndex = 0;
                    break;
                  case DamageLevel.B:
                    selectedIndex = 1;
                    break;
                  case DamageLevel.C:
                    selectedIndex = 2;
                    break;
                  default:
                    selectedIndex = 0;
                }
                if (level == 1) {
                  inputVM.percentColumnsDamageLevel5Controller.text =
                      options[selectedIndex];
                } else {
                  inputVM.percentColumnsDamageLevel4Controller.text =
                      options[selectedIndex];
                }

                return Column(
                  children: options.asMap().entries.map((e) {
                    final index = e.key;
                    final option = e.value;

                    final bool isSelected = index == selectedIndex;

                    return CupertinoFormRow(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              option,
                              style: TextStyle(
                                fontSize: 16,
                                color: isSelected
                                    ? CupertinoColors.activeBlue
                                    : CupertinoColors.label,
                                fontWeight: isSelected
                                    ? FontWeight.w600
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                          if (isSelected)
                            const Icon(
                              CupertinoIcons.checkmark,
                              color: CupertinoColors.activeBlue,
                              size: 20,
                            ),
                        ],
                      ),
                    );
                  }).toList(),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
