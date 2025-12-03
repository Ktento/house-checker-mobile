import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'investigator_model.freezed.dart';
part 'investigator_model.g.dart';

enum DamageLevel { A, B, C }

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
    required DamageLevel adjacentBuildingRisk,
    @Default([]) List<ImagePaths> adjacentBuildingRiskImages,
    //構造躯体の不同沈下
    required DamageLevel unevenSettlement,
    @Default([]) List<ImagePaths> unevenSettlementImages,
    //基礎の被害
    required DamageLevel foundationDamage,
    @Default([]) List<ImagePaths> foundationDamageImages,
    //建築物の一回の傾斜
    required DamageLevel firstFloorTilt,
    @Default([]) List<ImagePaths> firstFloorTiltImages,
    //壁の被害
    required DamageLevel wallDamage,
    @Default([]) List<ImagePaths> wallDamageImages,
    //腐食・蟻害の有無
    required DamageLevel corrosionOrTermite,
    @Default([]) List<ImagePaths> corrosionOrTermiteImages,

    //落下危険物・転倒危険物に関する危険度
    //瓦
    required DamageLevel roofTile,
    @Default([]) List<ImagePaths> roofTileImages,
    //窓枠・窓ガラス
    required DamageLevel windowFrame,
    @Default([]) List<ImagePaths> windowFrameImages,
    //外装材　湿式
    required DamageLevel exteriorWet,
    @Default([]) List<ImagePaths> exteriorWetImages,
    //外装材　乾式
    required DamageLevel exteriorDry,
    @Default([]) List<ImagePaths> exteriorDryImages,
    //看板・機器類
    required DamageLevel signageAndEquipment,
    @Default([]) List<ImagePaths> signageAndEquipmentImages,
    //その他
    required DamageLevel outdoorStairs,
    @Default([]) List<ImagePaths> outdoorStairsImages,
    required DamageLevel others,
    @Default([]) List<ImagePaths> othersImages,
    String? otherRemarks,
    required String overallExteriorScore,
    required DamageLevel overallStructuralScore,
    required DamageLevel overallFallingObjectScore,
  }) = _WoodenContent;

  factory WoodenContent.fromJson(Map<String, dynamic> json) =>
      _$WoodenContentFromJson(json);
}

@freezed
class RebarContent with _$RebarContent {
  const factory RebarContent({
    //外観調査(一見して危険と判断される)
    required int exteriorInspectionScore,
    String? exteriorInspectionRemarks,
    //隣接建築物・周辺地盤等及び構造躯体に関する危険度
    required DamageLevel adjacentBuildingRisk,
    @Default([]) List<ImagePaths> adjacentBuildingRiskImages,
    //不同沈下による建築物全体の傾斜
    required DamageLevel unevenSettlement,
    @Default([]) List<ImagePaths> unevenSettlementImages,
    //傾斜を生じた階の上の階数が1階以下
    required DamageLevel upperFloorLe1,
    @Default([]) List<ImagePaths> upperFloorLe1Images,
    //傾斜を生じた階の上の階数が2階以下
    required DamageLevel upperFloorLe2,
    @Default([]) List<ImagePaths> upperFloorLe2Images,
    //部材の座屈の有無
    required DamageLevel hasBuckling,
    @Default([]) List<ImagePaths> hasBucklingImages,
    //筋違の破断率
    required DamageLevel bracingBreakRate,
    @Default([]) List<ImagePaths> bracingBreakRateImages,
    //柱梁接合部および継手の破壊
    required DamageLevel jointFailure,
    @Default([]) List<ImagePaths> jointFailureImages,
    //柱脚の破損
    required DamageLevel columnBaseDamage,
    @Default([]) List<ImagePaths> columnBaseDamageImages,
    //腐食の有無
    required DamageLevel corrosion,
    @Default([]) List<ImagePaths> corrosionImages,

    //落下危険物・転倒危険物に関する危険度
    //屋根材
    required DamageLevel roofingMaterial,
    @Default([]) List<ImagePaths> roofingMaterialImages,
    //窓枠・窓ガラス
    required DamageLevel windowFrame,
    @Default([]) List<ImagePaths> windowFrameImages,
    //外装材　湿式
    required DamageLevel exteriorWet,
    @Default([]) List<ImagePaths> exteriorWetImages,
    //外装材　乾式
    required DamageLevel exteriorDry,
    @Default([]) List<ImagePaths> exteriorDryImages,
    //看板・機器類
    required DamageLevel signageAndEquipment,
    @Default([]) List<ImagePaths> signageAndEquipmentImages,
    //屋外階段
    required DamageLevel outdoorStairs,
    @Default([]) List<ImagePaths> outdoorStairsImages,
    //その他
    required DamageLevel others,
    @Default([]) List<ImagePaths> othersImages,
    String? otherRemarks,
    required String overallExteriorScore,
    required DamageLevel overallStructuralScore,
    required DamageLevel overallFallingObjectScore,
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
          adjacentBuildingRisk: DamageLevel.A,
          adjacentBuildingRiskImages: [],
          unevenSettlement: DamageLevel.A,
          unevenSettlementImages: [],
          foundationDamage: DamageLevel.A,
          foundationDamageImages: [],
          firstFloorTilt: DamageLevel.A,
          firstFloorTiltImages: [],
          wallDamage: DamageLevel.A,
          wallDamageImages: [],
          corrosionOrTermite: DamageLevel.A,
          corrosionOrTermiteImages: [],
          roofTile: DamageLevel.A,
          roofTileImages: [],
          windowFrame: DamageLevel.A,
          windowFrameImages: [],
          exteriorWet: DamageLevel.A,
          exteriorWetImages: [],
          exteriorDry: DamageLevel.A,
          exteriorDryImages: [],
          signageAndEquipment: DamageLevel.A,
          signageAndEquipmentImages: [],
          outdoorStairs: DamageLevel.A,
          outdoorStairsImages: [],
          others: DamageLevel.A,
          othersImages: [],
          overallExteriorScore: "",
          overallStructuralScore: DamageLevel.A,
          overallFallingObjectScore: DamageLevel.A,
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
          adjacentBuildingRisk: DamageLevel.A,
          adjacentBuildingRiskImages: [],
          unevenSettlement: DamageLevel.A,
          unevenSettlementImages: [],
          upperFloorLe1: DamageLevel.A,
          upperFloorLe2: DamageLevel.A,
          hasBuckling: DamageLevel.A,
          bracingBreakRate: DamageLevel.A,
          jointFailure: DamageLevel.A,
          columnBaseDamage: DamageLevel.A,
          corrosion: DamageLevel.A,
          roofingMaterial: DamageLevel.A,
          windowFrame: DamageLevel.A,
          windowFrameImages: [],
          exteriorWet: DamageLevel.A,
          exteriorWetImages: [],
          exteriorDry: DamageLevel.A,
          exteriorDryImages: [],
          signageAndEquipment: DamageLevel.A,
          signageAndEquipmentImages: [],
          outdoorStairs: DamageLevel.A,
          outdoorStairsImages: [],
          others: DamageLevel.A,
          othersImages: [],
          overallExteriorScore: "",
          overallStructuralScore: DamageLevel.A,
          overallFallingObjectScore: DamageLevel.A,
        ),
        overallScore: OverallScore.green,
      );
}
