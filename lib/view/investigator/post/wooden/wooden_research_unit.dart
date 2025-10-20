import 'package:flutter/material.dart';
import '../../../../models/investigator_post_model.dart';
import '../../../../controllers/investigator_post_controller.dart';
import 'package:intl/intl.dart';

class WoodenResearchUnit extends StatefulWidget {
  const WoodenResearchUnit({super.key});

  @override
  State<WoodenResearchUnit> createState() => _WoodenResearchUnitState();
}

class _WoodenResearchUnitState extends State<WoodenResearchUnit> {
  final _formKey = GlobalKey<FormState>();

  // --- コントローラ ---
  final controller = InvestigatorPostController();
  DateTime selectedDate = DateTime.now();

  // --- 日付選択 ---
  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('調査単位入力')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // --- 調査日 ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '調査日: ${DateFormat('yyyy-MM-dd').format(selectedDate)}',
                    ),
                    ElevatedButton(
                      onPressed: () => _pickDate(context),
                      child: const Text('日付を選択'),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // --- 調査人氏名 ---
                TextFormField(
                  controller: controller.nameController,
                  decoration: const InputDecoration(labelText: '調査人氏名'),
                  validator: (value) => value!.isEmpty ? '調査人氏名は必須です' : null,
                ),

                // --- 調査人番号 ---
                TextFormField(
                  controller: controller.investigatorNumberController,
                  decoration: const InputDecoration(labelText: '調査人番号'),
                  validator: (value) => value!.isEmpty ? '調査人番号は必須です' : null,
                ),

                // --- 都道府県 ---
                TextFormField(
                  controller: controller.prefectureController,
                  decoration: const InputDecoration(labelText: '都道府県名'),
                  validator: (value) => value!.isEmpty ? '都道府県名は必須です' : null,
                ),

                // --- 整理番号 ---
                TextFormField(
                  controller: controller.numberController,
                  decoration: const InputDecoration(labelText: '整理番号'),
                  validator: (value) => value!.isEmpty ? '整理番号は必須です' : null,
                ),

                // --- 調査回数 ---
                TextFormField(
                  controller: controller.countController,
                  decoration: const InputDecoration(labelText: '調査回数'),
                  keyboardType: TextInputType.number,
                  validator: (value) => value!.isEmpty ? '調査回数は必須です' : null,
                ),

                const SizedBox(height: 20),

                // --- 送信ボタン ---
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // ✅ InvestigationUnit のインスタンスを作成
                      InvestigationUnit unit =
                          controller.createInvestigationUnit(selectedDate);
                      // 確認用に出力
                      print('調査単位データ: ${unit.toString()}');

                      // ページ遷移の例（次の画面に渡す）
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WoodenResearchUnit(),
                        ),
                      );
                    }
                  },
                  child: const Text('送信'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
