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
class InvestigationContent with _$InvestigationContent {
  const factory InvestigationContent({
    required int exteriorInspectionScore,
    String? exteriorInspectionRemarks,
    required DamageLevel adjacentBuildingRisk,
    required DamageLevel unevenSettlement,
    required DamageLevel foundationDamage,
    required DamageLevel firstFloorTilt,
    required DamageLevel wallDamage,
    required DamageLevel corrosionOrTermite,
    required DamageLevel roofTile,
    required DamageLevel windowFrame,
    required DamageLevel exteriorWet,
    required DamageLevel exteriorDry,
    required DamageLevel signageAndEquipment,
    required DamageLevel outdoorStairs,
    required DamageLevel others,
    String? otherRemarks,
    required String overallExteriorScore,
    required DamageLevel overallStructuralScore,
    required DamageLevel overallFallingObjectScore,
  }) = _InvestigationContent;

  factory InvestigationContent.fromJson(Map<String, dynamic> json) =>
      _$InvestigationContentFromJson(json);
}

@freezed
class InvestigationRecord with _$InvestigationRecord {
  const factory InvestigationRecord({
    required InvestigationUnit unit,
    required BuildingOverview overview,
    required InvestigationContent content,
    required OverallScore overallScore,
  }) = _InvestigationRecord;

  factory InvestigationRecord.fromJson(Map<String, dynamic> json) =>
      _$InvestigationRecordFromJson(json);

  factory InvestigationRecord.empty() => InvestigationRecord(
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
        content: InvestigationContent(
          exteriorInspectionScore: 5,
          adjacentBuildingRisk: DamageLevel.A,
          unevenSettlement: DamageLevel.A,
          foundationDamage: DamageLevel.A,
          firstFloorTilt: DamageLevel.A,
          wallDamage: DamageLevel.A,
          corrosionOrTermite: DamageLevel.A,
          roofTile: DamageLevel.A,
          windowFrame: DamageLevel.A,
          exteriorWet: DamageLevel.A,
          exteriorDry: DamageLevel.A,
          signageAndEquipment: DamageLevel.A,
          outdoorStairs: DamageLevel.A,
          others: DamageLevel.A,
          overallExteriorScore: "",
          overallStructuralScore: DamageLevel.A,
          overallFallingObjectScore: DamageLevel.A,
        ),
        overallScore: OverallScore.green,
      );
}
