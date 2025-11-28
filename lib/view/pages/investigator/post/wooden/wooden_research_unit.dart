import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import '../../../../../view_model/investigator_post_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../../models/investigator_model.dart';
import '../../../../../view_model/Form_view_model.dart';
import './wooden_building_overview.dart';
import '../../../../../view_model/location_view_model.dart';
import '../../../../../view_model/location_view_model.dart';

class WoodenResearchUnit extends StatelessWidget {
  const WoodenResearchUnit({super.key});

  @override
  Widget build(BuildContext context) {
    final locationViewModel = context.watch<LocationViewModel>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            final post = InvestigationViewModel();
            post.setRecord(InvestigationRecord.empty());
            return post;
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            final record = context.read<InvestigationViewModel>().record;
            return FormViewModel(record: record);
          },
        ),
      ],
      child: Consumer2<InvestigationViewModel, FormViewModel>(
        builder: (context, viewModel, inputVM, _) {
          return CupertinoPageScaffold(
            backgroundColor: CupertinoColors.systemGroupedBackground,
            navigationBar: const CupertinoNavigationBar(
              middle: Text('調査単位入力'),
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
                              // --- 調査日 ---
                              GestureDetector(
                                onTap: () => _pickDate(context, inputVM),
                                child: CupertinoFormRow(
                                  prefix: const Row(
                                    children: [
                                      Icon(CupertinoIcons.calendar,
                                          color: CupertinoColors.systemGrey),
                                      SizedBox(width: 6),
                                      Text('調査日'),
                                    ],
                                  ),
                                  helper: null,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        DateFormat('yyyy-MM-dd')
                                            .format(inputVM.selectedDate),
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: CupertinoColors.label,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      const Icon(CupertinoIcons.chevron_forward,
                                          size: 16,
                                          color: CupertinoColors.systemGrey3)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          CupertinoFormSection.insetGrouped(
                            header: const Text('調査員情報'),
                            children: [
                              // --- 調査人氏名 ---
                              _buildNativeInputRow(
                                icon: CupertinoIcons.person,
                                label: '調査人氏名',
                                controller: inputVM.nameController,
                                placeholder: '氏名を入力',
                              ),
                              // --- 調査人番号 ---
                              _buildNativeInputRow(
                                icon: CupertinoIcons.number,
                                label: '調査人番号',
                                controller:
                                    inputVM.investigatorNumberController,
                                placeholder: '番号を入力',
                              ),
                              // --- 調査人都道府県名 ---
                              GestureDetector(
                                onTap: () {
                                  _showPicker(
                                    context,
                                    inputVM.prefectures,
                                    inputVM.selectedPrefectureIndex,
                                    (newIndex) {
                                      inputVM.setSelectedPrefecture(newIndex);
                                    },
                                  );
                                },
                                child: CupertinoFormRow(
                                  prefix: const Row(
                                    children: [
                                      Icon(CupertinoIcons.map,
                                          color: CupertinoColors.systemGrey),
                                      SizedBox(width: 6),
                                      Text('都道府県'),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        inputVM.investigatorPrefectureController
                                                .text.isEmpty
                                            ? '選択'
                                            : inputVM
                                                .investigatorPrefectureController
                                                .text,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: inputVM
                                                  .investigatorPrefectureController
                                                  .text
                                                  .isEmpty
                                              ? CupertinoColors.placeholderText
                                              : CupertinoColors.label,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      const Icon(CupertinoIcons.chevron_forward,
                                          size: 16,
                                          color: CupertinoColors.systemGrey3),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          CupertinoFormSection.insetGrouped(
                            header: const Text('詳細情報'),
                            children: [
                              // --- 整理番号 ---
                              _buildNativeInputRow(
                                icon: CupertinoIcons.doc_text,
                                label: '整理番号',
                                controller: inputVM.numberController,
                                placeholder: '整理番号を入力',
                              ),
                              // --- 調査回数 ---
                              _buildNativeInputRow(
                                icon: CupertinoIcons.arrow_2_circlepath,
                                label: '調査回数',
                                controller: inputVM.countController,
                                placeholder: '0',
                                keyboardType: TextInputType.number,
                              ),
                            ],
                          ),

                          // 下部の余白確保
                          const SizedBox(height: 100),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color:
                          CupertinoColors.systemBackground.resolveFrom(context),
                      border: const Border(
                        top: BorderSide(
                            color: CupertinoColors.separator, width: 0.5),
                      ),
                    ),
                    child: CupertinoButton.filled(
                      onPressed: () {
                        viewModel.updateUnit(
                          buildingtype: "W",
                          number: inputVM.numberController.text,
                          date: inputVM.selectedDate,
                          surveyCount:
                              int.tryParse(inputVM.countController.text) ?? 0,
                          investigator: [inputVM.nameController.text],
                          investigatorPrefecture: [
                            inputVM.investigatorPrefectureController.text
                          ],
                          investigatorNumber: [
                            inputVM.investigatorNumberController.text
                          ],
                          currentPosition: locationViewModel.currentPosition,
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
                                ChangeNotifierProvider.value(
                                    value: context.read<LocationViewModel>()),
                              ],
                              child: WoodenBuildingOverview(),
                            ),
                          ),
                        );
                      },
                      borderRadius: BorderRadius.circular(12),
                      child: const Text('次へ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
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
          const SizedBox(width: 6),
          Text(label),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: CupertinoTextField(
        controller: controller,
        placeholder: placeholder,
        keyboardType: keyboardType,
        textAlign: TextAlign.end, // 入力テキストを右寄せに（iOS標準スタイル）
        decoration: null, // 枠線を消して背景に溶け込ませる
        style: const TextStyle(fontSize: 16),
        padding: EdgeInsets.zero,
      ),
    );
  }
}

Future<void> _pickDate(BuildContext context, FormViewModel inputVM) async {
  await showCupertinoModalPopup(
    context: context,
    builder: (_) => Container(
      height: 280,
      color: CupertinoColors.systemBackground.resolveFrom(context),
      child: Column(
        children: [
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
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: inputVM.selectedDate,
              minimumDate: DateTime(2020),
              maximumDate: DateTime(2030),
              onDateTimeChanged: (DateTime newDate) {
                inputVM.setSelectedDate(newDate);
              },
            ),
          ),
        ],
      ),
    ),
  );
}

void _showPicker(BuildContext context, List<String> items, int selectedIndex,
    ValueChanged<int> onChanged) {
  showCupertinoModalPopup(
    context: context,
    builder: (_) => Container(
      height: 280,
      color: CupertinoColors.systemBackground,
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
                  FixedExtentScrollController(initialItem: selectedIndex),
              children: items.map((e) => Center(child: Text(e))).toList(),
              onSelectedItemChanged: onChanged,
            ),
          ),
        ],
      ),
    ),
  );
}
