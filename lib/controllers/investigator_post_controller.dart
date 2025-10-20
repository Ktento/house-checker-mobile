import 'package:flutter/material.dart';
import '../models/investigator_post_model.dart';

class InvestigatorPostController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController prefectureController = TextEditingController();
  final TextEditingController investigatorNumberController =
      TextEditingController();
  final TextEditingController countController = TextEditingController();

  /// 入力内容から InvestigationUnit モデルを生成
  InvestigationUnit createInvestigationUnit(DateTime now) {
    return InvestigationUnit(
      date: now, // 現在日時を設定（手動入力でも可）
      investigator: [nameController.text],
      number: numberController.text,
      prefecture: [prefectureController.text],
      surveyCount: int.tryParse(countController.text) ?? 1, // 数字で変換
      investigatorNumber: [investigatorNumberController.text],
    );
  }
}
