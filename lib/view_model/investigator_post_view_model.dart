import 'package:flutter/foundation.dart';
import '../models/investigator_model.dart';
import 'package:latlong2/latlong.dart';

class InvestigationViewModel extends ChangeNotifier {
  InvestigationRecord? _record;

  InvestigationRecord? get record => _record;

  //すべてのスコアを計算
  void _recalculateScores() {
    if (_record == null) return;

    final updatedContent = _record!.content.copyWith(
      overallStructuralScore: _calcOverallStructuralScore(),
      overallFallingObjectScore: _calcOverallFallingObjectScore(),
    );

    final updatedOverallScore = _calcOverallScore(updatedContent);

    _record = _record!.copyWith(
      content: updatedContent,
      overallScore: updatedOverallScore,
    );
  }

  void setRecord(InvestigationRecord record) {
    _record = record;
    _recalculateScores();
    notifyListeners();
  }

  void updateCurrentPosition(LatLng newPosition) {
    if (_record == null) return;

    _record = _record!.copyWith(
      unit: _record!.unit.copyWith(currentPosition: newPosition),
    );

    notifyListeners();
  }

  //Unitの一部を更新するメソッド
  void updateUnit(
      {String? buildingtype,
      String? number,
      DateTime? date,
      int? surveyCount,
      List<String>? investigator,
      List<String>? investigatorPrefecture,
      List<String>? investigatorNumber,
      LatLng? currentPosition}) {
    if (_record == null) return;
    final updatedUnit = _record!.unit.copyWith(
      buildingtype: buildingtype ?? _record!.unit.buildingtype,
      currentPosition: currentPosition ?? _record!.unit.currentPosition,
      surveyCount: surveyCount ?? _record!.unit.surveyCount,
      investigator: investigator ?? _record!.unit.investigator,
      investigatorPrefecture:
          investigatorPrefecture ?? _record!.unit.investigatorPrefecture,
      investigatorNumber:
          investigatorNumber ?? _record!.unit.investigatorNumber,
    );

    _record = _record!.copyWith(unit: updatedUnit);
    notifyListeners();
  }

  /// Overviewの一部を更新するメソッド
  void updateOverview({
    String? buildingName,
    String? buildingNumber,
    String? address,
    String? mapNumber,
    String? buildingUse,
    String? structure,
    int? floors,
    String? scale,
  }) {
    if (_record == null) return;

    final updatedOverview = _record!.overview.copyWith(
      buildingName: buildingName ?? _record!.overview.buildingName,
      buildingNumber: buildingNumber ?? _record!.overview.buildingNumber,
      address: address ?? _record!.overview.address,
      mapNumber: mapNumber ?? _record!.overview.mapNumber,
      buildingUse: buildingUse ?? _record!.overview.buildingUse,
      structure: structure ?? _record!.overview.structure,
      floors: floors ?? _record!.overview.floors,
      scale: scale ?? _record!.overview.scale,
    );

    _record = _record!.copyWith(overview: updatedOverview);
    notifyListeners();
  }

  //Contentの一部を更新するメソッド
  void updateContent({
    int? exteriorInspectionScore,
    String? exteriorInspectionRemarks,
    DamageLevel? adjacentBuildingRisk,
    DamageLevel? unevenSettlement,
    DamageLevel? foundationDamage,
    DamageLevel? firstFloorTilt,
    DamageLevel? wallDamage,
    DamageLevel? corrosionOrTermite,
    DamageLevel? roofTile,
    DamageLevel? windowFrame,
    DamageLevel? exteriorWet,
    DamageLevel? exteriorDry,
    DamageLevel? signageAndEquipment,
    DamageLevel? outdoorStairs,
    DamageLevel? others,
    String? otherRemarks,
    String? overallExteriorScore,
    DamageLevel? overallStructuralScore,
    DamageLevel? overallFallingObjectScore,
  }) {
    if (_record == null) return;

    final updatedContent = _record!.content.copyWith(
      exteriorInspectionScore:
          exteriorInspectionScore ?? _record!.content.exteriorInspectionScore,
      exteriorInspectionRemarks: exteriorInspectionRemarks ??
          _record!.content.exteriorInspectionRemarks,
      adjacentBuildingRisk:
          adjacentBuildingRisk ?? _record!.content.adjacentBuildingRisk,
      unevenSettlement: unevenSettlement ?? _record!.content.unevenSettlement,
      foundationDamage: foundationDamage ?? _record!.content.foundationDamage,
      firstFloorTilt: firstFloorTilt ?? _record!.content.firstFloorTilt,
      wallDamage: wallDamage ?? _record!.content.wallDamage,
      corrosionOrTermite:
          corrosionOrTermite ?? _record!.content.corrosionOrTermite,
      roofTile: roofTile ?? _record!.content.roofTile,
      windowFrame: windowFrame ?? _record!.content.windowFrame,
      exteriorWet: exteriorWet ?? _record!.content.exteriorWet,
      exteriorDry: exteriorDry ?? _record!.content.exteriorDry,
      signageAndEquipment:
          signageAndEquipment ?? _record!.content.signageAndEquipment,
      outdoorStairs: outdoorStairs ?? _record!.content.outdoorStairs,
      others: others ?? _record!.content.others,
      otherRemarks: otherRemarks ?? _record!.content.otherRemarks,
      overallExteriorScore:
          overallExteriorScore ?? _record!.content.overallExteriorScore,
      overallStructuralScore:
          overallStructuralScore ?? _record!.content.overallStructuralScore,
      overallFallingObjectScore: overallFallingObjectScore ??
          _record!.content.overallFallingObjectScore,
    );

    _record = _record!.copyWith(content: updatedContent);
    _recalculateScores();
    notifyListeners();
  }

  void updateOverallScore(OverallScore score) {
    if (_record == null) return;

    _record = _record!.copyWith(overallScore: score);
    notifyListeners();
  }

  //隣接建築物・周辺地盤等及び構造躯体に関する危険度の総合スコアの判定
  DamageLevel _calcOverallStructuralScore() {
    if (_record == null) return DamageLevel.C;
    List<DamageLevel> levels = [
      _record!.content.adjacentBuildingRisk,
      _record!.content.unevenSettlement,
      _record!.content.foundationDamage,
      _record!.content.firstFloorTilt,
      _record!.content.wallDamage,
      _record!.content.corrosionOrTermite
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
  DamageLevel _calcOverallFallingObjectScore() {
    if (_record == null) return DamageLevel.C;

    List<DamageLevel> levels = [
      _record!.content.roofTile,
      _record!.content.windowFrame,
      _record!.content.exteriorWet,
      _record!.content.exteriorDry,
      _record!.content.signageAndEquipment,
      _record!.content.outdoorStairs,
      _record!.content.others,
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
  OverallScore _calcOverallScore(InvestigationContent content) {
    //１の外観調査の点数がついている場合は赤
    if (content.exteriorInspectionScore != 5) {
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

  //外観調査の総合スコアの判定
  DamageLevel _calcOverallExteriorScore() {
    if (_record == null) return DamageLevel.C;

    //外観調査の時点で危険の場合はスコアC
    if (_record!.content.exteriorInspectionScore == 0) {
      return DamageLevel.C;
    } else {
      return DamageLevel.A;
    }
  }
}
