import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house_check_mobile/view/investigator/post/wooden/wooden_building_overview.dart';
import 'package:intl/intl.dart';
import '../../../../models/investigator_post_model.dart';
import '../../../../controllers/investigator_post_controller.dart';

class WoodenResearchUnit extends StatefulWidget {
  const WoodenResearchUnit({super.key});

  @override
  State<WoodenResearchUnit> createState() => _WoodenResearchUnitState();
}

class _WoodenResearchUnitState extends State<WoodenResearchUnit> {
  final _formKey = GlobalKey<FormState>();
  final controller = InvestigatorPostController();
  DateTime selectedDate = DateTime.now();

  Future<void> _pickDate(BuildContext context) async {
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
                initialDateTime: selectedDate,
                minimumDate: DateTime(2020),
                maximumDate: DateTime(2030),
                onDateTimeChanged: (DateTime newDate) {
                  setState(() => selectedDate = newDate);
                },
              ),
            ),
            CupertinoButton(
              child: const Text('完了',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      InvestigationUnit unit = controller.createInvestigationUnit(selectedDate);
      print('調査単位データ: ${unit.prefecture}');

      Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => const WoodenBuildigOverview()),
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

  var _selectedValue = 0;
  final _prefectures = [
    "北海道",
    "青森県",
    "岩手県",
    "宮城県",
    "秋田県",
    "山形県",
    "福島県",
    "茨城県",
    "栃木県",
    "群馬県",
    "埼玉県",
    "千葉県",
    "東京都",
    "神奈川県",
    "新潟県",
    "富山県",
    "石川県",
    "福井県",
    "山梨県",
    "長野県",
    "岐阜県",
    "静岡県",
    "愛知県",
    "三重県",
    "滋賀県",
    "京都府",
    "大阪府",
    "兵庫県",
    "奈良県",
    "和歌山県",
    "鳥取県",
    "島根県",
    "岡山県",
    "広島県",
    "山口県",
    "徳島県",
    "香川県",
    "愛媛県",
    "高知県",
    "福岡県",
    "佐賀県",
    "長崎県",
    "熊本県",
    "大分県",
    "宮崎県",
    "鹿児島県",
    "沖縄県",
  ];
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

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('調査単位入力'),
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
                  // --- 調査日 ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '調査日: ${DateFormat('yyyy-MM-dd').format(selectedDate)}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: CupertinoColors.label,
                        ),
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => _pickDate(context),
                        child: const Text('変更',
                            style:
                                TextStyle(color: CupertinoColors.activeBlue)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // --- 各入力項目 ---
                  _buildCupertinoTextField(
                      label: '調査人氏名', controller: controller.nameController),
                  _buildCupertinoTextField(
                      label: '調査人番号',
                      controller: controller.investigatorNumberController),
                  // _buildCupertinoTextField(
                  //     label: '都道府県名',
                  //     controller: controller.prefectureController),
                  GestureDetector(
                    onTap: () {
                      _showPicker(context, _prefectures, _selectedValue,
                          (newIndex) {
                        setState(() {
                          _selectedValue = newIndex;
                          controller.prefectureController.text =
                              _prefectures[newIndex];
                        });
                      });
                    },
                    child: AbsorbPointer(
                      child: _buildCupertinoTextField(
                        label: '都道府県名',
                        controller: controller.prefectureController,
                      ),
                    ),
                  ),
                  _buildCupertinoTextField(
                      label: '整理番号', controller: controller.numberController),
                  _buildCupertinoTextField(
                    label: '調査回数',
                    controller: controller.countController,
                    numeric: true,
                  ),

                  const SizedBox(height: 30),

                  // --- 次の画面に行く ---
                  Center(
                    child: CupertinoButton.filled(
                      onPressed: _submitForm,
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
  }
}
