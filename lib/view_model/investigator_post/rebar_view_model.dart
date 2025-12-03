import 'package:flutter/foundation.dart';
import '../../models/investigator_model.dart';
import 'package:latlong2/latlong.dart';

class RebarViewModel extends ChangeNotifier {
  RebarRecord? _rebarRecord;

  RebarRecord? get rebarRecord => _rebarRecord;

  //すべてのスコアを計算
  void _recalculateScores() {
    if (_rebarRecord == null) return;
    //調査項目2,3の危険度を算出
    final updatedContent = _rebarRecord!.content.copyWith(
      //隣接建築物・周辺地盤等及び構造躯体に関する危険度の算出
      overallStructuralScore: _calcOverallStructuralScore(),
      //落下危険物に関する危険度の算出
      overallFallingObjectScore: _calcOverallFallingObjectScore(),
    );

    //調査項目1の危険度を算出し総合の危険度を算出
    final updatedOverallScore = _calcOverallScore(updatedContent);
    //レコードに反映
    _rebarRecord = _rebarRecord!.copyWith(
      content: updatedContent,
      overallScore: updatedOverallScore,
    );
  }

  //各調査内容の添付画像を更新する関数
  void updateImageField(String fieldName, List<String> paths) {
    if (_rebarRecord == null) return;

    // 新しい ImageInfo リストを作成
    final updatedImages = paths
        .map((path) => ImagePaths(localPath: path, firebaseUrl: ''))
        .toList();

    // content のコピーを作成
    final updatedContent = _rebarRecord!.content.copyWith(
      // フィールド名によって更新するプロパティを選択
      adjacentBuildingRiskImages: fieldName == 'adjacentBuildingRiskImages'
          ? updatedImages
          : _rebarRecord!.content.adjacentBuildingRiskImages,
      unevenSettlementImages: fieldName == 'unevenSettlementImages'
          ? updatedImages
          : _rebarRecord!.content.unevenSettlementImages,
      upperFloorLe1Images: fieldName == 'upperFloorLe1Images'
          ? updatedImages
          : _rebarRecord!.content.upperFloorLe1Images,
      upperFloorLe2Images: fieldName == 'upperFloorLe2Images'
          ? updatedImages
          : _rebarRecord!.content.upperFloorLe2Images,
      hasBucklingImages: fieldName == 'hasBucklingImages'
          ? updatedImages
          : _rebarRecord!.content.hasBucklingImages,
      bracingBreakRateImages: fieldName == 'bracingBreakRateImages'
          ? updatedImages
          : _rebarRecord!.content.bracingBreakRateImages,
      jointFailureImages: fieldName == 'jointFailureImages'
          ? updatedImages
          : _rebarRecord!.content.jointFailureImages,
      columnBaseDamageImages: fieldName == 'columnBaseDamageImages'
          ? updatedImages
          : _rebarRecord!.content.columnBaseDamageImages,
      corrosionImages: fieldName == 'corrosionImages'
          ? updatedImages
          : _rebarRecord!.content.corrosionImages,
      roofingMaterialImages: fieldName == 'roofingMaterialImages'
          ? updatedImages
          : _rebarRecord!.content.roofingMaterialImages,
      windowFrameImages: fieldName == 'windowFrameImages'
          ? updatedImages
          : _rebarRecord!.content.windowFrameImages,
      exteriorWetImages: fieldName == 'exteriorWetImages'
          ? updatedImages
          : _rebarRecord!.content.exteriorWetImages,
      exteriorDryImages: fieldName == 'exteriorDryImages'
          ? updatedImages
          : _rebarRecord!.content.exteriorDryImages,
      signageAndEquipmentImages: fieldName == 'signageAndEquipmentImages'
          ? updatedImages
          : _rebarRecord!.content.signageAndEquipmentImages,
      outdoorStairsImages: fieldName == 'outdoorStairsImages'
          ? updatedImages
          : _rebarRecord!.content.outdoorStairsImages,
      othersImages: fieldName == 'othersImages'
          ? updatedImages
          : _rebarRecord!.content.othersImages,
    );

    _rebarRecord = _rebarRecord!.copyWith(content: updatedContent);
    notifyListeners();
  }

  void updateImageFieldFirebase(
      String fieldName, List<String> localUrls, List<String> uploadUrls) {
    if (_rebarRecord == null) {
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
    final updatedContent = _rebarRecord!.content.copyWith(
      adjacentBuildingRiskImages: fieldName == 'adjacentBuildingRiskImages'
          ? updatedImages
          : _rebarRecord!.content.adjacentBuildingRiskImages,
      unevenSettlementImages: fieldName == 'unevenSettlementImages'
          ? updatedImages
          : _rebarRecord!.content.unevenSettlementImages,
      upperFloorLe1Images: fieldName == 'upperFloorLe1Images'
          ? updatedImages
          : _rebarRecord!.content.upperFloorLe1Images,
      upperFloorLe2Images: fieldName == 'upperFloorLe2Images'
          ? updatedImages
          : _rebarRecord!.content.upperFloorLe2Images,
      hasBucklingImages: fieldName == 'hasBucklingImages'
          ? updatedImages
          : _rebarRecord!.content.hasBucklingImages,
      bracingBreakRateImages: fieldName == 'bracingBreakRateImages'
          ? updatedImages
          : _rebarRecord!.content.bracingBreakRateImages,
      jointFailureImages: fieldName == 'jointFailureImages'
          ? updatedImages
          : _rebarRecord!.content.jointFailureImages,
      columnBaseDamageImages: fieldName == 'columnBaseDamageImages'
          ? updatedImages
          : _rebarRecord!.content.columnBaseDamageImages,
      corrosionImages: fieldName == 'corrosionImages'
          ? updatedImages
          : _rebarRecord!.content.corrosionImages,
      roofingMaterialImages: fieldName == 'roofingMaterialImages'
          ? updatedImages
          : _rebarRecord!.content.roofingMaterialImages,
      windowFrameImages: fieldName == 'windowFrameImages'
          ? updatedImages
          : _rebarRecord!.content.windowFrameImages,
      exteriorWetImages: fieldName == 'exteriorWetImages'
          ? updatedImages
          : _rebarRecord!.content.exteriorWetImages,
      exteriorDryImages: fieldName == 'exteriorDryImages'
          ? updatedImages
          : _rebarRecord!.content.exteriorDryImages,
      signageAndEquipmentImages: fieldName == 'signageAndEquipmentImages'
          ? updatedImages
          : _rebarRecord!.content.signageAndEquipmentImages,
      outdoorStairsImages: fieldName == 'outdoorStairsImages'
          ? updatedImages
          : _rebarRecord!.content.outdoorStairsImages,
      othersImages: fieldName == 'othersImages'
          ? updatedImages
          : _rebarRecord!.content.othersImages,
    );

    _rebarRecord = _rebarRecord!.copyWith(content: updatedContent);
    notifyListeners();
  }

  //鉄筋建築物のレコードを初期化する関数
  void setRecord(RebarRecord record) {
    //初期化
    _rebarRecord = record;
    //危険度を算出
    _recalculateScores();
    notifyListeners();
  }

  //現在位置を更新する関数
  void updateCurrentPosition(LatLng newPosition) {
    if (_rebarRecord == null) return;

    _rebarRecord = _rebarRecord!.copyWith(
      unit: _rebarRecord!.unit.copyWith(currentPosition: newPosition),
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
    if (_rebarRecord == null) return;
    final updatedUnit = _rebarRecord!.unit.copyWith(
      buildingtype: buildingtype ?? _rebarRecord!.unit.buildingtype,
      currentPosition: currentPosition ?? _rebarRecord!.unit.currentPosition,
      surveyCount: surveyCount ?? _rebarRecord!.unit.surveyCount,
      investigator: investigator ?? _rebarRecord!.unit.investigator,
      investigatorPrefecture:
          investigatorPrefecture ?? _rebarRecord!.unit.investigatorPrefecture,
      investigatorNumber:
          investigatorNumber ?? _rebarRecord!.unit.investigatorNumber,
    );

    _rebarRecord = _rebarRecord!.copyWith(unit: updatedUnit);
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
    if (_rebarRecord == null) return;

    final updatedOverview = _rebarRecord!.overview.copyWith(
      buildingName: buildingName ?? _rebarRecord!.overview.buildingName,
      buildingNumber: buildingNumber ?? _rebarRecord!.overview.buildingNumber,
      address: address ?? _rebarRecord!.overview.address,
      mapNumber: mapNumber ?? _rebarRecord!.overview.mapNumber,
      buildingUse: buildingUse ?? _rebarRecord!.overview.buildingUse,
      structure: structure ?? _rebarRecord!.overview.structure,
      floors: floors ?? _rebarRecord!.overview.floors,
      scale: scale ?? _rebarRecord!.overview.scale,
    );

    _rebarRecord = _rebarRecord!.copyWith(overview: updatedOverview);
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
    if (_rebarRecord == null) return;

    final updatedContent = _rebarRecord!.content.copyWith(
      exteriorInspectionScore: exteriorInspectionScore ??
          _rebarRecord!.content.exteriorInspectionScore,
      exteriorInspectionRemarks: exteriorInspectionRemarks ??
          _rebarRecord!.content.exteriorInspectionRemarks,
      adjacentBuildingRisk:
          adjacentBuildingRisk ?? _rebarRecord!.content.adjacentBuildingRisk,
      unevenSettlement:
          unevenSettlement ?? _rebarRecord!.content.unevenSettlement,
      upperFloorLe1: upperFloorLe1 ?? _rebarRecord!.content.upperFloorLe1,
      upperFloorLe2: upperFloorLe2 ?? _rebarRecord!.content.upperFloorLe2,
      hasBuckling: hasBuckling ?? _rebarRecord!.content.hasBuckling,
      bracingBreakRate:
          bracingBreakRate ?? _rebarRecord!.content.bracingBreakRate,
      jointFailure: jointFailure ?? _rebarRecord!.content.jointFailure,
      columnBaseDamage:
          columnBaseDamage ?? _rebarRecord!.content.columnBaseDamage,
      corrosion: corrosion ?? _rebarRecord!.content.corrosion,
      roofingMaterial: roofingMaterial ?? _rebarRecord!.content.roofingMaterial,
      windowFrame: windowFrame ?? _rebarRecord!.content.windowFrame,
      exteriorWet: exteriorWet ?? _rebarRecord!.content.exteriorWet,
      exteriorDry: exteriorDry ?? _rebarRecord!.content.exteriorDry,
      signageAndEquipment:
          signageAndEquipment ?? _rebarRecord!.content.signageAndEquipment,
      outdoorStairs: outdoorStairs ?? _rebarRecord!.content.outdoorStairs,
      others: others ?? _rebarRecord!.content.others,
      otherRemarks: otherRemarks ?? _rebarRecord!.content.otherRemarks,
      overallExteriorScore:
          overallExteriorScore ?? _rebarRecord!.content.overallExteriorScore,
      overallStructuralScore: overallStructuralScore ??
          _rebarRecord!.content.overallStructuralScore,
      overallFallingObjectScore: overallFallingObjectScore ??
          _rebarRecord!.content.overallFallingObjectScore,
    );

    _rebarRecord = _rebarRecord!.copyWith(content: updatedContent);
    _recalculateScores();
    notifyListeners();
  }

  //鉄筋建築物の総合スコアを更新する関数
  void updateOverallScore(OverallScore score) {
    if (_rebarRecord == null) return;

    _rebarRecord = _rebarRecord!.copyWith(overallScore: score);
    notifyListeners();
  }

//鉄筋建築物の隣接建築物・周辺地盤等及び構造躯体に関する危険度の総合スコアの判定
  DamageLevel _calcOverallStructuralScore() {
    if (_rebarRecord == null) return DamageLevel.C;
    List<DamageLevel> levels = [
      _rebarRecord!.content.adjacentBuildingRisk,
      _rebarRecord!.content.unevenSettlement,
      _rebarRecord!.content.upperFloorLe1,
      _rebarRecord!.content.upperFloorLe2,
      _rebarRecord!.content.hasBuckling,
      _rebarRecord!.content.bracingBreakRate,
      _rebarRecord!.content.jointFailure,
      _rebarRecord!.content.columnBaseDamage,
      _rebarRecord!.content.corrosion,
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
    if (_rebarRecord == null) return DamageLevel.C;

    List<DamageLevel> levels = [
      _rebarRecord!.content.roofingMaterial,
      _rebarRecord!.content.windowFrame,
      _rebarRecord!.content.exteriorWet,
      _rebarRecord!.content.exteriorDry,
      _rebarRecord!.content.signageAndEquipment,
      _rebarRecord!.content.outdoorStairs,
      _rebarRecord!.content.others,
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
  OverallScore _calcOverallScore(RebarContent content) {
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
