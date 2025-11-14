// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapStateImpl _$$MapStateImplFromJson(Map<String, dynamic> json) =>
    _$MapStateImpl(
      currentLocation: json['currentLocation'] == null
          ? const LatLng(35.6586, 139.7454)
          : LatLng.fromJson(json['currentLocation'] as Map<String, dynamic>),
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
      waitingBuildingMarkers: (json['waitingBuildingMarkers'] as List<dynamic>?)
              ?.map((e) => LatLng.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MapStateImplToJson(_$MapStateImpl instance) =>
    <String, dynamic>{
      'currentLocation': instance.currentLocation,
      'redBuildingMarkers': instance.redBuildingMarkers,
      'yellowBuildingMarkers': instance.yellowBuildingMarkers,
      'greenBuildingMarkers': instance.greenBuildingMarkers,
      'waitingBuildingMarkers': instance.waitingBuildingMarkers,
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
