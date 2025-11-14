import 'package:latlong2/latlong.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required LatLng now,
    double? heading,
  }) = _LocationState;
}
