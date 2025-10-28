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

  //調査内容用のコントローラー

  /// --- １.一見して危険と判断される(外観調査) ---
  final TextEditingController exteriorInspectionScoreController =
      TextEditingController();
  final TextEditingController exteriorInspectionRemarksController =
      TextEditingController();

  /// --- ２.隣接建築物・周辺地盤等及び構造躯体に関する危険度 ---
  final TextEditingController adjacentBuildingRiskController =
      TextEditingController();
  final TextEditingController unevenSettlementController =
      TextEditingController();
  final TextEditingController foundationDamageController =
      TextEditingController();
  final TextEditingController firstFloorTiltController =
      TextEditingController();
  final TextEditingController wallDamageController = TextEditingController();
  final TextEditingController corrosionOrTermiteController =
      TextEditingController();

  // --- ３.落下危険物・転倒危険物に関する危険度 ---
  final TextEditingController roofOrSignboardRiskController =
      TextEditingController();
  final TextEditingController windowFrameController = TextEditingController();
  final TextEditingController exteriorWetController = TextEditingController();
  final TextEditingController exteriorDryController = TextEditingController();
  final TextEditingController signageAndEquipmentController =
      TextEditingController();
  final TextEditingController outdoorStairsController = TextEditingController();
  final TextEditingController othersController = TextEditingController();
  final TextEditingController otherRemarksController = TextEditingController();

  // --- 総合評価 ---

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

  /// 入力内容から BuildingOverview モデルを生成
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

  /// 入力内容から InvestigationContent モデルを生成
  InvestigationContent createInvestigationContent() {
    return InvestigationContent(
      exteriorInspectionScore:
          int.tryParse(exteriorInspectionScoreController.text) ?? 0,
      exteriorInspectionRemarks: exteriorInspectionRemarksController.text,
      adjacentBuildingRisk:
          _parseDamageLevel(adjacentBuildingRiskController.text),
      unevenSettlement: _parseDamageLevel(unevenSettlementController.text),
      foundationDamage: _parseDamageLevel(foundationDamageController.text),
      firstFloorTilt: _parseDamageLevel(firstFloorTiltController.text),
      wallDamage: _parseDamageLevel(wallDamageController.text),
      corrosionOrTermite: _parseDamageLevel(corrosionOrTermiteController.text),
      roofTile: _parseDamageLevel(roofOrSignboardRiskController.text),
      windowFrame: _parseDamageLevel(windowFrameController.text),
      exteriorWet: _parseDamageLevel(exteriorWetController.text),
      exteriorDry: _parseDamageLevel(exteriorDryController.text),
      signageAndEquipment:
          _parseDamageLevel(signageAndEquipmentController.text),
      outdoorStairs: _parseDamageLevel(outdoorStairsController.text),
      others: _parseDamageLevel(othersController.text),
      otherRemarks: otherRemarksController.text,
      overallExteriorScore: overallExteriorScore(),
      overallStructuralScore: overallStructuralScore(),
      overallFallingObjectScore: overallFallingObjectScore(),
    );
  }

  //総合評価を作成し、送信するレコードを作成
  InvestigationRecord createInvestigationRecord(InvestigationUnit unit,
      BuildingOverview overview, InvestigationContent content) {
    return InvestigationRecord(
        unit: unit,
        overview: overview,
        content: content,
        overallScore: overallScore(content));
  }

  // DamageLevel列挙型への変換ヘルパー
  DamageLevel _parseDamageLevel(String value) {
    switch (value.toUpperCase()) {
      case 'A':
        return DamageLevel.A;
      case 'B':
        return DamageLevel.B;
      case 'C':
        return DamageLevel.C;
      default:
        return DamageLevel.C; // デフォルト値
    }
  }

  //外観調査の総合スコアの判定
  String overallExteriorScore() {
    //外観調査の時点で危険の場合はスコアC
    if (int.tryParse(exteriorInspectionScoreController.text) != 0) {
      return 'C';
    } else {
      return 'AB';
    }
  }

  //隣接建築物・周辺地盤等及び構造躯体に関する危険度の総合スコアの判定
  DamageLevel overallStructuralScore() {
    List<DamageLevel> levels = [
      _parseDamageLevel(adjacentBuildingRiskController.text),
      _parseDamageLevel(unevenSettlementController.text),
      _parseDamageLevel(foundationDamageController.text),
      _parseDamageLevel(firstFloorTiltController.text),
      _parseDamageLevel(wallDamageController.text),
      _parseDamageLevel(corrosionOrTermiteController.text),
    ];
    //C評価が一つでもあればC、B評価が一つでもあればB、全てAならA
    if (levels.contains(DamageLevel.C)) {
      return DamageLevel.C;
    } else if (levels.contains(DamageLevel.B)) {
      return DamageLevel.B;
    } else {
      return DamageLevel.A;
    }
  }

  //落下危険物・転倒危険物に関する危険度の総合スコアの判定
  DamageLevel overallFallingObjectScore() {
    List<DamageLevel> levels = [
      _parseDamageLevel(roofOrSignboardRiskController.text),
      _parseDamageLevel(windowFrameController.text),
      _parseDamageLevel(exteriorWetController.text),
      _parseDamageLevel(exteriorDryController.text),
      _parseDamageLevel(signageAndEquipmentController.text),
      _parseDamageLevel(outdoorStairsController.text),
      _parseDamageLevel(othersController.text),
    ];
    //C評価が一つでもあればC、B評価が一つでもあればB、全てAならA
    if (levels.contains(DamageLevel.C)) {
      return DamageLevel.C;
    } else if (levels.contains(DamageLevel.B)) {
      return DamageLevel.B;
    } else {
      return DamageLevel.A;
    }
  }

  //家屋危険度を算出する関数
  OverallScore overallScore(InvestigationContent content) {
    //１の外観調査の点数がついている場合は赤
    if (content.exteriorInspectionScore != 0) {
      return OverallScore.red;

      //２と３の調査項目のレベルが高い方を危険度として採用
      //２と３のどちらかがレベルCだった場合危険度は赤
    } else if (content.overallStructuralScore == DamageLevel.C ||
        content.overallFallingObjectScore == DamageLevel.C) {
      return OverallScore.red;
      //２と３のどちらかがレベルBだった場合、危険度は黄色
    } else if (content.overallStructuralScore == DamageLevel.B ||
        content.overallFallingObjectScore == DamageLevel.B) {
      return OverallScore.yellow;
    } else {
      return OverallScore.green;
    }
  }
}
