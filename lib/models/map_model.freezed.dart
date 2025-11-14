// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MapState _$MapStateFromJson(Map<String, dynamic> json) {
  return _MapState.fromJson(json);
}

/// @nodoc
mixin _$MapState {
  LatLng get currentLocation => throw _privateConstructorUsedError;
  List<LatLng> get redBuildingMarkers => throw _privateConstructorUsedError;
  List<LatLng> get yellowBuildingMarkers => throw _privateConstructorUsedError;
  List<LatLng> get greenBuildingMarkers => throw _privateConstructorUsedError;
  List<LatLng> get waitingBuildingMarkers => throw _privateConstructorUsedError;

  /// Serializes this MapState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
  @useResult
  $Res call(
      {LatLng currentLocation,
      List<LatLng> redBuildingMarkers,
      List<LatLng> yellowBuildingMarkers,
      List<LatLng> greenBuildingMarkers,
      List<LatLng> waitingBuildingMarkers});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
    Object? redBuildingMarkers = null,
    Object? yellowBuildingMarkers = null,
    Object? greenBuildingMarkers = null,
    Object? waitingBuildingMarkers = null,
  }) {
    return _then(_value.copyWith(
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      redBuildingMarkers: null == redBuildingMarkers
          ? _value.redBuildingMarkers
          : redBuildingMarkers // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      yellowBuildingMarkers: null == yellowBuildingMarkers
          ? _value.yellowBuildingMarkers
          : yellowBuildingMarkers // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      greenBuildingMarkers: null == greenBuildingMarkers
          ? _value.greenBuildingMarkers
          : greenBuildingMarkers // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      waitingBuildingMarkers: null == waitingBuildingMarkers
          ? _value.waitingBuildingMarkers
          : waitingBuildingMarkers // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapStateImplCopyWith<$Res>
    implements $MapStateCopyWith<$Res> {
  factory _$$MapStateImplCopyWith(
          _$MapStateImpl value, $Res Function(_$MapStateImpl) then) =
      __$$MapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LatLng currentLocation,
      List<LatLng> redBuildingMarkers,
      List<LatLng> yellowBuildingMarkers,
      List<LatLng> greenBuildingMarkers,
      List<LatLng> waitingBuildingMarkers});
}

/// @nodoc
class __$$MapStateImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateImpl>
    implements _$$MapStateImplCopyWith<$Res> {
  __$$MapStateImplCopyWithImpl(
      _$MapStateImpl _value, $Res Function(_$MapStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
    Object? redBuildingMarkers = null,
    Object? yellowBuildingMarkers = null,
    Object? greenBuildingMarkers = null,
    Object? waitingBuildingMarkers = null,
  }) {
    return _then(_$MapStateImpl(
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      redBuildingMarkers: null == redBuildingMarkers
          ? _value._redBuildingMarkers
          : redBuildingMarkers // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      yellowBuildingMarkers: null == yellowBuildingMarkers
          ? _value._yellowBuildingMarkers
          : yellowBuildingMarkers // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      greenBuildingMarkers: null == greenBuildingMarkers
          ? _value._greenBuildingMarkers
          : greenBuildingMarkers // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      waitingBuildingMarkers: null == waitingBuildingMarkers
          ? _value._waitingBuildingMarkers
          : waitingBuildingMarkers // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapStateImpl implements _MapState {
  const _$MapStateImpl(
      {this.currentLocation = const LatLng(35.6586, 139.7454),
      final List<LatLng> redBuildingMarkers = const [],
      final List<LatLng> yellowBuildingMarkers = const [],
      final List<LatLng> greenBuildingMarkers = const [],
      final List<LatLng> waitingBuildingMarkers = const []})
      : _redBuildingMarkers = redBuildingMarkers,
        _yellowBuildingMarkers = yellowBuildingMarkers,
        _greenBuildingMarkers = greenBuildingMarkers,
        _waitingBuildingMarkers = waitingBuildingMarkers;

  factory _$MapStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapStateImplFromJson(json);

  @override
  @JsonKey()
  final LatLng currentLocation;
  final List<LatLng> _redBuildingMarkers;
  @override
  @JsonKey()
  List<LatLng> get redBuildingMarkers {
    if (_redBuildingMarkers is EqualUnmodifiableListView)
      return _redBuildingMarkers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_redBuildingMarkers);
  }

  final List<LatLng> _yellowBuildingMarkers;
  @override
  @JsonKey()
  List<LatLng> get yellowBuildingMarkers {
    if (_yellowBuildingMarkers is EqualUnmodifiableListView)
      return _yellowBuildingMarkers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yellowBuildingMarkers);
  }

  final List<LatLng> _greenBuildingMarkers;
  @override
  @JsonKey()
  List<LatLng> get greenBuildingMarkers {
    if (_greenBuildingMarkers is EqualUnmodifiableListView)
      return _greenBuildingMarkers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_greenBuildingMarkers);
  }

  final List<LatLng> _waitingBuildingMarkers;
  @override
  @JsonKey()
  List<LatLng> get waitingBuildingMarkers {
    if (_waitingBuildingMarkers is EqualUnmodifiableListView)
      return _waitingBuildingMarkers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waitingBuildingMarkers);
  }

  @override
  String toString() {
    return 'MapState(currentLocation: $currentLocation, redBuildingMarkers: $redBuildingMarkers, yellowBuildingMarkers: $yellowBuildingMarkers, greenBuildingMarkers: $greenBuildingMarkers, waitingBuildingMarkers: $waitingBuildingMarkers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateImpl &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            const DeepCollectionEquality()
                .equals(other._redBuildingMarkers, _redBuildingMarkers) &&
            const DeepCollectionEquality()
                .equals(other._yellowBuildingMarkers, _yellowBuildingMarkers) &&
            const DeepCollectionEquality()
                .equals(other._greenBuildingMarkers, _greenBuildingMarkers) &&
            const DeepCollectionEquality().equals(
                other._waitingBuildingMarkers, _waitingBuildingMarkers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentLocation,
      const DeepCollectionEquality().hash(_redBuildingMarkers),
      const DeepCollectionEquality().hash(_yellowBuildingMarkers),
      const DeepCollectionEquality().hash(_greenBuildingMarkers),
      const DeepCollectionEquality().hash(_waitingBuildingMarkers));

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateImplCopyWith<_$MapStateImpl> get copyWith =>
      __$$MapStateImplCopyWithImpl<_$MapStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapStateImplToJson(
      this,
    );
  }
}

abstract class _MapState implements MapState {
  const factory _MapState(
      {final LatLng currentLocation,
      final List<LatLng> redBuildingMarkers,
      final List<LatLng> yellowBuildingMarkers,
      final List<LatLng> greenBuildingMarkers,
      final List<LatLng> waitingBuildingMarkers}) = _$MapStateImpl;

  factory _MapState.fromJson(Map<String, dynamic> json) =
      _$MapStateImpl.fromJson;

  @override
  LatLng get currentLocation;
  @override
  List<LatLng> get redBuildingMarkers;
  @override
  List<LatLng> get yellowBuildingMarkers;
  @override
  List<LatLng> get greenBuildingMarkers;
  @override
  List<LatLng> get waitingBuildingMarkers;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapStateImplCopyWith<_$MapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarkerData _$MarkerDataFromJson(Map<String, dynamic> json) {
  return _MarkerData.fromJson(json);
}

/// @nodoc
mixin _$MarkerData {
  LatLng get position => throw _privateConstructorUsedError;
  String get overallScore => throw _privateConstructorUsedError;

  /// Serializes this MarkerData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarkerDataCopyWith<MarkerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkerDataCopyWith<$Res> {
  factory $MarkerDataCopyWith(
          MarkerData value, $Res Function(MarkerData) then) =
      _$MarkerDataCopyWithImpl<$Res, MarkerData>;
  @useResult
  $Res call({LatLng position, String overallScore});
}

/// @nodoc
class _$MarkerDataCopyWithImpl<$Res, $Val extends MarkerData>
    implements $MarkerDataCopyWith<$Res> {
  _$MarkerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? overallScore = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkerDataImplCopyWith<$Res>
    implements $MarkerDataCopyWith<$Res> {
  factory _$$MarkerDataImplCopyWith(
          _$MarkerDataImpl value, $Res Function(_$MarkerDataImpl) then) =
      __$$MarkerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLng position, String overallScore});
}

/// @nodoc
class __$$MarkerDataImplCopyWithImpl<$Res>
    extends _$MarkerDataCopyWithImpl<$Res, _$MarkerDataImpl>
    implements _$$MarkerDataImplCopyWith<$Res> {
  __$$MarkerDataImplCopyWithImpl(
      _$MarkerDataImpl _value, $Res Function(_$MarkerDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? overallScore = null,
  }) {
    return _then(_$MarkerDataImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarkerDataImpl implements _MarkerData {
  const _$MarkerDataImpl({required this.position, this.overallScore = ''});

  factory _$MarkerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkerDataImplFromJson(json);

  @override
  final LatLng position;
  @override
  @JsonKey()
  final String overallScore;

  @override
  String toString() {
    return 'MarkerData(position: $position, overallScore: $overallScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkerDataImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.overallScore, overallScore) ||
                other.overallScore == overallScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, position, overallScore);

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkerDataImplCopyWith<_$MarkerDataImpl> get copyWith =>
      __$$MarkerDataImplCopyWithImpl<_$MarkerDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkerDataImplToJson(
      this,
    );
  }
}

abstract class _MarkerData implements MarkerData {
  const factory _MarkerData(
      {required final LatLng position,
      final String overallScore}) = _$MarkerDataImpl;

  factory _MarkerData.fromJson(Map<String, dynamic> json) =
      _$MarkerDataImpl.fromJson;

  @override
  LatLng get position;
  @override
  String get overallScore;

  /// Create a copy of MarkerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkerDataImplCopyWith<_$MarkerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
