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

_$ImagePathsImpl _$$ImagePathsImplFromJson(Map<String, dynamic> json) =>
    _$ImagePathsImpl(
      localPath: json['localPath'] as String,
      firebaseUrl: json['firebaseUrl'] as String,
    );

Map<String, dynamic> _$$ImagePathsImplToJson(_$ImagePathsImpl instance) =>
    <String, dynamic>{
      'localPath': instance.localPath,
      'firebaseUrl': instance.firebaseUrl,
    };

_$WoodenContentImpl _$$WoodenContentImplFromJson(Map<String, dynamic> json) =>
    _$WoodenContentImpl(
      exteriorInspectionScore: (json['exteriorInspectionScore'] as num).toInt(),
      exteriorInspectionRemarks: json['exteriorInspectionRemarks'] as String?,
      adjacentBuildingRisk:
          $enumDecode(_$DamageLevelEnumMap, json['adjacentBuildingRisk']),
      adjacentBuildingRiskImages:
          (json['adjacentBuildingRiskImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      unevenSettlement:
          $enumDecode(_$DamageLevelEnumMap, json['unevenSettlement']),
      unevenSettlementImages: (json['unevenSettlementImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      foundationDamage:
          $enumDecode(_$DamageLevelEnumMap, json['foundationDamage']),
      foundationDamageImages: (json['foundationDamageImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      firstFloorTilt: $enumDecode(_$DamageLevelEnumMap, json['firstFloorTilt']),
      firstFloorTiltImages: (json['firstFloorTiltImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      wallDamage: $enumDecode(_$DamageLevelEnumMap, json['wallDamage']),
      wallDamageImages: (json['wallDamageImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      corrosionOrTermite:
          $enumDecode(_$DamageLevelEnumMap, json['corrosionOrTermite']),
      corrosionOrTermiteImages:
          (json['corrosionOrTermiteImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      roofTile: $enumDecode(_$DamageLevelEnumMap, json['roofTile']),
      roofTileImages: (json['roofTileImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      windowFrame: $enumDecode(_$DamageLevelEnumMap, json['windowFrame']),
      windowFrameImages: (json['windowFrameImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      exteriorWet: $enumDecode(_$DamageLevelEnumMap, json['exteriorWet']),
      exteriorWetImages: (json['exteriorWetImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      exteriorDry: $enumDecode(_$DamageLevelEnumMap, json['exteriorDry']),
      exteriorDryImages: (json['exteriorDryImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      signageAndEquipment:
          $enumDecode(_$DamageLevelEnumMap, json['signageAndEquipment']),
      signageAndEquipmentImages:
          (json['signageAndEquipmentImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      outdoorStairs: $enumDecode(_$DamageLevelEnumMap, json['outdoorStairs']),
      outdoorStairsImages: (json['outdoorStairsImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      others: $enumDecode(_$DamageLevelEnumMap, json['others']),
      othersImages: (json['othersImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      otherRemarks: json['otherRemarks'] as String?,
      overallExteriorScore: json['overallExteriorScore'] as String,
      overallStructuralScore:
          $enumDecode(_$DamageLevelEnumMap, json['overallStructuralScore']),
      overallFallingObjectScore:
          $enumDecode(_$DamageLevelEnumMap, json['overallFallingObjectScore']),
    );

Map<String, dynamic> _$$WoodenContentImplToJson(_$WoodenContentImpl instance) =>
    <String, dynamic>{
      'exteriorInspectionScore': instance.exteriorInspectionScore,
      'exteriorInspectionRemarks': instance.exteriorInspectionRemarks,
      'adjacentBuildingRisk':
          _$DamageLevelEnumMap[instance.adjacentBuildingRisk]!,
      'adjacentBuildingRiskImages': instance.adjacentBuildingRiskImages,
      'unevenSettlement': _$DamageLevelEnumMap[instance.unevenSettlement]!,
      'unevenSettlementImages': instance.unevenSettlementImages,
      'foundationDamage': _$DamageLevelEnumMap[instance.foundationDamage]!,
      'foundationDamageImages': instance.foundationDamageImages,
      'firstFloorTilt': _$DamageLevelEnumMap[instance.firstFloorTilt]!,
      'firstFloorTiltImages': instance.firstFloorTiltImages,
      'wallDamage': _$DamageLevelEnumMap[instance.wallDamage]!,
      'wallDamageImages': instance.wallDamageImages,
      'corrosionOrTermite': _$DamageLevelEnumMap[instance.corrosionOrTermite]!,
      'corrosionOrTermiteImages': instance.corrosionOrTermiteImages,
      'roofTile': _$DamageLevelEnumMap[instance.roofTile]!,
      'roofTileImages': instance.roofTileImages,
      'windowFrame': _$DamageLevelEnumMap[instance.windowFrame]!,
      'windowFrameImages': instance.windowFrameImages,
      'exteriorWet': _$DamageLevelEnumMap[instance.exteriorWet]!,
      'exteriorWetImages': instance.exteriorWetImages,
      'exteriorDry': _$DamageLevelEnumMap[instance.exteriorDry]!,
      'exteriorDryImages': instance.exteriorDryImages,
      'signageAndEquipment':
          _$DamageLevelEnumMap[instance.signageAndEquipment]!,
      'signageAndEquipmentImages': instance.signageAndEquipmentImages,
      'outdoorStairs': _$DamageLevelEnumMap[instance.outdoorStairs]!,
      'outdoorStairsImages': instance.outdoorStairsImages,
      'others': _$DamageLevelEnumMap[instance.others]!,
      'othersImages': instance.othersImages,
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

_$SteelFrameContentImpl _$$SteelFrameContentImplFromJson(
        Map<String, dynamic> json) =>
    _$SteelFrameContentImpl(
      exteriorInspectionScore: (json['exteriorInspectionScore'] as num).toInt(),
      exteriorInspectionRemarks: json['exteriorInspectionRemarks'] as String?,
      adjacentBuildingRisk:
          $enumDecode(_$DamageLevelEnumMap, json['adjacentBuildingRisk']),
      adjacentBuildingRiskImages:
          (json['adjacentBuildingRiskImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      unevenSettlement:
          $enumDecode(_$DamageLevelEnumMap, json['unevenSettlement']),
      unevenSettlementImages: (json['unevenSettlementImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      upperFloorLe1: $enumDecode(_$DamageLevelEnumMap, json['upperFloorLe1']),
      upperFloorLe1Images: (json['upperFloorLe1Images'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      upperFloorLe2: $enumDecode(_$DamageLevelEnumMap, json['upperFloorLe2']),
      upperFloorLe2Images: (json['upperFloorLe2Images'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hasBuckling: $enumDecode(_$DamageLevelEnumMap, json['hasBuckling']),
      hasBucklingImages: (json['hasBucklingImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bracingBreakRate:
          $enumDecode(_$DamageLevelEnumMap, json['bracingBreakRate']),
      bracingBreakRateImages: (json['bracingBreakRateImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      jointFailure: $enumDecode(_$DamageLevelEnumMap, json['jointFailure']),
      jointFailureImages: (json['jointFailureImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      columnBaseDamage:
          $enumDecode(_$DamageLevelEnumMap, json['columnBaseDamage']),
      columnBaseDamageImages: (json['columnBaseDamageImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      corrosion: $enumDecode(_$DamageLevelEnumMap, json['corrosion']),
      corrosionImages: (json['corrosionImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      roofingMaterial:
          $enumDecode(_$DamageLevelEnumMap, json['roofingMaterial']),
      roofingMaterialImages: (json['roofingMaterialImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      windowFrame: $enumDecode(_$DamageLevelEnumMap, json['windowFrame']),
      windowFrameImages: (json['windowFrameImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      exteriorWet: $enumDecode(_$DamageLevelEnumMap, json['exteriorWet']),
      exteriorWetImages: (json['exteriorWetImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      exteriorDry: $enumDecode(_$DamageLevelEnumMap, json['exteriorDry']),
      exteriorDryImages: (json['exteriorDryImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      signageAndEquipment:
          $enumDecode(_$DamageLevelEnumMap, json['signageAndEquipment']),
      signageAndEquipmentImages:
          (json['signageAndEquipmentImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      outdoorStairs: $enumDecode(_$DamageLevelEnumMap, json['outdoorStairs']),
      outdoorStairsImages: (json['outdoorStairsImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      others: $enumDecode(_$DamageLevelEnumMap, json['others']),
      othersImages: (json['othersImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      otherRemarks: json['otherRemarks'] as String?,
      overallExteriorScore: json['overallExteriorScore'] as String,
      overallStructuralScore:
          $enumDecode(_$DamageLevelEnumMap, json['overallStructuralScore']),
      overallFallingObjectScore:
          $enumDecode(_$DamageLevelEnumMap, json['overallFallingObjectScore']),
    );

Map<String, dynamic> _$$SteelFrameContentImplToJson(
        _$SteelFrameContentImpl instance) =>
    <String, dynamic>{
      'exteriorInspectionScore': instance.exteriorInspectionScore,
      'exteriorInspectionRemarks': instance.exteriorInspectionRemarks,
      'adjacentBuildingRisk':
          _$DamageLevelEnumMap[instance.adjacentBuildingRisk]!,
      'adjacentBuildingRiskImages': instance.adjacentBuildingRiskImages,
      'unevenSettlement': _$DamageLevelEnumMap[instance.unevenSettlement]!,
      'unevenSettlementImages': instance.unevenSettlementImages,
      'upperFloorLe1': _$DamageLevelEnumMap[instance.upperFloorLe1]!,
      'upperFloorLe1Images': instance.upperFloorLe1Images,
      'upperFloorLe2': _$DamageLevelEnumMap[instance.upperFloorLe2]!,
      'upperFloorLe2Images': instance.upperFloorLe2Images,
      'hasBuckling': _$DamageLevelEnumMap[instance.hasBuckling]!,
      'hasBucklingImages': instance.hasBucklingImages,
      'bracingBreakRate': _$DamageLevelEnumMap[instance.bracingBreakRate]!,
      'bracingBreakRateImages': instance.bracingBreakRateImages,
      'jointFailure': _$DamageLevelEnumMap[instance.jointFailure]!,
      'jointFailureImages': instance.jointFailureImages,
      'columnBaseDamage': _$DamageLevelEnumMap[instance.columnBaseDamage]!,
      'columnBaseDamageImages': instance.columnBaseDamageImages,
      'corrosion': _$DamageLevelEnumMap[instance.corrosion]!,
      'corrosionImages': instance.corrosionImages,
      'roofingMaterial': _$DamageLevelEnumMap[instance.roofingMaterial]!,
      'roofingMaterialImages': instance.roofingMaterialImages,
      'windowFrame': _$DamageLevelEnumMap[instance.windowFrame]!,
      'windowFrameImages': instance.windowFrameImages,
      'exteriorWet': _$DamageLevelEnumMap[instance.exteriorWet]!,
      'exteriorWetImages': instance.exteriorWetImages,
      'exteriorDry': _$DamageLevelEnumMap[instance.exteriorDry]!,
      'exteriorDryImages': instance.exteriorDryImages,
      'signageAndEquipment':
          _$DamageLevelEnumMap[instance.signageAndEquipment]!,
      'signageAndEquipmentImages': instance.signageAndEquipmentImages,
      'outdoorStairs': _$DamageLevelEnumMap[instance.outdoorStairs]!,
      'outdoorStairsImages': instance.outdoorStairsImages,
      'others': _$DamageLevelEnumMap[instance.others]!,
      'othersImages': instance.othersImages,
      'otherRemarks': instance.otherRemarks,
      'overallExteriorScore': instance.overallExteriorScore,
      'overallStructuralScore':
          _$DamageLevelEnumMap[instance.overallStructuralScore]!,
      'overallFallingObjectScore':
          _$DamageLevelEnumMap[instance.overallFallingObjectScore]!,
    };

_$WoodenRecordImpl _$$WoodenRecordImplFromJson(Map<String, dynamic> json) =>
    _$WoodenRecordImpl(
      unit: InvestigationUnit.fromJson(json['unit'] as Map<String, dynamic>),
      overview:
          BuildingOverview.fromJson(json['overview'] as Map<String, dynamic>),
      content: WoodenContent.fromJson(json['content'] as Map<String, dynamic>),
      overallScore: $enumDecode(_$OverallScoreEnumMap, json['overallScore']),
    );

Map<String, dynamic> _$$WoodenRecordImplToJson(_$WoodenRecordImpl instance) =>
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

_$SteelFrameRecordImpl _$$SteelFrameRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$SteelFrameRecordImpl(
      unit: InvestigationUnit.fromJson(json['unit'] as Map<String, dynamic>),
      overview:
          BuildingOverview.fromJson(json['overview'] as Map<String, dynamic>),
      content:
          SteelFrameContent.fromJson(json['content'] as Map<String, dynamic>),
      overallScore: $enumDecode(_$OverallScoreEnumMap, json['overallScore']),
    );

Map<String, dynamic> _$$SteelFrameRecordImplToJson(
        _$SteelFrameRecordImpl instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'overview': instance.overview,
      'content': instance.content,
      'overallScore': _$OverallScoreEnumMap[instance.overallScore]!,
    };
