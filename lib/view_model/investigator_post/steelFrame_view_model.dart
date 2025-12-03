import 'package:flutter/foundation.dart';
import '../../models/investigator_model.dart';
import 'package:latlong2/latlong.dart';

class SteelFrameViewModel extends ChangeNotifier {
  SteelFrameRecord? _steelFrameRecord;

  SteelFrameRecord? get steelFrameRecord => _steelFrameRecord;

  //すべてのスコアを計算
  void _recalculateScores() {
    if (_steelFrameRecord == null) return;
    //調査項目2,3の危険度を算出
    final updatedContent = _steelFrameRecord!.content.copyWith(
      //隣接建築物・周辺地盤等及び構造躯体に関する危険度の算出
      overallStructuralScore: _calcOverallStructuralScore(),
      //落下危険物に関する危険度の算出
      overallFallingObjectScore: _calcOverallFallingObjectScore(),
    );

    //調査項目1の危険度を算出し総合の危険度を算出
    final updatedOverallScore = _calcOverallScore(updatedContent);
    //レコードに反映
    _steelFrameRecord = _steelFrameRecord!.copyWith(
      content: updatedContent,
      overallScore: updatedOverallScore,
    );
  }

  //各調査内容の添付画像を更新する関数
  void updateImageField(String fieldName, List<String> paths) {
    if (_steelFrameRecord == null) return;

    // 新しい ImageInfo リストを作成
    final updatedImages = paths
        .map((path) => ImagePaths(localPath: path, firebaseUrl: ''))
        .toList();

    // content のコピーを作成
    final updatedContent = _steelFrameRecord!.content.copyWith(
      // フィールド名によって更新するプロパティを選択
      adjacentBuildingRiskImages: fieldName == 'adjacentBuildingRiskImages'
          ? updatedImages
          : _steelFrameRecord!.content.adjacentBuildingRiskImages,
      unevenSettlementImages: fieldName == 'unevenSettlementImages'
          ? updatedImages
          : _steelFrameRecord!.content.unevenSettlementImages,
      upperFloorLe1Images: fieldName == 'upperFloorLe1Images'
          ? updatedImages
          : _steelFrameRecord!.content.upperFloorLe1Images,
      upperFloorLe2Images: fieldName == 'upperFloorLe2Images'
          ? updatedImages
          : _steelFrameRecord!.content.upperFloorLe2Images,
      hasBucklingImages: fieldName == 'hasBucklingImages'
          ? updatedImages
          : _steelFrameRecord!.content.hasBucklingImages,
      bracingBreakRateImages: fieldName == 'bracingBreakRateImages'
          ? updatedImages
          : _steelFrameRecord!.content.bracingBreakRateImages,
      jointFailureImages: fieldName == 'jointFailureImages'
          ? updatedImages
          : _steelFrameRecord!.content.jointFailureImages,
      columnBaseDamageImages: fieldName == 'columnBaseDamageImages'
          ? updatedImages
          : _steelFrameRecord!.content.columnBaseDamageImages,
      corrosionImages: fieldName == 'corrosionImages'
          ? updatedImages
          : _steelFrameRecord!.content.corrosionImages,
      roofingMaterialImages: fieldName == 'roofingMaterialImages'
          ? updatedImages
          : _steelFrameRecord!.content.roofingMaterialImages,
      windowFrameImages: fieldName == 'windowFrameImages'
          ? updatedImages
          : _steelFrameRecord!.content.windowFrameImages,
      exteriorWetImages: fieldName == 'exteriorWetImages'
          ? updatedImages
          : _steelFrameRecord!.content.exteriorWetImages,
      exteriorDryImages: fieldName == 'exteriorDryImages'
          ? updatedImages
          : _steelFrameRecord!.content.exteriorDryImages,
      signageAndEquipmentImages: fieldName == 'signageAndEquipmentImages'
          ? updatedImages
          : _steelFrameRecord!.content.signageAndEquipmentImages,
      outdoorStairsImages: fieldName == 'outdoorStairsImages'
          ? updatedImages
          : _steelFrameRecord!.content.outdoorStairsImages,
      othersImages: fieldName == 'othersImages'
          ? updatedImages
          : _steelFrameRecord!.content.othersImages,
    );

    _steelFrameRecord = _steelFrameRecord!.copyWith(content: updatedContent);
    notifyListeners();
  }

  void updateImageFieldFirebase(
      String fieldName, List<String> localUrls, List<String> uploadUrls) {
    if (_steelFrameRecord == null) {
      print("エラー(updateImageFieldFirebase)：渡されたrecordがnullです");
      return;
    }

    int count = localUrls.length;
    if (localUrls.length != uploadUrls.length) {
      print("エラー(updateImageFieldFirebase):localUrlとuploadUrlの個数が違います");
      return;
    }
    final updatedImages = List.generate(count, (i) {
      return ImagePaths(
          localPath: localUrls[i], // i番目のローカルパス
          firebaseUrl: uploadUrls[i] // i番目のFirebase URL
          );
    });

    // content のコピーを作成
    final updatedContent = _steelFrameRecord!.content.copyWith(
      adjacentBuildingRiskImages: fieldName == 'adjacentBuildingRiskImages'
          ? updatedImages
          : _steelFrameRecord!.content.adjacentBuildingRiskImages,
      unevenSettlementImages: fieldName == 'unevenSettlementImages'
          ? updatedImages
          : _steelFrameRecord!.content.unevenSettlementImages,
      upperFloorLe1Images: fieldName == 'upperFloorLe1Images'
          ? updatedImages
          : _steelFrameRecord!.content.upperFloorLe1Images,
      upperFloorLe2Images: fieldName == 'upperFloorLe2Images'
          ? updatedImages
          : _steelFrameRecord!.content.upperFloorLe2Images,
      hasBucklingImages: fieldName == 'hasBucklingImages'
          ? updatedImages
          : _steelFrameRecord!.content.hasBucklingImages,
      bracingBreakRateImages: fieldName == 'bracingBreakRateImages'
          ? updatedImages
          : _steelFrameRecord!.content.bracingBreakRateImages,
      jointFailureImages: fieldName == 'jointFailureImages'
          ? updatedImages
          : _steelFrameRecord!.content.jointFailureImages,
      columnBaseDamageImages: fieldName == 'columnBaseDamageImages'
          ? updatedImages
          : _steelFrameRecord!.content.columnBaseDamageImages,
      corrosionImages: fieldName == 'corrosionImages'
          ? updatedImages
          : _steelFrameRecord!.content.corrosionImages,
      roofingMaterialImages: fieldName == 'roofingMaterialImages'
          ? updatedImages
          : _steelFrameRecord!.content.roofingMaterialImages,
      windowFrameImages: fieldName == 'windowFrameImages'
          ? updatedImages
          : _steelFrameRecord!.content.windowFrameImages,
      exteriorWetImages: fieldName == 'exteriorWetImages'
          ? updatedImages
          : _steelFrameRecord!.content.exteriorWetImages,
      exteriorDryImages: fieldName == 'exteriorDryImages'
          ? updatedImages
          : _steelFrameRecord!.content.exteriorDryImages,
      signageAndEquipmentImages: fieldName == 'signageAndEquipmentImages'
          ? updatedImages
          : _steelFrameRecord!.content.signageAndEquipmentImages,
      outdoorStairsImages: fieldName == 'outdoorStairsImages'
          ? updatedImages
          : _steelFrameRecord!.content.outdoorStairsImages,
      othersImages: fieldName == 'othersImages'
          ? updatedImages
          : _steelFrameRecord!.content.othersImages,
    );

    _steelFrameRecord = _steelFrameRecord!.copyWith(content: updatedContent);
    notifyListeners();
  }

  //鉄筋建築物のレコードを初期化する関数
  void setRecord(SteelFrameRecord record) {
    //初期化
    _steelFrameRecord = record;
    //危険度を算出
    _recalculateScores();
    notifyListeners();
  }

  //現在位置を更新する関数
  void updateCurrentPosition(LatLng newPosition) {
    if (_steelFrameRecord == null) return;

    _steelFrameRecord = _steelFrameRecord!.copyWith(
      unit: _steelFrameRecord!.unit.copyWith(currentPosition: newPosition),
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
    if (_steelFrameRecord == null) return;
    final updatedUnit = _steelFrameRecord!.unit.copyWith(
      buildingtype: buildingtype ?? _steelFrameRecord!.unit.buildingtype,
      currentPosition: currentPosition ?? _steelFrameRecord!.unit.currentPosition,
      surveyCount: surveyCount ?? _steelFrameRecord!.unit.surveyCount,
      investigator: investigator ?? _steelFrameRecord!.unit.investigator,
      investigatorPrefecture:
          investigatorPrefecture ?? _steelFrameRecord!.unit.investigatorPrefecture,
      investigatorNumber:
          investigatorNumber ?? _steelFrameRecord!.unit.investigatorNumber,
    );

    _steelFrameRecord = _steelFrameRecord!.copyWith(unit: updatedUnit);
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
    if (_steelFrameRecord == null) return;

    final updatedOverview = _steelFrameRecord!.overview.copyWith(
      buildingName: buildingName ?? _steelFrameRecord!.overview.buildingName,
      buildingNumber: buildingNumber ?? _steelFrameRecord!.overview.buildingNumber,
      address: address ?? _steelFrameRecord!.overview.address,
      mapNumber: mapNumber ?? _steelFrameRecord!.overview.mapNumber,
      buildingUse: buildingUse ?? _steelFrameRecord!.overview.buildingUse,
      structure: structure ?? _steelFrameRecord!.overview.structure,
      floors: floors ?? _steelFrameRecord!.overview.floors,
      scale: scale ?? _steelFrameRecord!.overview.scale,
    );

    _steelFrameRecord = _steelFrameRecord!.copyWith(overview: updatedOverview);
    notifyListeners();
  }

  //鉄筋建築物のContentの一部を更新するメソッド
  void updateContent({
    int? exteriorInspectionScore,
    String? exteriorInspectionRemarks,
    DamageLevel? adjacentBuildingRisk,
    DamageLevel? unevenSettlement,
    DamageLevel? upperFloorLe1,
    DamageLevel? upperFloorLe2,
    DamageLevel? hasBuckling,
    DamageLevel? bracingBreakRate,
    DamageLevel? jointFailure,
    DamageLevel? columnBaseDamage,
    DamageLevel? corrosion,
    DamageLevel? roofingMaterial,
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
    if (_steelFrameRecord == null) return;

    final updatedContent = _steelFrameRecord!.content.copyWith(
      exteriorInspectionScore: exteriorInspectionScore ??
          _steelFrameRecord!.content.exteriorInspectionScore,
      exteriorInspectionRemarks: exteriorInspectionRemarks ??
          _steelFrameRecord!.content.exteriorInspectionRemarks,
      adjacentBuildingRisk:
          adjacentBuildingRisk ?? _steelFrameRecord!.content.adjacentBuildingRisk,
      unevenSettlement:
          unevenSettlement ?? _steelFrameRecord!.content.unevenSettlement,
      upperFloorLe1: upperFloorLe1 ?? _steelFrameRecord!.content.upperFloorLe1,
      upperFloorLe2: upperFloorLe2 ?? _steelFrameRecord!.content.upperFloorLe2,
      hasBuckling: hasBuckling ?? _steelFrameRecord!.content.hasBuckling,
      bracingBreakRate:
          bracingBreakRate ?? _steelFrameRecord!.content.bracingBreakRate,
      jointFailure: jointFailure ?? _steelFrameRecord!.content.jointFailure,
      columnBaseDamage:
          columnBaseDamage ?? _steelFrameRecord!.content.columnBaseDamage,
      corrosion: corrosion ?? _steelFrameRecord!.content.corrosion,
      roofingMaterial: roofingMaterial ?? _steelFrameRecord!.content.roofingMaterial,
      windowFrame: windowFrame ?? _steelFrameRecord!.content.windowFrame,
      exteriorWet: exteriorWet ?? _steelFrameRecord!.content.exteriorWet,
      exteriorDry: exteriorDry ?? _steelFrameRecord!.content.exteriorDry,
      signageAndEquipment:
          signageAndEquipment ?? _steelFrameRecord!.content.signageAndEquipment,
      outdoorStairs: outdoorStairs ?? _steelFrameRecord!.content.outdoorStairs,
      others: others ?? _steelFrameRecord!.content.others,
      otherRemarks: otherRemarks ?? _steelFrameRecord!.content.otherRemarks,
      overallExteriorScore:
          overallExteriorScore ?? _steelFrameRecord!.content.overallExteriorScore,
      overallStructuralScore: overallStructuralScore ??
          _steelFrameRecord!.content.overallStructuralScore,
      overallFallingObjectScore: overallFallingObjectScore ??
          _steelFrameRecord!.content.overallFallingObjectScore,
    );

    _steelFrameRecord = _steelFrameRecord!.copyWith(content: updatedContent);
    _recalculateScores();
    notifyListeners();
  }

  //鉄筋建築物の総合スコアを更新する関数
  void updateOverallScore(OverallScore score) {
    if (_steelFrameRecord == null) return;

    _steelFrameRecord = _steelFrameRecord!.copyWith(overallScore: score);
    notifyListeners();
  }

//鉄筋建築物の隣接建築物・周辺地盤等及び構造躯体に関する危険度の総合スコアの判定
  DamageLevel _calcOverallStructuralScore() {
    if (_steelFrameRecord == null) return DamageLevel.C;
    List<DamageLevel> levels = [
      _steelFrameRecord!.content.adjacentBuildingRisk,
      _steelFrameRecord!.content.unevenSettlement,
      _steelFrameRecord!.content.upperFloorLe1,
      _steelFrameRecord!.content.upperFloorLe2,
      _steelFrameRecord!.content.hasBuckling,
      _steelFrameRecord!.content.bracingBreakRate,
      _steelFrameRecord!.content.jointFailure,
      _steelFrameRecord!.content.columnBaseDamage,
      _steelFrameRecord!.content.corrosion,
    ];
    final cCount = levels.where((e) => e == DamageLevel.C).length;
    final bCount = levels.where((e) => e == DamageLevel.B).length;
    //C評価が1つ又はBが4以上あればC
    if (cCount >= 1 || bCount >= 4) {
      return DamageLevel.C;
      //B評価が3つ以内ならB
    } else if (bCount >= 1 && bCount <= 3) {
      return DamageLevel.B;
      //すべてA評価の場合A
    } else {
      return DamageLevel.A;
    }
  }

  //鉄筋建築物の落下危険物・転倒危険物に関する危険度の総合スコアの判定
  DamageLevel _calcOverallFallingObjectScore() {
    if (_steelFrameRecord == null) return DamageLevel.C;

    List<DamageLevel> levels = [
      _steelFrameRecord!.content.roofingMaterial,
      _steelFrameRecord!.content.windowFrame,
      _steelFrameRecord!.content.exteriorWet,
      _steelFrameRecord!.content.exteriorDry,
      _steelFrameRecord!.content.signageAndEquipment,
      _steelFrameRecord!.content.outdoorStairs,
      _steelFrameRecord!.content.others,
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

//鉄筋建築物家屋の危険度を算出する関数
  OverallScore _calcOverallScore(SteelFrameContent content) {
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
}
