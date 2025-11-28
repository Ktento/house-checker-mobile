import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/Form_view_model.dart';
import '../../../../../view_model/investigator_post_view_model.dart';
import './wooden_survery.dart';

class WoodenBuildingOverview extends StatelessWidget {
  const WoodenBuildingOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<InvestigationViewModel>();
    final inputVM = context.read<FormViewModel>();

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('木造建築物概要入力'),
        automaticallyImplyLeading: false,
      ),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Form(
                child: ListView(
                  children: [
                    CupertinoFormSection.insetGrouped(
                      header: const Text('基本情報'),
                      children: [
                        _buildNativeInputRow(
                          icon: CupertinoIcons.building_2_fill,
                          label: '建築物名称',
                          controller: inputVM.buildingNameController,
                          placeholder: '名称を入力',
                        ),
                        _buildNativeInputRow(
                          icon: CupertinoIcons.number,
                          label: '建築物番号',
                          controller: inputVM.buildingNumberController,
                          placeholder: '番号を入力',
                        ),
                        _buildNativeInputRow(
                          icon: CupertinoIcons.map_pin_ellipse,
                          label: '建築物所在地',
                          controller: inputVM.addressController,
                          placeholder: '住所を入力',
                        ),
                        _buildNativeInputRow(
                          icon: CupertinoIcons.map,
                          label: '地図整理番号',
                          controller: inputVM.mapNumberController,
                          placeholder: '番号を入力',
                        ),
                      ],
                    ),

                    CupertinoFormSection.insetGrouped(
                      header: const Text('構造・用途'),
                      children: [
                        _buildPickerRow(
                          context: context,
                          icon: CupertinoIcons.briefcase,
                          label: '建築物用途',
                          controller: inputVM.buildingUseController,
                          options: [
                            '戸建て専用住宅',
                            '長屋住宅',
                            '共同住宅',
                            '併用住宅',
                            '店舗',
                            '事務所',
                            '旅館・ホテル',
                            '庁舎等公共施設',
                            '病院・診療所',
                            '保育所',
                            '工場',
                            '倉庫',
                            '学校',
                            '劇場、遊戯場等',
                            'その他',
                          ],
                        ),
                        _buildPickerRow(
                          context: context,
                          icon: CupertinoIcons.hammer,
                          label: '構造形式',
                          controller: inputVM.structureController,
                          options: [
                            '在来軸組法',
                            '枠組(壁)工法(ツーバイフォー)',
                            'プレファブ',
                            'その他',
                          ],
                        ),
                      ],
                    ),
                    CupertinoFormSection.insetGrouped(
                      header: const Text('規模'),
                      children: [
                        _buildNativeInputRow(
                          icon: CupertinoIcons.layers_alt,
                          label: '階層',
                          controller: inputVM.floorsController,
                          placeholder: '階数を入力',
                          keyboardType: TextInputType.number,
                        ),
                        _buildNativeInputRow(
                          icon: CupertinoIcons.resize,
                          label: '規模',
                          controller: inputVM.scaleController,
                          placeholder: '規模を入力',
                        ),
                      ],
                    ),

                    // 下部の余白
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
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
                  // 戻るボタン
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
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // 次へボタン
                  Expanded(
                    child: CupertinoButton.filled(
                      padding: EdgeInsets.zero,
                      borderRadius: BorderRadius.circular(12),
                      onPressed: () {
                        viewModel.updateOverview(
                          buildingName: inputVM.buildingNameController.text,
                          buildingNumber: inputVM.buildingNumberController.text,
                          address: inputVM.addressController.text,
                          mapNumber: inputVM.mapNumberController.text,
                          buildingUse: inputVM.buildingUseController.text,
                          structure: inputVM.structureController.text,
                          floors:
                              int.tryParse(inputVM.floorsController.text) ?? 0,
                          scale: inputVM.scaleController.text,
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
                              child: WoodenSurvery(), 
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        '次へ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
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

  Widget _buildNativeInputRow({
    required IconData icon,
    required String label,
    required TextEditingController controller,
    String? placeholder,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return CupertinoFormRow(
      prefix: Row(
        children: [
          Icon(icon, color: CupertinoColors.systemGrey),
          const SizedBox(width: 8),
          Text(label),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: CupertinoTextField(
        controller: controller,
        placeholder: placeholder,
        keyboardType: keyboardType,
        textAlign: TextAlign.end,
        decoration: null, // 枠線なし
        style: const TextStyle(fontSize: 16),
        padding: EdgeInsets.zero,
      ),
    );
  }

  Widget _buildPickerRow({
    required BuildContext context,
    required IconData icon,
    required String label,
    required TextEditingController controller,
    required List<String> options,
  }) {
  
    if (controller.text.isEmpty && options.isNotEmpty) {
      controller.text = options.first;
    }

    return GestureDetector(
      onTap: () {
        _showNativePicker(context, options, controller);
      },
      child: CupertinoFormRow(
        prefix: Row(
          children: [
            Icon(icon, color: CupertinoColors.systemGrey),
            const SizedBox(width: 8),
            Text(label),
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                controller.text,
                textAlign: TextAlign.end,
                style: const TextStyle(
                  fontSize: 16,
                  color: CupertinoColors.label,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 6),
            const Icon(CupertinoIcons.chevron_down,
                size: 14, color: CupertinoColors.systemGrey3),
          ],
        ),
      ),
    );
  }

  void _showNativePicker(BuildContext context, List<String> options,
      TextEditingController controller) {
    final int initialIndex = options.indexOf(controller.text);
    final int startIndex = initialIndex >= 0 ? initialIndex : 0;

    showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 250,
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: Column(
          children: [
            // ツールバー
            Container(
              height: 44,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: CupertinoColors.systemGrey5)),
              ),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Text('完了',
                    style: TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Expanded(
              child: CupertinoPicker(
                itemExtent: 32,
                scrollController:
                    FixedExtentScrollController(initialItem: startIndex),
                children: options.map((e) => Center(child: Text(e))).toList(),
                onSelectedItemChanged: (index) {
                  controller.text = options[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
