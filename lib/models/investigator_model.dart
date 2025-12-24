import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'investigator_model.freezed.dart';
part 'investigator_model.g.dart';

enum DamageLevel {
  A,
  B,
  C,
}

enum OverallScore { red, yellow, green }

Map<String, dynamic> latLngToJson(LatLng latLng) {
  return {'latitude': latLng.latitude, 'longitude': latLng.longitude};
}

LatLng latLngFromJson(Map<String, dynamic> json) {
  return LatLng(json['latitude'] as double, json['longitude'] as double);
}

@freezed
class InvestigationUnit with _$InvestigationUnit {
  const factory InvestigationUnit({
    required String buildingtype,
    required String number,
    required DateTime date,
    required int surveyCount,
    required List<String> investigator,
    required List<String> investigatorPrefecture,
    required List<String> investigatorNumber,
    @JsonKey(fromJson: latLngFromJson, toJson: latLngToJson)
    required LatLng currentPosition,
  }) = _InvestigationUnit;

  factory InvestigationUnit.fromJson(Map<String, dynamic> json) =>
      _$InvestigationUnitFromJson(json);
}

@freezed
class BuildingOverview with _$BuildingOverview {
  const factory BuildingOverview({
    required String buildingName,
    required String buildingNumber,
    required String address,
    required String mapNumber,
    required String buildingUse,
    required String structure,
    required int floors,
    required String scale,
  }) = _BuildingOverview;

  factory BuildingOverview.fromJson(Map<String, dynamic> json) =>
      _$BuildingOverviewFromJson(json);
}

@freezed
class ImagePaths with _$ImagePaths {
  const factory ImagePaths({
    required String localPath, // XFile.path などのローカル保存先
    required String firebaseUrl, // Firebase Storage アップロード後の URL
  }) = _ImagePaths;

  factory ImagePaths.fromJson(Map<String, dynamic> json) =>
      _$ImagePathsFromJson(json);
}

@freezed
class WoodenContent with _$WoodenContent {
  const factory WoodenContent({
    required int exteriorInspectionScore,
    String? exteriorInspectionRemarks,
    //隣接建築物・周辺地盤等及び構造躯体にかんする危険度
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? adjacentBuildingRisk,
    @Default([]) List<ImagePaths> adjacentBuildingRiskImages,
    //構造躯体の不同沈下
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? unevenSettlement,
    @Default([]) List<ImagePaths> unevenSettlementImages,
    //基礎の被害
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? foundationDamage,
    @Default([]) List<ImagePaths> foundationDamageImages,
    //建築物の一回の傾斜
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? firstFloorTilt,
    @Default([]) List<ImagePaths> firstFloorTiltImages,
    //壁の被害
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? wallDamage,
    @Default([]) List<ImagePaths> wallDamageImages,
    //腐食・蟻害の有無
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? corrosionOrTermite,
    @Default([]) List<ImagePaths> corrosionOrTermiteImages,

    //落下危険物・転倒危険物に関する危険度
    //瓦
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? roofTile,
    @Default([]) List<ImagePaths> roofTileImages,
    //窓枠・窓ガラス
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? windowFrame,
    @Default([]) List<ImagePaths> windowFrameImages,
    //外装材　湿式
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? exteriorWet,
    @Default([]) List<ImagePaths> exteriorWetImages,
    //外装材　乾式
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? exteriorDry,
    @Default([]) List<ImagePaths> exteriorDryImages,
    //看板・機器類
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? signageAndEquipment,
    @Default([]) List<ImagePaths> signageAndEquipmentImages,
    //その他
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? outdoorStairs,
    @Default([]) List<ImagePaths> outdoorStairsImages,
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? others,
    @Default([]) List<ImagePaths> othersImages,
    String? otherRemarks,
    required String overallExteriorScore,
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? overallStructuralScore,
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? overallFallingObjectScore,
  }) = _WoodenContent;

  factory WoodenContent.fromJson(Map<String, dynamic> json) =>
      _$WoodenContentFromJson(json);
}

@freezed
class SteelFrameContent with _$SteelFrameContent {
  const factory SteelFrameContent({
    //外観調査(一見して危険と判断される)
    required int exteriorInspectionScore,
    String? exteriorInspectionRemarks,
    //隣接建築物・周辺地盤等及び構造躯体に関する危険度
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? adjacentBuildingRisk,
    @Default([]) List<ImagePaths> adjacentBuildingRiskImages,
    //不同沈下による建築物全体の傾斜
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? unevenSettlement,
    @Default([]) List<ImagePaths> unevenSettlementImages,
    //傾斜を生じた階の上の階数が1階以下
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? upperFloorLe1,
    @Default([]) List<ImagePaths> upperFloorLe1Images,
    //傾斜を生じた階の上の階数が2階以下
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? upperFloorLe2,
    @Default([]) List<ImagePaths> upperFloorLe2Images,
    //部材の座屈の有無
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? hasBuckling,
    @Default([]) List<ImagePaths> hasBucklingImages,
    //筋違の破断率
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? bracingBreakRate,
    @Default([]) List<ImagePaths> bracingBreakRateImages,
    //柱梁接合部および継手の破壊
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? jointFailure,
    @Default([]) List<ImagePaths> jointFailureImages,
    //柱脚の破損
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? columnBaseDamage,
    @Default([]) List<ImagePaths> columnBaseDamageImages,
    //腐食の有無
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? corrosion,
    @Default([]) List<ImagePaths> corrosionImages,

    //落下危険物・転倒危険物に関する危険度
    //屋根材
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? roofingMaterial,
    @Default([]) List<ImagePaths> roofingMaterialImages,
    //窓枠・窓ガラス
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? windowFrame,
    @Default([]) List<ImagePaths> windowFrameImages,
    //外装材　湿式
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? exteriorWet,
    @Default([]) List<ImagePaths> exteriorWetImages,
    //外装材　乾式
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? exteriorDry,
    @Default([]) List<ImagePaths> exteriorDryImages,
    //看板・機器類
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? signageAndEquipment,
    @Default([]) List<ImagePaths> signageAndEquipmentImages,
    //屋外階段
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? outdoorStairs,
    @Default([]) List<ImagePaths> outdoorStairsImages,
    //その他
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? others,
    @Default([]) List<ImagePaths> othersImages,
    String? otherRemarks,
    required String overallExteriorScore,
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? overallStructuralScore,
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? overallFallingObjectScore,
  }) = _SteelFrameContent;

  factory SteelFrameContent.fromJson(Map<String, dynamic> json) =>
      _$SteelFrameContentFromJson(json);
}

@freezed
class RebarContent with _$RebarContent {
  const factory RebarContent({
    //外観調査(一見して危険と判断される)
    required int exteriorInspectionScore,
    String? exteriorInspectionRemarks,
    //損傷度Ⅲ以上の損傷部材の有無
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? hasSevereDamageMembers,
    @Default([]) List<ImagePaths> hasSevereDamageMembersImages,
    //隣接建築物・周辺地盤の破壊による危険
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? adjacentBuildingRisk,
    @Default([]) List<ImagePaths> adjacentBuildingRiskImages,
    //地盤破壊による建築物全体の沈下
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? groundFailureInclination,
    @Default([]) List<ImagePaths> groundFailureInclinationImages,
    //不同沈下による建築物全体の傾斜
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? unevenSettlement,
    @Default([]) List<ImagePaths> unevenSettlementImages,

    //柱の被害の調査階数
    required int inspectedFloorsForColumns,
    //損傷度Ⅴ
    //損傷度Ⅴの柱総数
    required int totalColumnsLevel5,
    //損傷度Ⅴの調査柱数
    required int surveyedColumnsLevel5,
    //損傷度Ⅴの調査柱本数のうち損傷度Ⅴの柱のパーセントの調査率
    required double percentColumnsLevel5,
    //損傷度Ⅴの調査柱本数のうち損傷度Ⅴの柱のパーセントの調査率のダメージレベル
    required DamageLevel? percentColumnsDamageLevel5,
    @Default([]) List<ImagePaths> percentColumnsDamageLevel5Images,
    //損傷度Ⅴに関する調査率
    required double surveyRateLevel5,

    //損傷度Ⅳ
    //損傷度Ⅳの柱総数
    required int totalColumnsLevel4,
    //損傷度Ⅳの調査柱数
    required int surveyedColumnsLevel4,
    //損傷度Ⅳの調査柱本数のうち損傷度Ⅳの柱のパーセントの調査率
    required double percentColumnsLevel4,
    //損傷度Ⅳの調査柱本数のうち損傷度Ⅴの柱のパーセントの調査率のダメージレベル
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? percentColumnsDamageLevel4,
    @Default([]) List<ImagePaths> percentColumnsDamageLevel4Images,
    //損傷度Ⅳに関する調査率
    required double surveyRateLevel4,

    //落下危険物・転倒危険物に関する危険度
    //窓枠・窓ガラス
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? windowFrame,
    @Default([]) List<ImagePaths> windowFrameImages,
    //外装材（モルタル・タイル・石貼り等）
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? exteriorMaterialMortarTileStone,
    @Default([]) List<ImagePaths> exteriorMaterialMortarTileStoneImages,
    //外装材（ALC板・PC板・金属・ブロック等）
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? exteriorMaterialALCPCMetalBlock,
    @Default([]) List<ImagePaths> exteriorMaterialALCPCMetalBlockImages,
    //看板・機器類
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? signageAndEquipment,
    @Default([]) List<ImagePaths> signageAndEquipmentImages,
    //屋外階段
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? outdoorStairs,
    @Default([]) List<ImagePaths> outdoorStairsImages,
    //その他
    @JsonKey(fromJson: damageLevelFromJson) required DamageLevel? others,
    @Default([]) List<ImagePaths> othersImages,
    String? otherRemarks,
    required String overallExteriorScore,
    //判定(2)
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? overallStructuralScore2,
    //総合判定（調査番号2)
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? overallStructuralScore,
    @JsonKey(fromJson: damageLevelFromJson)
    required DamageLevel? overallFallingObjectScore,
  }) = _RebarContent;

  factory RebarContent.fromJson(Map<String, dynamic> json) =>
      _$RebarContentFromJson(json);
}

@freezed
class WoodenRecord with _$WoodenRecord {
  const factory WoodenRecord({
    required InvestigationUnit unit,
    required BuildingOverview overview,
    required WoodenContent content,
    required OverallScore overallScore,
  }) = _WoodenRecord;

  factory WoodenRecord.fromJson(Map<String, dynamic> json) =>
      _$WoodenRecordFromJson(json);

  factory WoodenRecord.empty() => WoodenRecord(
        unit: InvestigationUnit(
          buildingtype: "",
          number: "",
          date: DateTime.now(),
          currentPosition: LatLng(0, 0),
          surveyCount: 0,
          investigator: [],
          investigatorPrefecture: [],
          investigatorNumber: [],
        ),
        overview: BuildingOverview(
          buildingName: "",
          buildingNumber: "",
          address: "",
          mapNumber: "",
          buildingUse: "",
          structure: "",
          floors: 0,
          scale: "",
        ),
        content: WoodenContent(
          exteriorInspectionScore: 5,
          adjacentBuildingRisk: null,
          adjacentBuildingRiskImages: [],
          unevenSettlement: null,
          unevenSettlementImages: [],
          foundationDamage: null,
          foundationDamageImages: [],
          firstFloorTilt: null,
          firstFloorTiltImages: [],
          wallDamage: null,
          wallDamageImages: [],
          corrosionOrTermite: null,
          corrosionOrTermiteImages: [],
          roofTile: null,
          roofTileImages: [],
          windowFrame: null,
          windowFrameImages: [],
          exteriorWet: null,
          exteriorWetImages: [],
          exteriorDry: null,
          exteriorDryImages: [],
          signageAndEquipment: null,
          signageAndEquipmentImages: [],
          outdoorStairs: null,
          outdoorStairsImages: [],
          others: null,
          othersImages: [],
          overallExteriorScore: "",
          overallStructuralScore: null,
          overallFallingObjectScore: null,
        ),
        overallScore: OverallScore.green,
      );
}

@freezed
class SteelFrameRecord with _$SteelFrameRecord {
  const factory SteelFrameRecord({
    required InvestigationUnit unit,
    required BuildingOverview overview,
    required SteelFrameContent content,
    required OverallScore overallScore,
  }) = _SteelFrameRecord;

  factory SteelFrameRecord.fromJson(Map<String, dynamic> json) =>
      _$SteelFrameRecordFromJson(json);

  factory SteelFrameRecord.empty() => SteelFrameRecord(
        unit: InvestigationUnit(
          buildingtype: "",
          number: "",
          date: DateTime.now(),
          currentPosition: LatLng(0, 0),
          surveyCount: 0,
          investigator: [],
          investigatorPrefecture: [],
          investigatorNumber: [],
        ),
        overview: BuildingOverview(
          buildingName: "",
          buildingNumber: "",
          address: "",
          mapNumber: "",
          buildingUse: "",
          structure: "",
          floors: 0,
          scale: "",
        ),
        content: SteelFrameContent(
          exteriorInspectionScore: 5,
          adjacentBuildingRisk: null,
          adjacentBuildingRiskImages: [],
          unevenSettlement: null,
          unevenSettlementImages: [],
          upperFloorLe1: null,
          upperFloorLe2: null,
          hasBuckling: null,
          bracingBreakRate: null,
          jointFailure: null,
          columnBaseDamage: null,
          corrosion: null,
          roofingMaterial: null,
          windowFrame: null,
          windowFrameImages: [],
          exteriorWet: null,
          exteriorWetImages: [],
          exteriorDry: null,
          exteriorDryImages: [],
          signageAndEquipment: null,
          signageAndEquipmentImages: [],
          outdoorStairs: null,
          outdoorStairsImages: [],
          others: null,
          othersImages: [],
          overallExteriorScore: "",
          overallStructuralScore: null,
          overallFallingObjectScore: null,
        ),
        overallScore: OverallScore.green,
      );
}

@freezed
class RebarRecord with _$RebarRecord {
  const factory RebarRecord({
    required InvestigationUnit unit,
    required BuildingOverview overview,
    required RebarContent content,
    required OverallScore overallScore,
  }) = _RebarRecord;

  factory RebarRecord.fromJson(Map<String, dynamic> json) =>
      _$RebarRecordFromJson(json);

  factory RebarRecord.empty() => RebarRecord(
        unit: InvestigationUnit(
          buildingtype: "",
          number: "",
          date: DateTime.now(),
          currentPosition: LatLng(0, 0),
          surveyCount: 0,
          investigator: [],
          investigatorPrefecture: [],
          investigatorNumber: [],
        ),
        overview: BuildingOverview(
          buildingName: "",
          buildingNumber: "",
          address: "",
          mapNumber: "",
          buildingUse: "",
          structure: "",
          floors: 0,
          scale: "",
        ),
        content: RebarContent(
          exteriorInspectionScore: 5,
          hasSevereDamageMembers: null,
          hasSevereDamageMembersImages: [],
          adjacentBuildingRisk: null,
          adjacentBuildingRiskImages: [],
          groundFailureInclination: null,
          groundFailureInclinationImages: [],
          unevenSettlement: null,
          unevenSettlementImages: [],
          inspectedFloorsForColumns: 0,
          totalColumnsLevel5: 0,
          surveyedColumnsLevel5: 0,
          percentColumnsLevel5: 0.0,
          percentColumnsDamageLevel4: null,
          percentColumnsDamageLevel4Images: [],
          surveyRateLevel5: 0.0,
          totalColumnsLevel4: 0,
          surveyedColumnsLevel4: 0,
          percentColumnsLevel4: 0.0,
          percentColumnsDamageLevel5: null,
          percentColumnsDamageLevel5Images: [],
          surveyRateLevel4: 0.0,
          windowFrame: null,
          windowFrameImages: [],
          exteriorMaterialMortarTileStone: null,
          exteriorMaterialMortarTileStoneImages: [],
          exteriorMaterialALCPCMetalBlock: null,
          exteriorMaterialALCPCMetalBlockImages: [],
          signageAndEquipment: null,
          signageAndEquipmentImages: [],
          outdoorStairs: null,
          outdoorStairsImages: [],
          others: null,
          othersImages: [],
          overallExteriorScore: "",
          overallStructuralScore2: null,
          overallStructuralScore: null,
          overallFallingObjectScore: null,
        ),
        overallScore: OverallScore.green,
      );
}

DamageLevel? damageLevelFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String && json.isEmpty) return null;
  return DamageLevel.values.byName(json);
}
