import 'package:flutter/foundation.dart';
import '../../models/investigator_model.dart';
import 'package:latlong2/latlong.dart';

class WoodenViewModel extends ChangeNotifier {
  WoodenRecord? _woodenRecord;

  WoodenRecord? get woodenRecord => _woodenRecord;

  //すべてのスコアを計算
  void _recalculateScores() {
    if (_woodenRecord == null) return;
    //調査項目2,3の危険度を算出
    final updatedContent = _woodenRecord!.content.copyWith(
      //外観調査の危険度の算出
      overallExteriorScore: _calcoverallExteriorScore(),
      //隣接建築物・周辺地盤等及び構造躯体に関する危険度の算出
      overallStructuralScore: _calcOverallStructuralScore(),
      //落下危険物に関する危険度の算出
      overallFallingObjectScore: _calcOverallFallingObjectScore(),
    );
    //調査項目1の危険度を算出し総合の危険度を算出
    final updatedOverallScore = _calcOverallScore(updatedContent);
    //レコードに反映
    _woodenRecord = _woodenRecord!.copyWith(
      content: updatedContent,
      overallScore: updatedOverallScore,
    );
  }

  //各調査内容の添付画像を更新する関数
  void updateImageField(String fieldName, List<String> paths) {
    if (_woodenRecord == null) return;

    // 新しい ImageInfo リストを作成
    final updatedImages = paths
        .map((path) => ImagePaths(localPath: path, firebaseUrl: ''))
        .toList();

    // content のコピーを作成
    final updatedContent = _woodenRecord!.content.copyWith(
      // フィールド名によって更新するプロパティを選択
      adjacentBuildingRiskImages: fieldName == 'adjacentBuildingRiskImages'
          ? updatedImages
          : _woodenRecord!.content.adjacentBuildingRiskImages,
      unevenSettlementImages: fieldName == 'unevenSettlementImages'
          ? updatedImages
          : _woodenRecord!.content.unevenSettlementImages,
      foundationDamageImages: fieldName == 'foundationDamageImages'
          ? updatedImages
          : _woodenRecord!.content.foundationDamageImages,
      firstFloorTiltImages: fieldName == 'firstFloorTiltImages'
          ? updatedImages
          : _woodenRecord!.content.firstFloorTiltImages,
      wallDamageImages: fieldName == 'wallDamageImages'
          ? updatedImages
          : _woodenRecord!.content.wallDamageImages,
      corrosionOrTermiteImages: fieldName == 'corrosionOrTermiteImages'
          ? updatedImages
          : _woodenRecord!.content.corrosionOrTermiteImages,
      roofTileImages: fieldName == 'roofTileImages'
          ? updatedImages
          : _woodenRecord!.content.roofTileImages,
      windowFrameImages: fieldName == 'windowFrameImages'
          ? updatedImages
          : _woodenRecord!.content.windowFrameImages,
      exteriorWetImages: fieldName == 'exteriorWetImages'
          ? updatedImages
          : _woodenRecord!.content.exteriorWetImages,
      exteriorDryImages: fieldName == 'exteriorDryImages'
          ? updatedImages
          : _woodenRecord!.content.exteriorDryImages,
      signageAndEquipmentImages: fieldName == 'signageAndEquipmentImages'
          ? updatedImages
          : _woodenRecord!.content.signageAndEquipmentImages,
      outdoorStairsImages: fieldName == 'outdoorStairsImages'
          ? updatedImages
          : _woodenRecord!.content.outdoorStairsImages,
      othersImages: fieldName == 'othersImages'
          ? updatedImages
          : _woodenRecord!.content.othersImages,
    );

    _woodenRecord = _woodenRecord!.copyWith(content: updatedContent);
    print(_woodenRecord);
    notifyListeners();
  }

  void updateImageFieldFirebase(
      String fieldName, List<String> localUrls, List<String> uploadUrls) {
    if (_woodenRecord == null) {
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
    final updatedContent = _woodenRecord!.content.copyWith(
      adjacentBuildingRiskImages: fieldName == 'adjacentBuildingRiskImages'
          ? updatedImages
          : _woodenRecord!.content.adjacentBuildingRiskImages,
      unevenSettlementImages: fieldName == 'unevenSettlementImages'
          ? updatedImages
          : _woodenRecord!.content.unevenSettlementImages,
      foundationDamageImages: fieldName == 'foundationDamageImages'
          ? updatedImages
          : _woodenRecord!.content.foundationDamageImages,
      firstFloorTiltImages: fieldName == 'firstFloorTiltImages'
          ? updatedImages
          : _woodenRecord!.content.firstFloorTiltImages,
      wallDamageImages: fieldName == 'wallDamageImages'
          ? updatedImages
          : _woodenRecord!.content.wallDamageImages,
      corrosionOrTermiteImages: fieldName == 'corrosionOrTermiteImages'
          ? updatedImages
          : _woodenRecord!.content.corrosionOrTermiteImages,
      roofTileImages: fieldName == 'roofTileImages'
          ? updatedImages
          : _woodenRecord!.content.roofTileImages,
      windowFrameImages: fieldName == 'windowFrameImages'
          ? updatedImages
          : _woodenRecord!.content.windowFrameImages,
      exteriorWetImages: fieldName == 'exteriorWetImages'
          ? updatedImages
          : _woodenRecord!.content.exteriorWetImages,
      exteriorDryImages: fieldName == 'exteriorDryImages'
          ? updatedImages
          : _woodenRecord!.content.exteriorDryImages,
      signageAndEquipmentImages: fieldName == 'signageAndEquipmentImages'
          ? updatedImages
          : _woodenRecord!.content.signageAndEquipmentImages,
      outdoorStairsImages: fieldName == 'outdoorStairsImages'
          ? updatedImages
          : _woodenRecord!.content.outdoorStairsImages,
      othersImages: fieldName == 'othersImages'
          ? updatedImages
          : _woodenRecord!.content.othersImages,
    );

    _woodenRecord = _woodenRecord!.copyWith(content: updatedContent);
    notifyListeners();
  }

  //木造建築物のレコードを初期化する関数
  void setRecord(WoodenRecord record) {
    //初期化
    _woodenRecord = record;
    //危険度を算出
    _recalculateScores();
    notifyListeners();
  }

  //現在位置を更新する関数
  void updateCurrentPosition(LatLng newPosition) {
    if (_woodenRecord == null) return;

    _woodenRecord = _woodenRecord!.copyWith(
      unit: _woodenRecord!.unit.copyWith(currentPosition: newPosition),
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
    if (_woodenRecord == null) return;
    final updatedUnit = _woodenRecord!.unit.copyWith(
      buildingtype: buildingtype ?? _woodenRecord!.unit.buildingtype,
      currentPosition: currentPosition ?? _woodenRecord!.unit.currentPosition,
      surveyCount: surveyCount ?? _woodenRecord!.unit.surveyCount,
      investigator: investigator ?? _woodenRecord!.unit.investigator,
      investigatorPrefecture:
          investigatorPrefecture ?? _woodenRecord!.unit.investigatorPrefecture,
      investigatorNumber:
          investigatorNumber ?? _woodenRecord!.unit.investigatorNumber,
    );

    _woodenRecord = _woodenRecord!.copyWith(unit: updatedUnit);
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
    if (_woodenRecord == null) return;

    final updatedOverview = _woodenRecord!.overview.copyWith(
      buildingName: buildingName ?? _woodenRecord!.overview.buildingName,
      buildingNumber: buildingNumber ?? _woodenRecord!.overview.buildingNumber,
      address: address ?? _woodenRecord!.overview.address,
      mapNumber: mapNumber ?? _woodenRecord!.overview.mapNumber,
      buildingUse: buildingUse ?? _woodenRecord!.overview.buildingUse,
      structure: structure ?? _woodenRecord!.overview.structure,
      floors: floors ?? _woodenRecord!.overview.floors,
      scale: scale ?? _woodenRecord!.overview.scale,
    );

    _woodenRecord = _woodenRecord!.copyWith(overview: updatedOverview);
    notifyListeners();
  }

  //木材建築物のContentの一部を更新するメソッド
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
    DamageLevel? overallExteriorScore,
    DamageLevel? overallStructuralScore,
    DamageLevel? overallFallingObjectScore,
  }) {
    if (_woodenRecord == null) return;
    final updatedContent = _woodenRecord!.content.copyWith(
      exteriorInspectionScore: exteriorInspectionScore ??
          _woodenRecord!.content.exteriorInspectionScore,
      exteriorInspectionRemarks: exteriorInspectionRemarks ??
          _woodenRecord!.content.exteriorInspectionRemarks,
      adjacentBuildingRisk:
          adjacentBuildingRisk ?? _woodenRecord!.content.adjacentBuildingRisk,
      unevenSettlement:
          unevenSettlement ?? _woodenRecord!.content.unevenSettlement,
      foundationDamage:
          foundationDamage ?? _woodenRecord!.content.foundationDamage,
      firstFloorTilt: firstFloorTilt ?? _woodenRecord!.content.firstFloorTilt,
      wallDamage: wallDamage ?? _woodenRecord!.content.wallDamage,
      corrosionOrTermite:
          corrosionOrTermite ?? _woodenRecord!.content.corrosionOrTermite,
      roofTile: roofTile ?? _woodenRecord!.content.roofTile,
      windowFrame: windowFrame ?? _woodenRecord!.content.windowFrame,
      exteriorWet: exteriorWet ?? _woodenRecord!.content.exteriorWet,
      exteriorDry: exteriorDry ?? _woodenRecord!.content.exteriorDry,
      signageAndEquipment:
          signageAndEquipment ?? _woodenRecord!.content.signageAndEquipment,
      outdoorStairs: outdoorStairs ?? _woodenRecord!.content.outdoorStairs,
      others: others ?? _woodenRecord!.content.others,
      otherRemarks: otherRemarks ?? _woodenRecord!.content.otherRemarks,
      overallExteriorScore:
          overallExteriorScore ?? _woodenRecord!.content.overallExteriorScore,
      overallStructuralScore: overallStructuralScore ??
          _woodenRecord!.content.overallStructuralScore,
      overallFallingObjectScore: overallFallingObjectScore ??
          _woodenRecord!.content.overallFallingObjectScore,
    );

    _woodenRecord = _woodenRecord!.copyWith(content: updatedContent);
    _recalculateScores();
    notifyListeners();
  }

  //木材建築物の総合スコアを更新する関数
  void updateOverallScore(OverallScore score) {
    if (_woodenRecord == null) return;

    _woodenRecord = _woodenRecord!.copyWith(overallScore: score);
    notifyListeners();
  }

  DamageLevel _calcOverallStructuralScore() {
    if (_woodenRecord == null) return DamageLevel.C;
    List<DamageLevel> levels = [
      _woodenRecord!.content.adjacentBuildingRisk ?? DamageLevel.A,
      _woodenRecord!.content.unevenSettlement ?? DamageLevel.A,
      _woodenRecord!.content.foundationDamage ?? DamageLevel.A,
      _woodenRecord!.content.firstFloorTilt ?? DamageLevel.A,
      _woodenRecord!.content.wallDamage ?? DamageLevel.A,
      _woodenRecord!.content.corrosionOrTermite ?? DamageLevel.A
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

  //外観調査の総合スコアの判定
  DamageLevel _calcoverallExteriorScore() {
    if (_woodenRecord == null) return DamageLevel.C;
    //C評価が一つでもあればC、B評価が一つでもあればB、全てAならA
    if (_woodenRecord!.content.exteriorInspectionScore != 5) {
      return DamageLevel.C;
    } else {
      return DamageLevel.A;
    }
  }

  //落下危険物・転倒危険物に関する危険度の総合スコアの判定
  DamageLevel _calcOverallFallingObjectScore() {
    if (_woodenRecord == null) return DamageLevel.C;

    List<DamageLevel> levels = [
      _woodenRecord!.content.roofTile ?? DamageLevel.A,
      _woodenRecord!.content.windowFrame ?? DamageLevel.A,
      _woodenRecord!.content.exteriorWet ?? DamageLevel.A,
      _woodenRecord!.content.exteriorDry ?? DamageLevel.A,
      _woodenRecord!.content.signageAndEquipment ?? DamageLevel.A,
      _woodenRecord!.content.outdoorStairs ?? DamageLevel.A,
      _woodenRecord!.content.others ?? DamageLevel.A,
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
  OverallScore _calcOverallScore(WoodenContent content) {
    final hasMissingData = [
      content.adjacentBuildingRisk,
      content.unevenSettlement,
      content.foundationDamage,
      content.firstFloorTilt,
      content.wallDamage,
      content.corrosionOrTermite,
      content.roofTile,
      content.windowFrame,
      content.exteriorWet,
      content.exteriorDry,
      content.signageAndEquipment,
      content.outdoorStairs,
      content.others,
    ].any((e) => e == null);

    //１の外観調査の点数がついている場合は赤
    if (content.exteriorInspectionScore != 5) {
      return OverallScore.red;

      //２と３の調査項目のレベルが高い方を危険度として採用
      //２と３のどちらかがレベルCだった場合危険度は赤
    } else if (content.overallStructuralScore == DamageLevel.C ||
        content.overallFallingObjectScore == DamageLevel.C) {
      if (hasMissingData) {
        return OverallScore.uRed;
      } else {
        return OverallScore.red;
      }
      //２と３のどちらかがレベルBだった場合、危険度は黄色
    } else if (content.overallStructuralScore == DamageLevel.B ||
        content.overallFallingObjectScore == DamageLevel.B) {
      if (hasMissingData) {
        return OverallScore.uYellow;
      } else {
        return OverallScore.yellow;
      }
    } else {
      if (hasMissingData) {
        return OverallScore.uGreen;
      } else {
        return OverallScore.green;
      }
    }
  }
}
