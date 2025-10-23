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
      print('調査単位データ: ${unit.toString()}');

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
                  _buildCupertinoTextField(
                      label: '都道府県名',
                      controller: controller.prefectureController),
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
