import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'map_model.freezed.dart';
part 'map_model.g.dart';

//各建築物の緯度経度
@freezed
class MapState with _$MapState {
  const factory MapState({
    @Default([]) List<LatLng> allMarkers,//すべての建築物
    @Default([]) List<LatLng> redBuildingMarkers,//赤評価の建築物
    @Default([]) List<LatLng> yellowBuildingMarkers,//黄色評価の建築物
    @Default([]) List<LatLng> greenBuildingMarkers,//緑評価の建築物
    @Default([]) List<LatLng> waitingRedBuildingMarkers,//赤(仮判定)の建築物
    @Default([]) List<LatLng> waitingYellowBuildingMarkers,//黄色(仮判定)の建築物
    @Default([]) List<LatLng> waitingGreenBuildingMarkers,//緑(仮判定)の建築物
    @Default([]) List<LatLng> otherMarkers,
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

  factory MarkerData.fromJson(Map<String, dynamic> json) => MarkerData(
        position: LatLng(
          (json['latitude'] as num).toDouble(),
          (json['longitude'] as num).toDouble(),
        ),
        overallScore: json['overallScore']?.toString() ?? '',
      );
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
