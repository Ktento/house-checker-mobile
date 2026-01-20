// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationState {
  LatLng get now => throw _privateConstructorUsedError;
  double? get heading => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call({LatLng now, double? heading, String? address});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? now = null,
    Object? heading = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      now: null == now
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as LatLng,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationStateImplCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$LocationStateImplCopyWith(
          _$LocationStateImpl value, $Res Function(_$LocationStateImpl) then) =
      __$$LocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLng now, double? heading, String? address});
}

/// @nodoc
class __$$LocationStateImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateImpl>
    implements _$$LocationStateImplCopyWith<$Res> {
  __$$LocationStateImplCopyWithImpl(
      _$LocationStateImpl _value, $Res Function(_$LocationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? now = null,
    Object? heading = freezed,
    Object? address = freezed,
  }) {
    return _then(_$LocationStateImpl(
      now: null == now
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as LatLng,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocationStateImpl implements _LocationState {
  const _$LocationStateImpl({required this.now, this.heading, this.address});

  @override
  final LatLng now;
  @override
  final double? heading;
  @override
  final String? address;

  @override
  String toString() {
    return 'LocationState(now: $now, heading: $heading, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateImpl &&
            (identical(other.now, now) || other.now == now) &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, now, heading, address);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      __$$LocationStateImplCopyWithImpl<_$LocationStateImpl>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {required final LatLng now,
      final double? heading,
      final String? address}) = _$LocationStateImpl;

  @override
  LatLng get now;
  @override
  double? get heading;
  @override
  String? get address;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectedLocation {
  String? get address => throw _privateConstructorUsedError;
  LatLng? get latLng => throw _privateConstructorUsedError;

  /// Create a copy of SelectedLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedLocationCopyWith<SelectedLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedLocationCopyWith<$Res> {
  factory $SelectedLocationCopyWith(
          SelectedLocation value, $Res Function(SelectedLocation) then) =
      _$SelectedLocationCopyWithImpl<$Res, SelectedLocation>;
  @useResult
  $Res call({String? address, LatLng? latLng});
}

/// @nodoc
class _$SelectedLocationCopyWithImpl<$Res, $Val extends SelectedLocation>
    implements $SelectedLocationCopyWith<$Res> {
  _$SelectedLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? latLng = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latLng: freezed == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedLocationImplCopyWith<$Res>
    implements $SelectedLocationCopyWith<$Res> {
  factory _$$SelectedLocationImplCopyWith(_$SelectedLocationImpl value,
          $Res Function(_$SelectedLocationImpl) then) =
      __$$SelectedLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? address, LatLng? latLng});
}

/// @nodoc
class __$$SelectedLocationImplCopyWithImpl<$Res>
    extends _$SelectedLocationCopyWithImpl<$Res, _$SelectedLocationImpl>
    implements _$$SelectedLocationImplCopyWith<$Res> {
  __$$SelectedLocationImplCopyWithImpl(_$SelectedLocationImpl _value,
      $Res Function(_$SelectedLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? latLng = freezed,
  }) {
    return _then(_$SelectedLocationImpl(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latLng: freezed == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc

class _$SelectedLocationImpl implements _SelectedLocation {
  const _$SelectedLocationImpl({this.address, this.latLng});

  @override
  final String? address;
  @override
  final LatLng? latLng;

  @override
  String toString() {
    return 'SelectedLocation(address: $address, latLng: $latLng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedLocationImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latLng, latLng) || other.latLng == latLng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, latLng);

  /// Create a copy of SelectedLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedLocationImplCopyWith<_$SelectedLocationImpl> get copyWith =>
      __$$SelectedLocationImplCopyWithImpl<_$SelectedLocationImpl>(
          this, _$identity);
}

abstract class _SelectedLocation implements SelectedLocation {
  const factory _SelectedLocation(
      {final String? address, final LatLng? latLng}) = _$SelectedLocationImpl;

  @override
  String? get address;
  @override
  LatLng? get latLng;

  /// Create a copy of SelectedLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedLocationImplCopyWith<_$SelectedLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
