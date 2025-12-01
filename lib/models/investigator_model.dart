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
    List<ImagePaths>? adjacentBuildingRiskImages,
    //構造躯体の不同沈下
    required DamageLevel unevenSettlement,
    List<ImagePaths>? unevenSettlementImages,
    //基礎の被害
    required DamageLevel foundationDamage,
    List<ImagePaths>? foundationDamageImages,
    //建築物の一回の傾斜
    required DamageLevel firstFloorTilt,
    List<ImagePaths>? firstFloorTiltImages,
    //壁の被害
    required DamageLevel wallDamage,
    List<ImagePaths>? wallDamageImages,
    //腐食・蟻害の有無
    required DamageLevel corrosionOrTermite,
    List<ImagePaths>? corrosionOrTermiteImages,

    //落下危険物・転倒危険物に関する危険度
    //瓦
    required DamageLevel roofTile,
    List<ImagePaths>? roofTileImages,
    //窓枠・窓ガラス
    required DamageLevel windowFrame,
    List<ImagePaths>? windowFrameImages,
    //外装材　湿式
    required DamageLevel exteriorWet,
    List<ImagePaths>? exteriorWetImages,
    //外装材　乾式
    required DamageLevel exteriorDry,
    List<ImagePaths>? exteriorDryImages,
    //看板・機器類
    required DamageLevel signageAndEquipment,
    List<ImagePaths>? signageAndEquipmentImages,
    //その他
    required DamageLevel outdoorStairs,
    List<ImagePaths>? outdoorStairsImages,
    required DamageLevel others,
    List<ImagePaths>? othersImages,
    String? otherRemarks,
    required String overallExteriorScore,
    required DamageLevel overallStructuralScore,
    required DamageLevel overallFallingObjectScore,
  }) = _WoodenContent;

  factory WoodenContent.fromJson(Map<String, dynamic> json) =>
      _$WoodenContentFromJson(json);
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
          adjacentBuildingRiskImages: null,
          unevenSettlement: DamageLevel.A,
          unevenSettlementImages: null,
          foundationDamage: DamageLevel.A,
          foundationDamageImages: null,
          firstFloorTilt: DamageLevel.A,
          firstFloorTiltImages: null,
          wallDamage: DamageLevel.A,
          wallDamageImages: null,
          corrosionOrTermite: DamageLevel.A,
          corrosionOrTermiteImages: null,
          roofTile: DamageLevel.A,
          roofTileImages: null,
          windowFrame: DamageLevel.A,
          windowFrameImages: null,
          exteriorWet: DamageLevel.A,
          exteriorWetImages: null,
          exteriorDry: DamageLevel.A,
          exteriorDryImages: null,
          signageAndEquipment: DamageLevel.A,
          signageAndEquipmentImages: null,
          outdoorStairs: DamageLevel.A,
          outdoorStairsImages: null,
          others: DamageLevel.A,
          othersImages: null,
          overallExteriorScore: "",
          overallStructuralScore: DamageLevel.A,
          overallFallingObjectScore: DamageLevel.A,
        ),
        overallScore: OverallScore.green,
      );
}
