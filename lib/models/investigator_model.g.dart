// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investigator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvestigationUnitImpl _$$InvestigationUnitImplFromJson(
        Map<String, dynamic> json) =>
    _$InvestigationUnitImpl(
      buildingtype: json['buildingtype'] as String,
      number: json['number'] as String,
      date: DateTime.parse(json['date'] as String),
      surveyCount: (json['surveyCount'] as num).toInt(),
      investigator: (json['investigator'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      investigatorPrefecture: (json['investigatorPrefecture'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      investigatorNumber: (json['investigatorNumber'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      currentPosition:
          latLngFromJson(json['currentPosition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvestigationUnitImplToJson(
        _$InvestigationUnitImpl instance) =>
    <String, dynamic>{
      'buildingtype': instance.buildingtype,
      'number': instance.number,
      'date': instance.date.toIso8601String(),
      'surveyCount': instance.surveyCount,
      'investigator': instance.investigator,
      'investigatorPrefecture': instance.investigatorPrefecture,
      'investigatorNumber': instance.investigatorNumber,
      'currentPosition': latLngToJson(instance.currentPosition),
    };

_$BuildingOverviewImpl _$$BuildingOverviewImplFromJson(
        Map<String, dynamic> json) =>
    _$BuildingOverviewImpl(
      buildingName: json['buildingName'] as String,
      buildingNumber: json['buildingNumber'] as String,
      address: json['address'] as String,
      mapNumber: json['mapNumber'] as String,
      buildingUse: json['buildingUse'] as String,
      structure: json['structure'] as String,
      floors: (json['floors'] as num).toInt(),
      scale: json['scale'] as String,
    );

Map<String, dynamic> _$$BuildingOverviewImplToJson(
        _$BuildingOverviewImpl instance) =>
    <String, dynamic>{
      'buildingName': instance.buildingName,
      'buildingNumber': instance.buildingNumber,
      'address': instance.address,
      'mapNumber': instance.mapNumber,
      'buildingUse': instance.buildingUse,
      'structure': instance.structure,
      'floors': instance.floors,
      'scale': instance.scale,
    };

_$InvestigationContentImpl _$$InvestigationContentImplFromJson(
        Map<String, dynamic> json) =>
    _$InvestigationContentImpl(
      exteriorInspectionScore: (json['exteriorInspectionScore'] as num).toInt(),
      exteriorInspectionRemarks: json['exteriorInspectionRemarks'] as String?,
      adjacentBuildingRisk:
          $enumDecode(_$DamageLevelEnumMap, json['adjacentBuildingRisk']),
      unevenSettlement:
          $enumDecode(_$DamageLevelEnumMap, json['unevenSettlement']),
      foundationDamage:
          $enumDecode(_$DamageLevelEnumMap, json['foundationDamage']),
      firstFloorTilt: $enumDecode(_$DamageLevelEnumMap, json['firstFloorTilt']),
      wallDamage: $enumDecode(_$DamageLevelEnumMap, json['wallDamage']),
      corrosionOrTermite:
          $enumDecode(_$DamageLevelEnumMap, json['corrosionOrTermite']),
      roofTile: $enumDecode(_$DamageLevelEnumMap, json['roofTile']),
      windowFrame: $enumDecode(_$DamageLevelEnumMap, json['windowFrame']),
      exteriorWet: $enumDecode(_$DamageLevelEnumMap, json['exteriorWet']),
      exteriorDry: $enumDecode(_$DamageLevelEnumMap, json['exteriorDry']),
      signageAndEquipment:
          $enumDecode(_$DamageLevelEnumMap, json['signageAndEquipment']),
      outdoorStairs: $enumDecode(_$DamageLevelEnumMap, json['outdoorStairs']),
      others: $enumDecode(_$DamageLevelEnumMap, json['others']),
      otherRemarks: json['otherRemarks'] as String?,
      overallExteriorScore: json['overallExteriorScore'] as String,
      overallStructuralScore:
          $enumDecode(_$DamageLevelEnumMap, json['overallStructuralScore']),
      overallFallingObjectScore:
          $enumDecode(_$DamageLevelEnumMap, json['overallFallingObjectScore']),
    );

Map<String, dynamic> _$$InvestigationContentImplToJson(
        _$InvestigationContentImpl instance) =>
    <String, dynamic>{
      'exteriorInspectionScore': instance.exteriorInspectionScore,
      'exteriorInspectionRemarks': instance.exteriorInspectionRemarks,
      'adjacentBuildingRisk':
          _$DamageLevelEnumMap[instance.adjacentBuildingRisk]!,
      'unevenSettlement': _$DamageLevelEnumMap[instance.unevenSettlement]!,
      'foundationDamage': _$DamageLevelEnumMap[instance.foundationDamage]!,
      'firstFloorTilt': _$DamageLevelEnumMap[instance.firstFloorTilt]!,
      'wallDamage': _$DamageLevelEnumMap[instance.wallDamage]!,
      'corrosionOrTermite': _$DamageLevelEnumMap[instance.corrosionOrTermite]!,
      'roofTile': _$DamageLevelEnumMap[instance.roofTile]!,
      'windowFrame': _$DamageLevelEnumMap[instance.windowFrame]!,
      'exteriorWet': _$DamageLevelEnumMap[instance.exteriorWet]!,
      'exteriorDry': _$DamageLevelEnumMap[instance.exteriorDry]!,
      'signageAndEquipment':
          _$DamageLevelEnumMap[instance.signageAndEquipment]!,
      'outdoorStairs': _$DamageLevelEnumMap[instance.outdoorStairs]!,
      'others': _$DamageLevelEnumMap[instance.others]!,
      'otherRemarks': instance.otherRemarks,
      'overallExteriorScore': instance.overallExteriorScore,
      'overallStructuralScore':
          _$DamageLevelEnumMap[instance.overallStructuralScore]!,
      'overallFallingObjectScore':
          _$DamageLevelEnumMap[instance.overallFallingObjectScore]!,
    };

const _$DamageLevelEnumMap = {
  DamageLevel.A: 'A',
  DamageLevel.B: 'B',
  DamageLevel.C: 'C',
};

_$InvestigationRecordImpl _$$InvestigationRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$InvestigationRecordImpl(
      unit: InvestigationUnit.fromJson(json['unit'] as Map<String, dynamic>),
      overview:
          BuildingOverview.fromJson(json['overview'] as Map<String, dynamic>),
      content: InvestigationContent.fromJson(
          json['content'] as Map<String, dynamic>),
      overallScore: $enumDecode(_$OverallScoreEnumMap, json['overallScore']),
    );

Map<String, dynamic> _$$InvestigationRecordImplToJson(
        _$InvestigationRecordImpl instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'overview': instance.overview,
      'content': instance.content,
      'overallScore': _$OverallScoreEnumMap[instance.overallScore]!,
    };

const _$OverallScoreEnumMap = {
  OverallScore.red: 'red',
  OverallScore.yellow: 'yellow',
  OverallScore.green: 'green',
};
