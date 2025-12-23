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
      adjacentBuildingRisk: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['adjacentBuildingRisk']),
      adjacentBuildingRiskImages:
          (json['adjacentBuildingRiskImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      unevenSettlement:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['unevenSettlement']),
      unevenSettlementImages: (json['unevenSettlementImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      foundationDamage:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['foundationDamage']),
      foundationDamageImages: (json['foundationDamageImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      firstFloorTilt:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['firstFloorTilt']),
      firstFloorTiltImages: (json['firstFloorTiltImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      wallDamage: $enumDecodeNullable(_$DamageLevelEnumMap, json['wallDamage']),
      wallDamageImages: (json['wallDamageImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      corrosionOrTermite:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['corrosionOrTermite']),
      corrosionOrTermiteImages:
          (json['corrosionOrTermiteImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      roofTile: $enumDecodeNullable(_$DamageLevelEnumMap, json['roofTile']),
      roofTileImages: (json['roofTileImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      windowFrame:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['windowFrame']),
      windowFrameImages: (json['windowFrameImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      exteriorWet:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['exteriorWet']),
      exteriorWetImages: (json['exteriorWetImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      exteriorDry:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['exteriorDry']),
      exteriorDryImages: (json['exteriorDryImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      signageAndEquipment: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['signageAndEquipment']),
      signageAndEquipmentImages:
          (json['signageAndEquipmentImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      outdoorStairs:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['outdoorStairs']),
      outdoorStairsImages: (json['outdoorStairsImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      others: $enumDecodeNullable(_$DamageLevelEnumMap, json['others']),
      othersImages: (json['othersImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      otherRemarks: json['otherRemarks'] as String?,
      overallExteriorScore: json['overallExteriorScore'] as String,
      overallStructuralScore: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['overallStructuralScore']),
      overallFallingObjectScore: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['overallFallingObjectScore']),
    );

Map<String, dynamic> _$$WoodenContentImplToJson(_$WoodenContentImpl instance) =>
    <String, dynamic>{
      'exteriorInspectionScore': instance.exteriorInspectionScore,
      'exteriorInspectionRemarks': instance.exteriorInspectionRemarks,
      'adjacentBuildingRisk':
          _$DamageLevelEnumMap[instance.adjacentBuildingRisk],
      'adjacentBuildingRiskImages': instance.adjacentBuildingRiskImages,
      'unevenSettlement': _$DamageLevelEnumMap[instance.unevenSettlement],
      'unevenSettlementImages': instance.unevenSettlementImages,
      'foundationDamage': _$DamageLevelEnumMap[instance.foundationDamage],
      'foundationDamageImages': instance.foundationDamageImages,
      'firstFloorTilt': _$DamageLevelEnumMap[instance.firstFloorTilt],
      'firstFloorTiltImages': instance.firstFloorTiltImages,
      'wallDamage': _$DamageLevelEnumMap[instance.wallDamage],
      'wallDamageImages': instance.wallDamageImages,
      'corrosionOrTermite': _$DamageLevelEnumMap[instance.corrosionOrTermite],
      'corrosionOrTermiteImages': instance.corrosionOrTermiteImages,
      'roofTile': _$DamageLevelEnumMap[instance.roofTile],
      'roofTileImages': instance.roofTileImages,
      'windowFrame': _$DamageLevelEnumMap[instance.windowFrame],
      'windowFrameImages': instance.windowFrameImages,
      'exteriorWet': _$DamageLevelEnumMap[instance.exteriorWet],
      'exteriorWetImages': instance.exteriorWetImages,
      'exteriorDry': _$DamageLevelEnumMap[instance.exteriorDry],
      'exteriorDryImages': instance.exteriorDryImages,
      'signageAndEquipment': _$DamageLevelEnumMap[instance.signageAndEquipment],
      'signageAndEquipmentImages': instance.signageAndEquipmentImages,
      'outdoorStairs': _$DamageLevelEnumMap[instance.outdoorStairs],
      'outdoorStairsImages': instance.outdoorStairsImages,
      'others': _$DamageLevelEnumMap[instance.others],
      'othersImages': instance.othersImages,
      'otherRemarks': instance.otherRemarks,
      'overallExteriorScore': instance.overallExteriorScore,
      'overallStructuralScore':
          _$DamageLevelEnumMap[instance.overallStructuralScore],
      'overallFallingObjectScore':
          _$DamageLevelEnumMap[instance.overallFallingObjectScore],
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
      adjacentBuildingRisk: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['adjacentBuildingRisk']),
      adjacentBuildingRiskImages:
          (json['adjacentBuildingRiskImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      unevenSettlement:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['unevenSettlement']),
      unevenSettlementImages: (json['unevenSettlementImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      upperFloorLe1:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['upperFloorLe1']),
      upperFloorLe1Images: (json['upperFloorLe1Images'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      upperFloorLe2:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['upperFloorLe2']),
      upperFloorLe2Images: (json['upperFloorLe2Images'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hasBuckling:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['hasBuckling']),
      hasBucklingImages: (json['hasBucklingImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bracingBreakRate:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['bracingBreakRate']),
      bracingBreakRateImages: (json['bracingBreakRateImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      jointFailure:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['jointFailure']),
      jointFailureImages: (json['jointFailureImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      columnBaseDamage:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['columnBaseDamage']),
      columnBaseDamageImages: (json['columnBaseDamageImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      corrosion: $enumDecodeNullable(_$DamageLevelEnumMap, json['corrosion']),
      corrosionImages: (json['corrosionImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      roofingMaterial:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['roofingMaterial']),
      roofingMaterialImages: (json['roofingMaterialImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      windowFrame:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['windowFrame']),
      windowFrameImages: (json['windowFrameImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      exteriorWet:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['exteriorWet']),
      exteriorWetImages: (json['exteriorWetImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      exteriorDry:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['exteriorDry']),
      exteriorDryImages: (json['exteriorDryImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      signageAndEquipment: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['signageAndEquipment']),
      signageAndEquipmentImages:
          (json['signageAndEquipmentImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      outdoorStairs:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['outdoorStairs']),
      outdoorStairsImages: (json['outdoorStairsImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      others: $enumDecodeNullable(_$DamageLevelEnumMap, json['others']),
      othersImages: (json['othersImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      otherRemarks: json['otherRemarks'] as String?,
      overallExteriorScore: json['overallExteriorScore'] as String,
      overallStructuralScore: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['overallStructuralScore']),
      overallFallingObjectScore: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['overallFallingObjectScore']),
    );

Map<String, dynamic> _$$SteelFrameContentImplToJson(
        _$SteelFrameContentImpl instance) =>
    <String, dynamic>{
      'exteriorInspectionScore': instance.exteriorInspectionScore,
      'exteriorInspectionRemarks': instance.exteriorInspectionRemarks,
      'adjacentBuildingRisk':
          _$DamageLevelEnumMap[instance.adjacentBuildingRisk],
      'adjacentBuildingRiskImages': instance.adjacentBuildingRiskImages,
      'unevenSettlement': _$DamageLevelEnumMap[instance.unevenSettlement],
      'unevenSettlementImages': instance.unevenSettlementImages,
      'upperFloorLe1': _$DamageLevelEnumMap[instance.upperFloorLe1],
      'upperFloorLe1Images': instance.upperFloorLe1Images,
      'upperFloorLe2': _$DamageLevelEnumMap[instance.upperFloorLe2],
      'upperFloorLe2Images': instance.upperFloorLe2Images,
      'hasBuckling': _$DamageLevelEnumMap[instance.hasBuckling],
      'hasBucklingImages': instance.hasBucklingImages,
      'bracingBreakRate': _$DamageLevelEnumMap[instance.bracingBreakRate],
      'bracingBreakRateImages': instance.bracingBreakRateImages,
      'jointFailure': _$DamageLevelEnumMap[instance.jointFailure],
      'jointFailureImages': instance.jointFailureImages,
      'columnBaseDamage': _$DamageLevelEnumMap[instance.columnBaseDamage],
      'columnBaseDamageImages': instance.columnBaseDamageImages,
      'corrosion': _$DamageLevelEnumMap[instance.corrosion],
      'corrosionImages': instance.corrosionImages,
      'roofingMaterial': _$DamageLevelEnumMap[instance.roofingMaterial],
      'roofingMaterialImages': instance.roofingMaterialImages,
      'windowFrame': _$DamageLevelEnumMap[instance.windowFrame],
      'windowFrameImages': instance.windowFrameImages,
      'exteriorWet': _$DamageLevelEnumMap[instance.exteriorWet],
      'exteriorWetImages': instance.exteriorWetImages,
      'exteriorDry': _$DamageLevelEnumMap[instance.exteriorDry],
      'exteriorDryImages': instance.exteriorDryImages,
      'signageAndEquipment': _$DamageLevelEnumMap[instance.signageAndEquipment],
      'signageAndEquipmentImages': instance.signageAndEquipmentImages,
      'outdoorStairs': _$DamageLevelEnumMap[instance.outdoorStairs],
      'outdoorStairsImages': instance.outdoorStairsImages,
      'others': _$DamageLevelEnumMap[instance.others],
      'othersImages': instance.othersImages,
      'otherRemarks': instance.otherRemarks,
      'overallExteriorScore': instance.overallExteriorScore,
      'overallStructuralScore':
          _$DamageLevelEnumMap[instance.overallStructuralScore],
      'overallFallingObjectScore':
          _$DamageLevelEnumMap[instance.overallFallingObjectScore],
    };

_$RebarContentImpl _$$RebarContentImplFromJson(Map<String, dynamic> json) =>
    _$RebarContentImpl(
      exteriorInspectionScore: (json['exteriorInspectionScore'] as num).toInt(),
      exteriorInspectionRemarks: json['exteriorInspectionRemarks'] as String?,
      hasSevereDamageMembers: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['hasSevereDamageMembers']),
      hasSevereDamageMembersImages:
          (json['hasSevereDamageMembersImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      adjacentBuildingRisk: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['adjacentBuildingRisk']),
      adjacentBuildingRiskImages:
          (json['adjacentBuildingRiskImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      groundFailureInclination: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['groundFailureInclination']),
      groundFailureInclinationImages:
          (json['groundFailureInclinationImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      unevenSettlement:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['unevenSettlement']),
      unevenSettlementImages: (json['unevenSettlementImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      inspectedFloorsForColumns:
          (json['inspectedFloorsForColumns'] as num).toInt(),
      totalColumnsLevel5: (json['totalColumnsLevel5'] as num).toInt(),
      surveyedColumnsLevel5: (json['surveyedColumnsLevel5'] as num).toInt(),
      percentColumnsLevel5: (json['percentColumnsLevel5'] as num).toDouble(),
      percentColumnsDamageLevel5: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['percentColumnsDamageLevel5']),
      percentColumnsDamageLevel5Images:
          (json['percentColumnsDamageLevel5Images'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      surveyRateLevel5: (json['surveyRateLevel5'] as num).toDouble(),
      totalColumnsLevel4: (json['totalColumnsLevel4'] as num).toInt(),
      surveyedColumnsLevel4: (json['surveyedColumnsLevel4'] as num).toInt(),
      percentColumnsLevel4: (json['percentColumnsLevel4'] as num).toDouble(),
      percentColumnsDamageLevel4: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['percentColumnsDamageLevel4']),
      percentColumnsDamageLevel4Images:
          (json['percentColumnsDamageLevel4Images'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      surveyRateLevel4: (json['surveyRateLevel4'] as num).toDouble(),
      windowFrame:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['windowFrame']),
      windowFrameImages: (json['windowFrameImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      exteriorMaterialMortarTileStone: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['exteriorMaterialMortarTileStone']),
      exteriorMaterialMortarTileStoneImages:
          (json['exteriorMaterialMortarTileStoneImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      exteriorMaterialALCPCMetalBlock: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['exteriorMaterialALCPCMetalBlock']),
      exteriorMaterialALCPCMetalBlockImages:
          (json['exteriorMaterialALCPCMetalBlockImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      signageAndEquipment: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['signageAndEquipment']),
      signageAndEquipmentImages:
          (json['signageAndEquipmentImages'] as List<dynamic>?)
                  ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      outdoorStairs:
          $enumDecodeNullable(_$DamageLevelEnumMap, json['outdoorStairs']),
      outdoorStairsImages: (json['outdoorStairsImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      others: $enumDecodeNullable(_$DamageLevelEnumMap, json['others']),
      othersImages: (json['othersImages'] as List<dynamic>?)
              ?.map((e) => ImagePaths.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      otherRemarks: json['otherRemarks'] as String?,
      overallExteriorScore: json['overallExteriorScore'] as String,
      overallStructuralScore2: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['overallStructuralScore2']),
      overallStructuralScore: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['overallStructuralScore']),
      overallFallingObjectScore: $enumDecodeNullable(
          _$DamageLevelEnumMap, json['overallFallingObjectScore']),
    );

Map<String, dynamic> _$$RebarContentImplToJson(_$RebarContentImpl instance) =>
    <String, dynamic>{
      'exteriorInspectionScore': instance.exteriorInspectionScore,
      'exteriorInspectionRemarks': instance.exteriorInspectionRemarks,
      'hasSevereDamageMembers':
          _$DamageLevelEnumMap[instance.hasSevereDamageMembers],
      'hasSevereDamageMembersImages': instance.hasSevereDamageMembersImages,
      'adjacentBuildingRisk':
          _$DamageLevelEnumMap[instance.adjacentBuildingRisk],
      'adjacentBuildingRiskImages': instance.adjacentBuildingRiskImages,
      'groundFailureInclination':
          _$DamageLevelEnumMap[instance.groundFailureInclination],
      'groundFailureInclinationImages': instance.groundFailureInclinationImages,
      'unevenSettlement': _$DamageLevelEnumMap[instance.unevenSettlement],
      'unevenSettlementImages': instance.unevenSettlementImages,
      'inspectedFloorsForColumns': instance.inspectedFloorsForColumns,
      'totalColumnsLevel5': instance.totalColumnsLevel5,
      'surveyedColumnsLevel5': instance.surveyedColumnsLevel5,
      'percentColumnsLevel5': instance.percentColumnsLevel5,
      'percentColumnsDamageLevel5':
          _$DamageLevelEnumMap[instance.percentColumnsDamageLevel5],
      'percentColumnsDamageLevel5Images':
          instance.percentColumnsDamageLevel5Images,
      'surveyRateLevel5': instance.surveyRateLevel5,
      'totalColumnsLevel4': instance.totalColumnsLevel4,
      'surveyedColumnsLevel4': instance.surveyedColumnsLevel4,
      'percentColumnsLevel4': instance.percentColumnsLevel4,
      'percentColumnsDamageLevel4':
          _$DamageLevelEnumMap[instance.percentColumnsDamageLevel4],
      'percentColumnsDamageLevel4Images':
          instance.percentColumnsDamageLevel4Images,
      'surveyRateLevel4': instance.surveyRateLevel4,
      'windowFrame': _$DamageLevelEnumMap[instance.windowFrame],
      'windowFrameImages': instance.windowFrameImages,
      'exteriorMaterialMortarTileStone':
          _$DamageLevelEnumMap[instance.exteriorMaterialMortarTileStone],
      'exteriorMaterialMortarTileStoneImages':
          instance.exteriorMaterialMortarTileStoneImages,
      'exteriorMaterialALCPCMetalBlock':
          _$DamageLevelEnumMap[instance.exteriorMaterialALCPCMetalBlock],
      'exteriorMaterialALCPCMetalBlockImages':
          instance.exteriorMaterialALCPCMetalBlockImages,
      'signageAndEquipment': _$DamageLevelEnumMap[instance.signageAndEquipment],
      'signageAndEquipmentImages': instance.signageAndEquipmentImages,
      'outdoorStairs': _$DamageLevelEnumMap[instance.outdoorStairs],
      'outdoorStairsImages': instance.outdoorStairsImages,
      'others': _$DamageLevelEnumMap[instance.others],
      'othersImages': instance.othersImages,
      'otherRemarks': instance.otherRemarks,
      'overallExteriorScore': instance.overallExteriorScore,
      'overallStructuralScore2':
          _$DamageLevelEnumMap[instance.overallStructuralScore2],
      'overallStructuralScore':
          _$DamageLevelEnumMap[instance.overallStructuralScore],
      'overallFallingObjectScore':
          _$DamageLevelEnumMap[instance.overallFallingObjectScore],
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

_$RebarRecordImpl _$$RebarRecordImplFromJson(Map<String, dynamic> json) =>
    _$RebarRecordImpl(
      unit: InvestigationUnit.fromJson(json['unit'] as Map<String, dynamic>),
      overview:
          BuildingOverview.fromJson(json['overview'] as Map<String, dynamic>),
      content: RebarContent.fromJson(json['content'] as Map<String, dynamic>),
      overallScore: $enumDecode(_$OverallScoreEnumMap, json['overallScore']),
    );

Map<String, dynamic> _$$RebarRecordImplToJson(_$RebarRecordImpl instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'overview': instance.overview,
      'content': instance.content,
      'overallScore': _$OverallScoreEnumMap[instance.overallScore]!,
    };
