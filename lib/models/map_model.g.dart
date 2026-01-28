// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapStateImpl _$$MapStateImplFromJson(Map<String, dynamic> json) =>
    _$MapStateImpl(
      allMarkers: (json['allMarkers'] as List<dynamic>?)
              ?.map((e) => LatLng.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      redBuildingMarkers: (json['redBuildingMarkers'] as List<dynamic>?)
              ?.map((e) => LatLng.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      yellowBuildingMarkers: (json['yellowBuildingMarkers'] as List<dynamic>?)
              ?.map((e) => LatLng.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      greenBuildingMarkers: (json['greenBuildingMarkers'] as List<dynamic>?)
              ?.map((e) => LatLng.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      waitingRedBuildingMarkers:
          (json['waitingRedBuildingMarkers'] as List<dynamic>?)
                  ?.map((e) => LatLng.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      waitingYellowBuildingMarkers:
          (json['waitingYellowBuildingMarkers'] as List<dynamic>?)
                  ?.map((e) => LatLng.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      waitingGreenBuildingMarkers:
          (json['waitingGreenBuildingMarkers'] as List<dynamic>?)
                  ?.map((e) => LatLng.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      otherMarkers: (json['otherMarkers'] as List<dynamic>?)
              ?.map((e) => LatLng.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MapStateImplToJson(_$MapStateImpl instance) =>
    <String, dynamic>{
      'allMarkers': instance.allMarkers,
      'redBuildingMarkers': instance.redBuildingMarkers,
      'yellowBuildingMarkers': instance.yellowBuildingMarkers,
      'greenBuildingMarkers': instance.greenBuildingMarkers,
      'waitingRedBuildingMarkers': instance.waitingRedBuildingMarkers,
      'waitingYellowBuildingMarkers': instance.waitingYellowBuildingMarkers,
      'waitingGreenBuildingMarkers': instance.waitingGreenBuildingMarkers,
      'otherMarkers': instance.otherMarkers,
    };

_$MarkerDataImpl _$$MarkerDataImplFromJson(Map<String, dynamic> json) =>
    _$MarkerDataImpl(
      position: LatLng.fromJson(json['position'] as Map<String, dynamic>),
      overallScore: json['overallScore'] as String? ?? '',
    );

Map<String, dynamic> _$$MarkerDataImplToJson(_$MarkerDataImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'overallScore': instance.overallScore,
    };
