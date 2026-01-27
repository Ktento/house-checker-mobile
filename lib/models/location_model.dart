import 'package:latlong2/latlong.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required LatLng now,
    double? heading,
    String? address,
  }) = _LocationState;
}

//地図モーダル専用クラス
@freezed
class SelectedLocation with _$SelectedLocation {
  const factory SelectedLocation({
    String? address,
    LatLng? latLng,
  }) = _SelectedLocation;
}
