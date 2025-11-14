import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import '../../../../../view_model/investigator_post_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../../models/investigator_model.dart';
import '../../../../../view_model/Form_view_model.dart';
import './wooden_building_overview.dart';

class WoodenResearchUnit extends StatelessWidget {
  const WoodenResearchUnit({super.key});

  @override
  Widget build(BuildContext context) {
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
            navigationBar: const CupertinoNavigationBar(
              middle: Text('調査単位入力'),
            ),
            child: SafeArea(
              child: Form(
                child: CupertinoScrollbar(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // --- 調査日 ---
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '調査日: ${DateFormat('yyyy-MM-dd').format(inputVM.selectedDate)}',
                              style: const TextStyle(
                                fontSize: 16,
                                color: CupertinoColors.label,
                              ),
                            ),
                            CupertinoButton(
                              padding: EdgeInsets.zero,
                              onPressed: () => _pickDate(context, inputVM),
                              child: const Text('変更',
                                  style: TextStyle(
                                      color: CupertinoColors.activeBlue)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // --- 各入力項目 ---
                        buildCupertinoInputField(
                            label: '調査人氏名', controller: inputVM.nameController),
                        buildCupertinoInputField(
                            label: '調査人番号',
                            controller: inputVM.investigatorNumberController),

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
                          child: AbsorbPointer(
                            child: buildCupertinoInputField(
                                label: '調査人都道府県名',
                                controller:
                                    inputVM.investigatorPrefectureController),
                          ),
                        ),
                        buildCupertinoInputField(
                            label: '整理番号',
                            controller: inputVM.numberController),
                        buildCupertinoInputField(
                            label: '調査回数', controller: inputVM.countController),
                        const SizedBox(height: 30),

                        // --- 次の画面に行く ---
                        Center(
                          child: CupertinoButton.filled(
                            onPressed: () {
                              viewModel.updateUnit(
                                buildingtype: "木造建築物",
                                number: inputVM.numberController.text,
                                date: inputVM.selectedDate,
                                surveyCount: int.tryParse(
                                        inputVM.countController.text) ??
                                    0,
                                investigator: [inputVM.nameController.text],
                                investigatorPrefecture: [
                                  inputVM.investigatorPrefectureController.text
                                ],
                                investigatorNumber: [
                                  inputVM.investigatorNumberController.text
                                ],
                                currentPosition: LatLng(0, 0),
                              );

                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (_) => MultiProvider(
                                    providers: [
                                      ChangeNotifierProvider.value(
                                          value: context
                                              .read<InvestigationViewModel>()),
                                      ChangeNotifierProvider.value(
                                          value: context.read<FormViewModel>()),
                                    ],
                                    child: WoodenBuildingOverview(),
                                  ),
                                ),
                              );
                            },
                            borderRadius: BorderRadius.circular(12),
                            child: const Text('次へ'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

//日にちを選択するためのwiget
Future<void> _pickDate(BuildContext context, FormViewModel inputVM) async {
  await showCupertinoModalPopup(
    context: context,
    builder: (_) => Container(
      height: 260,
      color: CupertinoColors.systemBackground.resolveFrom(context),
      child: Column(
        children: [
          SizedBox(
            height: 200,
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
          CupertinoButton(
            child:
                const Text('完了', style: TextStyle(fontWeight: FontWeight.bold)),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    ),
  );
}

//入力フォームのwiget
Widget buildCupertinoInputField({
  required String label,
  required TextEditingController controller,
  TextInputType keyboardType = TextInputType.text,
  String? placeholder,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
          fontSize: 14,
          color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(height: 4),
      CupertinoTextField(
        controller: controller,
        keyboardType: keyboardType,
        placeholder: placeholder ?? '$label を入力',
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

//都道府県名を選択するためのwiget
void _showPicker(BuildContext context, List<String> items, int selectedIndex,
    ValueChanged<int> onChanged) {
  showCupertinoModalPopup(
    context: context,
    builder: (_) => Container(
      height: 250,
      color: CupertinoColors.systemBackground,
      child: Column(
        children: [
          SizedBox(
            height: 180,
            child: CupertinoPicker(
              itemExtent: 32,
              scrollController:
                  FixedExtentScrollController(initialItem: selectedIndex),
              children: items.map((e) => Center(child: Text(e))).toList(),
              onSelectedItemChanged: onChanged,
            ),
          ),
          CupertinoButton(
            child: const Text('完了'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    ),
  );
}
