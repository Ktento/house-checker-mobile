import 'package:flutter/material.dart';
import '../models/investigator_post_model.dart';

class InvestigatorPostController {
  //調査単位用のコントローラー
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController prefectureController = TextEditingController();
  final TextEditingController investigatorNumberController =
      TextEditingController();
  final TextEditingController countController = TextEditingController();

  //建築物概要用のコントローラー
  final TextEditingController buildingNameController = TextEditingController();
  final TextEditingController buildingNumberController =
      TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController mapNumberController = TextEditingController();
  final TextEditingController buildingUseController = TextEditingController();
  final TextEditingController structureController = TextEditingController();
  final TextEditingController floorsController = TextEditingController();
  final TextEditingController scaleController = TextEditingController();

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

  BuildingOverview createBuildingOverview() {
    return BuildingOverview(
      buildingName: buildingNameController.text,
      buildingNumber: buildingNumberController.text,
      address: addressController.text,
      mapNumber: mapNumberController.text,
      buildingUse: buildingUseController.text,
      structure: structureController.text,
      floors: int.tryParse(floorsController.text) ?? 1,
      scale: scaleController.text,
    );
  }
}
