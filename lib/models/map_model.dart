import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'map_model.freezed.dart';
part 'map_model.g.dart';

@freezed
class MapState with _$MapState {
  const factory MapState({
    @Default(LatLng(35.6586, 139.7454)) LatLng currentLocation,
    @Default([]) List<LatLng> redBuildingMarkers,
    @Default([]) List<LatLng> yellowBuildingMarkers,
    @Default([]) List<LatLng> greenBuildingMarkers,
    @Default([]) List<LatLng> waitingBuildingMarkers,
  }) = _MapState;

  factory MapState.fromJson(Map<String, dynamic> json) =>
      _$MapStateFromJson(json);
}

@freezed
class MarkerData with _$MarkerData {
  const factory MarkerData({
    required LatLng position,
    @Default('') String overallScore,
  }) = _MarkerData;

  factory MarkerData.fromJson(Map<String, dynamic> json) =>
      _$MarkerDataFromJson(json);
}

/// LatLngをJSONに変換するためのカスタムコンバー
class LatLngConverter implements JsonConverter<LatLng, Map<String, dynamic>> {
  const LatLngConverter();

  @override
  LatLng fromJson(Map<String, dynamic> json) {
    return LatLng(
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
    );
  }

  @override
  Map<String, dynamic> toJson(LatLng object) => {
        'latitude': object.latitude,
        'longitude': object.longitude,
      };
}
