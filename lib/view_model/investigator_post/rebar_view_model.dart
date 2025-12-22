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
      overallStructuralScore2: _calcOverallStructuralScore2(),
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
      hasSevereDamageMembersImages: fieldName == 'hasSevereDamageMembersImages'
          ? updatedImages
          : _rebarRecord!.content.hasSevereDamageMembersImages,
      adjacentBuildingRiskImages: fieldName == 'adjacentBuildingRiskImages'
          ? updatedImages
          : _rebarRecord!.content.adjacentBuildingRiskImages,
      groundFailureInclinationImages:
          fieldName == 'groundFailureInclinationImages'
              ? updatedImages
              : _rebarRecord!.content.groundFailureInclinationImages,
      unevenSettlementImages: fieldName == 'unevenSettlementImages'
          ? updatedImages
          : _rebarRecord!.content.unevenSettlementImages,

      percentColumnsDamageLevel5Images:
          fieldName == 'percentColumnsDamageLevel5Images'
              ? updatedImages
              : _rebarRecord!.content.percentColumnsDamageLevel5Images,
      percentColumnsDamageLevel4Images:
          fieldName == 'percentColumnsDamageLevel4Images'
              ? updatedImages
              : _rebarRecord!.content.percentColumnsDamageLevel4Images,
      windowFrameImages: fieldName == 'windowFrameImages'
          ? updatedImages
          : _rebarRecord!.content.windowFrameImages,
      exteriorMaterialMortarTileStoneImages:
          fieldName == 'exteriorMaterialMortarTileStoneImages'
              ? updatedImages
              : _rebarRecord!.content.exteriorMaterialMortarTileStoneImages,
      exteriorMaterialALCPCMetalBlockImages:
          fieldName == 'exteriorMaterialALCPCMetalBlockImages'
              ? updatedImages
              : _rebarRecord!.content.exteriorMaterialALCPCMetalBlockImages,
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
      hasSevereDamageMembersImages: fieldName == 'hasSevereDamageMembersImages'
          ? updatedImages
          : _rebarRecord!.content.hasSevereDamageMembersImages,
      adjacentBuildingRiskImages: fieldName == 'adjacentBuildingRiskImages'
          ? updatedImages
          : _rebarRecord!.content.adjacentBuildingRiskImages,
      groundFailureInclinationImages:
          fieldName == 'groundFailureInclinationImages'
              ? updatedImages
              : _rebarRecord!.content.groundFailureInclinationImages,
      unevenSettlementImages: fieldName == 'unevenSettlementImages'
          ? updatedImages
          : _rebarRecord!.content.unevenSettlementImages,
      percentColumnsDamageLevel5Images:
          fieldName == 'percentColumnsDamageLevel5Images'
              ? updatedImages
              : _rebarRecord!.content.percentColumnsDamageLevel5Images,
      percentColumnsDamageLevel4Images:
          fieldName == 'percentColumnsDamageLevel4Images'
              ? updatedImages
              : _rebarRecord!.content.percentColumnsDamageLevel4Images,
      windowFrameImages: fieldName == 'windowFrameImages'
          ? updatedImages
          : _rebarRecord!.content.windowFrameImages,
      exteriorMaterialMortarTileStoneImages:
          fieldName == 'exteriorMaterialMortarTileStoneImages'
              ? updatedImages
              : _rebarRecord!.content.exteriorMaterialMortarTileStoneImages,
      exteriorMaterialALCPCMetalBlockImages:
          fieldName == 'exteriorMaterialALCPCMetalBlockImages'
              ? updatedImages
              : _rebarRecord!.content.exteriorMaterialALCPCMetalBlockImages,
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
    // 損傷度Ⅲ以上の損傷部材の有無
    DamageLevel? hasSevereDamageMembers,
    // 隣接建築物・周辺地盤破壊の危険
    DamageLevel? adjacentBuildingRisk,
    // 地盤破壊による傾斜
    DamageLevel? groundFailureInclination,
    // 不同沈下
    DamageLevel? unevenSettlement,
    // 柱の被害調査
    int? inspectedFloorsForColumns,
    int? totalColumnsLevel5,
    int? surveyedColumnsLevel5,
    double? percentColumnsLevel5,
    DamageLevel? percentColumnsDamageLevel5,
    double? surveyRateLevel5,
    int? totalColumnsLevel4,
    int? surveyedColumnsLevel4,
    double? percentColumnsLevel4,
    DamageLevel? percentColumnsDamageLevel4,
    double? surveyRateLevel4,

    // 落下・転倒危険物
    DamageLevel? windowFrame,
    DamageLevel? exteriorMaterialMortarTileStone,
    DamageLevel? exteriorMaterialALCPCMetalBlock,
    DamageLevel? signageAndEquipment,
    DamageLevel? outdoorStairs,
    DamageLevel? others,
    String? otherRemarks,
    String? overallExteriorScore,
    DamageLevel? overallStructuralScore2,
    DamageLevel? overallStructuralScore,
    DamageLevel? overallFallingObjectScore,
  }) {
    if (_rebarRecord == null) return;

    final updatedContent = _rebarRecord!.content.copyWith(
      exteriorInspectionScore: exteriorInspectionScore ??
          _rebarRecord!.content.exteriorInspectionScore,
      exteriorInspectionRemarks: exteriorInspectionRemarks ??
          _rebarRecord!.content.exteriorInspectionRemarks,
      hasSevereDamageMembers: hasSevereDamageMembers ??
          _rebarRecord!.content.hasSevereDamageMembers,
      adjacentBuildingRisk:
          adjacentBuildingRisk ?? _rebarRecord!.content.adjacentBuildingRisk,
      groundFailureInclination: groundFailureInclination ??
          _rebarRecord!.content.groundFailureInclination,
      unevenSettlement:
          unevenSettlement ?? _rebarRecord!.content.unevenSettlement,
      inspectedFloorsForColumns: inspectedFloorsForColumns ??
          _rebarRecord!.content.inspectedFloorsForColumns,
      totalColumnsLevel5:
          totalColumnsLevel5 ?? _rebarRecord!.content.totalColumnsLevel5,
      surveyedColumnsLevel5:
          surveyedColumnsLevel5 ?? _rebarRecord!.content.surveyedColumnsLevel5,
      percentColumnsLevel5:
          percentColumnsLevel5 ?? _rebarRecord!.content.percentColumnsLevel5,
      percentColumnsDamageLevel5: percentColumnsDamageLevel5 ??
          _rebarRecord!.content.percentColumnsDamageLevel5,
      percentColumnsDamageLevel4: percentColumnsDamageLevel4 ??
          _rebarRecord!.content.percentColumnsDamageLevel4,
      surveyRateLevel5:
          surveyRateLevel5 ?? _rebarRecord!.content.surveyRateLevel5,
      totalColumnsLevel4:
          totalColumnsLevel4 ?? _rebarRecord!.content.totalColumnsLevel4,
      surveyedColumnsLevel4:
          surveyedColumnsLevel4 ?? _rebarRecord!.content.surveyedColumnsLevel4,
      percentColumnsLevel4:
          percentColumnsLevel4 ?? _rebarRecord!.content.percentColumnsLevel4,
      surveyRateLevel4:
          surveyRateLevel4 ?? _rebarRecord!.content.surveyRateLevel4,
      windowFrame: windowFrame ?? _rebarRecord!.content.windowFrame,
      exteriorMaterialMortarTileStone: exteriorMaterialMortarTileStone ??
          _rebarRecord!.content.exteriorMaterialMortarTileStone,
      exteriorMaterialALCPCMetalBlock: exteriorMaterialALCPCMetalBlock ??
          _rebarRecord!.content.exteriorMaterialALCPCMetalBlock,
      signageAndEquipment:
          signageAndEquipment ?? _rebarRecord!.content.signageAndEquipment,
      outdoorStairs: outdoorStairs ?? _rebarRecord!.content.outdoorStairs,
      others: others ?? _rebarRecord!.content.others,
      otherRemarks: otherRemarks ?? _rebarRecord!.content.otherRemarks,
      overallExteriorScore:
          overallExteriorScore ?? _rebarRecord!.content.overallExteriorScore,
      overallStructuralScore2: overallStructuralScore2 ??
          _rebarRecord!.content.overallStructuralScore2,
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
  DamageLevel _calcOverallStructuralScore2() {
    if (_rebarRecord == null) return DamageLevel.C;
    List<DamageLevel> levels = [
      _rebarRecord!.content.adjacentBuildingRisk,
      _rebarRecord!.content.groundFailureInclination,
      _rebarRecord!.content.unevenSettlement,
      _rebarRecord!.content.percentColumnsDamageLevel4,
      _rebarRecord!.content.percentColumnsDamageLevel5,
    ];
    final cCount = levels.where((e) => e == DamageLevel.C).length;
    final bCount = levels.where((e) => e == DamageLevel.B).length;
    final aCount = levels.where((e) => e == DamageLevel.A).length;
    //C評価が一つでもあればC、B評価が一つでもあればB、全てAならA
    if (cCount >= 1 || bCount >= 2) {
      return DamageLevel.C;
    } else if (bCount == 1) {
      return DamageLevel.B;
    } else if (aCount == 5) {
      return DamageLevel.A;
    } else {
      print("エラー(_calcOverallStructuralScore2):DamageLevelが指定されていません");
      return DamageLevel.C;
    }
  }

  DamageLevel _calcOverallStructuralScore() {
    if (_rebarRecord == null) return DamageLevel.C;
    final level1 = _rebarRecord!.content.hasSevereDamageMembers;
    final level2 = _rebarRecord!.content.overallStructuralScore2;
    //C評価が1つ又はBが4以上あればC
    if (level1 == DamageLevel.C || level2 == DamageLevel.C) {
      return DamageLevel.C;
      //B評価が3つ以内ならB
    } else if (level1 == DamageLevel.B || level2 == DamageLevel.B) {
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
      _rebarRecord!.content.windowFrame,
      _rebarRecord!.content.exteriorMaterialMortarTileStone,
      _rebarRecord!.content.exteriorMaterialALCPCMetalBlock,
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
