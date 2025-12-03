// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'investigator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvestigationUnit _$InvestigationUnitFromJson(Map<String, dynamic> json) {
  return _InvestigationUnit.fromJson(json);
}

/// @nodoc
mixin _$InvestigationUnit {
  String get buildingtype => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get surveyCount => throw _privateConstructorUsedError;
  List<String> get investigator => throw _privateConstructorUsedError;
  List<String> get investigatorPrefecture => throw _privateConstructorUsedError;
  List<String> get investigatorNumber => throw _privateConstructorUsedError;
  @JsonKey(fromJson: latLngFromJson, toJson: latLngToJson)
  LatLng get currentPosition => throw _privateConstructorUsedError;

  /// Serializes this InvestigationUnit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvestigationUnit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvestigationUnitCopyWith<InvestigationUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestigationUnitCopyWith<$Res> {
  factory $InvestigationUnitCopyWith(
          InvestigationUnit value, $Res Function(InvestigationUnit) then) =
      _$InvestigationUnitCopyWithImpl<$Res, InvestigationUnit>;
  @useResult
  $Res call(
      {String buildingtype,
      String number,
      DateTime date,
      int surveyCount,
      List<String> investigator,
      List<String> investigatorPrefecture,
      List<String> investigatorNumber,
      @JsonKey(fromJson: latLngFromJson, toJson: latLngToJson)
      LatLng currentPosition});
}

/// @nodoc
class _$InvestigationUnitCopyWithImpl<$Res, $Val extends InvestigationUnit>
    implements $InvestigationUnitCopyWith<$Res> {
  _$InvestigationUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvestigationUnit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingtype = null,
    Object? number = null,
    Object? date = null,
    Object? surveyCount = null,
    Object? investigator = null,
    Object? investigatorPrefecture = null,
    Object? investigatorNumber = null,
    Object? currentPosition = null,
  }) {
    return _then(_value.copyWith(
      buildingtype: null == buildingtype
          ? _value.buildingtype
          : buildingtype // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      surveyCount: null == surveyCount
          ? _value.surveyCount
          : surveyCount // ignore: cast_nullable_to_non_nullable
              as int,
      investigator: null == investigator
          ? _value.investigator
          : investigator // ignore: cast_nullable_to_non_nullable
              as List<String>,
      investigatorPrefecture: null == investigatorPrefecture
          ? _value.investigatorPrefecture
          : investigatorPrefecture // ignore: cast_nullable_to_non_nullable
              as List<String>,
      investigatorNumber: null == investigatorNumber
          ? _value.investigatorNumber
          : investigatorNumber // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvestigationUnitImplCopyWith<$Res>
    implements $InvestigationUnitCopyWith<$Res> {
  factory _$$InvestigationUnitImplCopyWith(_$InvestigationUnitImpl value,
          $Res Function(_$InvestigationUnitImpl) then) =
      __$$InvestigationUnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String buildingtype,
      String number,
      DateTime date,
      int surveyCount,
      List<String> investigator,
      List<String> investigatorPrefecture,
      List<String> investigatorNumber,
      @JsonKey(fromJson: latLngFromJson, toJson: latLngToJson)
      LatLng currentPosition});
}

/// @nodoc
class __$$InvestigationUnitImplCopyWithImpl<$Res>
    extends _$InvestigationUnitCopyWithImpl<$Res, _$InvestigationUnitImpl>
    implements _$$InvestigationUnitImplCopyWith<$Res> {
  __$$InvestigationUnitImplCopyWithImpl(_$InvestigationUnitImpl _value,
      $Res Function(_$InvestigationUnitImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestigationUnit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingtype = null,
    Object? number = null,
    Object? date = null,
    Object? surveyCount = null,
    Object? investigator = null,
    Object? investigatorPrefecture = null,
    Object? investigatorNumber = null,
    Object? currentPosition = null,
  }) {
    return _then(_$InvestigationUnitImpl(
      buildingtype: null == buildingtype
          ? _value.buildingtype
          : buildingtype // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      surveyCount: null == surveyCount
          ? _value.surveyCount
          : surveyCount // ignore: cast_nullable_to_non_nullable
              as int,
      investigator: null == investigator
          ? _value._investigator
          : investigator // ignore: cast_nullable_to_non_nullable
              as List<String>,
      investigatorPrefecture: null == investigatorPrefecture
          ? _value._investigatorPrefecture
          : investigatorPrefecture // ignore: cast_nullable_to_non_nullable
              as List<String>,
      investigatorNumber: null == investigatorNumber
          ? _value._investigatorNumber
          : investigatorNumber // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestigationUnitImpl implements _InvestigationUnit {
  const _$InvestigationUnitImpl(
      {required this.buildingtype,
      required this.number,
      required this.date,
      required this.surveyCount,
      required final List<String> investigator,
      required final List<String> investigatorPrefecture,
      required final List<String> investigatorNumber,
      @JsonKey(fromJson: latLngFromJson, toJson: latLngToJson)
      required this.currentPosition})
      : _investigator = investigator,
        _investigatorPrefecture = investigatorPrefecture,
        _investigatorNumber = investigatorNumber;

  factory _$InvestigationUnitImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestigationUnitImplFromJson(json);

  @override
  final String buildingtype;
  @override
  final String number;
  @override
  final DateTime date;
  @override
  final int surveyCount;
  final List<String> _investigator;
  @override
  List<String> get investigator {
    if (_investigator is EqualUnmodifiableListView) return _investigator;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_investigator);
  }

  final List<String> _investigatorPrefecture;
  @override
  List<String> get investigatorPrefecture {
    if (_investigatorPrefecture is EqualUnmodifiableListView)
      return _investigatorPrefecture;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_investigatorPrefecture);
  }

  final List<String> _investigatorNumber;
  @override
  List<String> get investigatorNumber {
    if (_investigatorNumber is EqualUnmodifiableListView)
      return _investigatorNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_investigatorNumber);
  }

  @override
  @JsonKey(fromJson: latLngFromJson, toJson: latLngToJson)
  final LatLng currentPosition;

  @override
  String toString() {
    return 'InvestigationUnit(buildingtype: $buildingtype, number: $number, date: $date, surveyCount: $surveyCount, investigator: $investigator, investigatorPrefecture: $investigatorPrefecture, investigatorNumber: $investigatorNumber, currentPosition: $currentPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestigationUnitImpl &&
            (identical(other.buildingtype, buildingtype) ||
                other.buildingtype == buildingtype) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.surveyCount, surveyCount) ||
                other.surveyCount == surveyCount) &&
            const DeepCollectionEquality()
                .equals(other._investigator, _investigator) &&
            const DeepCollectionEquality().equals(
                other._investigatorPrefecture, _investigatorPrefecture) &&
            const DeepCollectionEquality()
                .equals(other._investigatorNumber, _investigatorNumber) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      buildingtype,
      number,
      date,
      surveyCount,
      const DeepCollectionEquality().hash(_investigator),
      const DeepCollectionEquality().hash(_investigatorPrefecture),
      const DeepCollectionEquality().hash(_investigatorNumber),
      currentPosition);

  /// Create a copy of InvestigationUnit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestigationUnitImplCopyWith<_$InvestigationUnitImpl> get copyWith =>
      __$$InvestigationUnitImplCopyWithImpl<_$InvestigationUnitImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestigationUnitImplToJson(
      this,
    );
  }
}

abstract class _InvestigationUnit implements InvestigationUnit {
  const factory _InvestigationUnit(
      {required final String buildingtype,
      required final String number,
      required final DateTime date,
      required final int surveyCount,
      required final List<String> investigator,
      required final List<String> investigatorPrefecture,
      required final List<String> investigatorNumber,
      @JsonKey(fromJson: latLngFromJson, toJson: latLngToJson)
      required final LatLng currentPosition}) = _$InvestigationUnitImpl;

  factory _InvestigationUnit.fromJson(Map<String, dynamic> json) =
      _$InvestigationUnitImpl.fromJson;

  @override
  String get buildingtype;
  @override
  String get number;
  @override
  DateTime get date;
  @override
  int get surveyCount;
  @override
  List<String> get investigator;
  @override
  List<String> get investigatorPrefecture;
  @override
  List<String> get investigatorNumber;
  @override
  @JsonKey(fromJson: latLngFromJson, toJson: latLngToJson)
  LatLng get currentPosition;

  /// Create a copy of InvestigationUnit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvestigationUnitImplCopyWith<_$InvestigationUnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BuildingOverview _$BuildingOverviewFromJson(Map<String, dynamic> json) {
  return _BuildingOverview.fromJson(json);
}

/// @nodoc
mixin _$BuildingOverview {
  String get buildingName => throw _privateConstructorUsedError;
  String get buildingNumber => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get mapNumber => throw _privateConstructorUsedError;
  String get buildingUse => throw _privateConstructorUsedError;
  String get structure => throw _privateConstructorUsedError;
  int get floors => throw _privateConstructorUsedError;
  String get scale => throw _privateConstructorUsedError;

  /// Serializes this BuildingOverview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BuildingOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuildingOverviewCopyWith<BuildingOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingOverviewCopyWith<$Res> {
  factory $BuildingOverviewCopyWith(
          BuildingOverview value, $Res Function(BuildingOverview) then) =
      _$BuildingOverviewCopyWithImpl<$Res, BuildingOverview>;
  @useResult
  $Res call(
      {String buildingName,
      String buildingNumber,
      String address,
      String mapNumber,
      String buildingUse,
      String structure,
      int floors,
      String scale});
}

/// @nodoc
class _$BuildingOverviewCopyWithImpl<$Res, $Val extends BuildingOverview>
    implements $BuildingOverviewCopyWith<$Res> {
  _$BuildingOverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuildingOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingName = null,
    Object? buildingNumber = null,
    Object? address = null,
    Object? mapNumber = null,
    Object? buildingUse = null,
    Object? structure = null,
    Object? floors = null,
    Object? scale = null,
  }) {
    return _then(_value.copyWith(
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      buildingNumber: null == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      mapNumber: null == mapNumber
          ? _value.mapNumber
          : mapNumber // ignore: cast_nullable_to_non_nullable
              as String,
      buildingUse: null == buildingUse
          ? _value.buildingUse
          : buildingUse // ignore: cast_nullable_to_non_nullable
              as String,
      structure: null == structure
          ? _value.structure
          : structure // ignore: cast_nullable_to_non_nullable
              as String,
      floors: null == floors
          ? _value.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuildingOverviewImplCopyWith<$Res>
    implements $BuildingOverviewCopyWith<$Res> {
  factory _$$BuildingOverviewImplCopyWith(_$BuildingOverviewImpl value,
          $Res Function(_$BuildingOverviewImpl) then) =
      __$$BuildingOverviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String buildingName,
      String buildingNumber,
      String address,
      String mapNumber,
      String buildingUse,
      String structure,
      int floors,
      String scale});
}

/// @nodoc
class __$$BuildingOverviewImplCopyWithImpl<$Res>
    extends _$BuildingOverviewCopyWithImpl<$Res, _$BuildingOverviewImpl>
    implements _$$BuildingOverviewImplCopyWith<$Res> {
  __$$BuildingOverviewImplCopyWithImpl(_$BuildingOverviewImpl _value,
      $Res Function(_$BuildingOverviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuildingOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingName = null,
    Object? buildingNumber = null,
    Object? address = null,
    Object? mapNumber = null,
    Object? buildingUse = null,
    Object? structure = null,
    Object? floors = null,
    Object? scale = null,
  }) {
    return _then(_$BuildingOverviewImpl(
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      buildingNumber: null == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      mapNumber: null == mapNumber
          ? _value.mapNumber
          : mapNumber // ignore: cast_nullable_to_non_nullable
              as String,
      buildingUse: null == buildingUse
          ? _value.buildingUse
          : buildingUse // ignore: cast_nullable_to_non_nullable
              as String,
      structure: null == structure
          ? _value.structure
          : structure // ignore: cast_nullable_to_non_nullable
              as String,
      floors: null == floors
          ? _value.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuildingOverviewImpl implements _BuildingOverview {
  const _$BuildingOverviewImpl(
      {required this.buildingName,
      required this.buildingNumber,
      required this.address,
      required this.mapNumber,
      required this.buildingUse,
      required this.structure,
      required this.floors,
      required this.scale});

  factory _$BuildingOverviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuildingOverviewImplFromJson(json);

  @override
  final String buildingName;
  @override
  final String buildingNumber;
  @override
  final String address;
  @override
  final String mapNumber;
  @override
  final String buildingUse;
  @override
  final String structure;
  @override
  final int floors;
  @override
  final String scale;

  @override
  String toString() {
    return 'BuildingOverview(buildingName: $buildingName, buildingNumber: $buildingNumber, address: $address, mapNumber: $mapNumber, buildingUse: $buildingUse, structure: $structure, floors: $floors, scale: $scale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildingOverviewImpl &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName) &&
            (identical(other.buildingNumber, buildingNumber) ||
                other.buildingNumber == buildingNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mapNumber, mapNumber) ||
                other.mapNumber == mapNumber) &&
            (identical(other.buildingUse, buildingUse) ||
                other.buildingUse == buildingUse) &&
            (identical(other.structure, structure) ||
                other.structure == structure) &&
            (identical(other.floors, floors) || other.floors == floors) &&
            (identical(other.scale, scale) || other.scale == scale));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, buildingName, buildingNumber,
      address, mapNumber, buildingUse, structure, floors, scale);

  /// Create a copy of BuildingOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildingOverviewImplCopyWith<_$BuildingOverviewImpl> get copyWith =>
      __$$BuildingOverviewImplCopyWithImpl<_$BuildingOverviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuildingOverviewImplToJson(
      this,
    );
  }
}

abstract class _BuildingOverview implements BuildingOverview {
  const factory _BuildingOverview(
      {required final String buildingName,
      required final String buildingNumber,
      required final String address,
      required final String mapNumber,
      required final String buildingUse,
      required final String structure,
      required final int floors,
      required final String scale}) = _$BuildingOverviewImpl;

  factory _BuildingOverview.fromJson(Map<String, dynamic> json) =
      _$BuildingOverviewImpl.fromJson;

  @override
  String get buildingName;
  @override
  String get buildingNumber;
  @override
  String get address;
  @override
  String get mapNumber;
  @override
  String get buildingUse;
  @override
  String get structure;
  @override
  int get floors;
  @override
  String get scale;

  /// Create a copy of BuildingOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuildingOverviewImplCopyWith<_$BuildingOverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImagePaths _$ImagePathsFromJson(Map<String, dynamic> json) {
  return _ImagePaths.fromJson(json);
}

/// @nodoc
mixin _$ImagePaths {
  String get localPath =>
      throw _privateConstructorUsedError; // XFile.path などのローカル保存先
  String get firebaseUrl => throw _privateConstructorUsedError;

  /// Serializes this ImagePaths to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImagePaths
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagePathsCopyWith<ImagePaths> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePathsCopyWith<$Res> {
  factory $ImagePathsCopyWith(
          ImagePaths value, $Res Function(ImagePaths) then) =
      _$ImagePathsCopyWithImpl<$Res, ImagePaths>;
  @useResult
  $Res call({String localPath, String firebaseUrl});
}

/// @nodoc
class _$ImagePathsCopyWithImpl<$Res, $Val extends ImagePaths>
    implements $ImagePathsCopyWith<$Res> {
  _$ImagePathsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagePaths
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localPath = null,
    Object? firebaseUrl = null,
  }) {
    return _then(_value.copyWith(
      localPath: null == localPath
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseUrl: null == firebaseUrl
          ? _value.firebaseUrl
          : firebaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagePathsImplCopyWith<$Res>
    implements $ImagePathsCopyWith<$Res> {
  factory _$$ImagePathsImplCopyWith(
          _$ImagePathsImpl value, $Res Function(_$ImagePathsImpl) then) =
      __$$ImagePathsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String localPath, String firebaseUrl});
}

/// @nodoc
class __$$ImagePathsImplCopyWithImpl<$Res>
    extends _$ImagePathsCopyWithImpl<$Res, _$ImagePathsImpl>
    implements _$$ImagePathsImplCopyWith<$Res> {
  __$$ImagePathsImplCopyWithImpl(
      _$ImagePathsImpl _value, $Res Function(_$ImagePathsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagePaths
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localPath = null,
    Object? firebaseUrl = null,
  }) {
    return _then(_$ImagePathsImpl(
      localPath: null == localPath
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseUrl: null == firebaseUrl
          ? _value.firebaseUrl
          : firebaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagePathsImpl implements _ImagePaths {
  const _$ImagePathsImpl({required this.localPath, required this.firebaseUrl});

  factory _$ImagePathsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagePathsImplFromJson(json);

  @override
  final String localPath;
// XFile.path などのローカル保存先
  @override
  final String firebaseUrl;

  @override
  String toString() {
    return 'ImagePaths(localPath: $localPath, firebaseUrl: $firebaseUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePathsImpl &&
            (identical(other.localPath, localPath) ||
                other.localPath == localPath) &&
            (identical(other.firebaseUrl, firebaseUrl) ||
                other.firebaseUrl == firebaseUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, localPath, firebaseUrl);

  /// Create a copy of ImagePaths
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagePathsImplCopyWith<_$ImagePathsImpl> get copyWith =>
      __$$ImagePathsImplCopyWithImpl<_$ImagePathsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagePathsImplToJson(
      this,
    );
  }
}

abstract class _ImagePaths implements ImagePaths {
  const factory _ImagePaths(
      {required final String localPath,
      required final String firebaseUrl}) = _$ImagePathsImpl;

  factory _ImagePaths.fromJson(Map<String, dynamic> json) =
      _$ImagePathsImpl.fromJson;

  @override
  String get localPath; // XFile.path などのローカル保存先
  @override
  String get firebaseUrl;

  /// Create a copy of ImagePaths
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagePathsImplCopyWith<_$ImagePathsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WoodenContent _$WoodenContentFromJson(Map<String, dynamic> json) {
  return _WoodenContent.fromJson(json);
}

/// @nodoc
mixin _$WoodenContent {
  int get exteriorInspectionScore => throw _privateConstructorUsedError;
  String? get exteriorInspectionRemarks =>
      throw _privateConstructorUsedError; //隣接建築物・周辺地盤等及び構造躯体にかんする危険度
  DamageLevel get adjacentBuildingRisk => throw _privateConstructorUsedError;
  List<ImagePaths> get adjacentBuildingRiskImages =>
      throw _privateConstructorUsedError; //構造躯体の不同沈下
  DamageLevel get unevenSettlement => throw _privateConstructorUsedError;
  List<ImagePaths> get unevenSettlementImages =>
      throw _privateConstructorUsedError; //基礎の被害
  DamageLevel get foundationDamage => throw _privateConstructorUsedError;
  List<ImagePaths> get foundationDamageImages =>
      throw _privateConstructorUsedError; //建築物の一回の傾斜
  DamageLevel get firstFloorTilt => throw _privateConstructorUsedError;
  List<ImagePaths> get firstFloorTiltImages =>
      throw _privateConstructorUsedError; //壁の被害
  DamageLevel get wallDamage => throw _privateConstructorUsedError;
  List<ImagePaths> get wallDamageImages =>
      throw _privateConstructorUsedError; //腐食・蟻害の有無
  DamageLevel get corrosionOrTermite => throw _privateConstructorUsedError;
  List<ImagePaths> get corrosionOrTermiteImages =>
      throw _privateConstructorUsedError; //落下危険物・転倒危険物に関する危険度
//瓦
  DamageLevel get roofTile => throw _privateConstructorUsedError;
  List<ImagePaths> get roofTileImages =>
      throw _privateConstructorUsedError; //窓枠・窓ガラス
  DamageLevel get windowFrame => throw _privateConstructorUsedError;
  List<ImagePaths> get windowFrameImages =>
      throw _privateConstructorUsedError; //外装材　湿式
  DamageLevel get exteriorWet => throw _privateConstructorUsedError;
  List<ImagePaths> get exteriorWetImages =>
      throw _privateConstructorUsedError; //外装材　乾式
  DamageLevel get exteriorDry => throw _privateConstructorUsedError;
  List<ImagePaths> get exteriorDryImages =>
      throw _privateConstructorUsedError; //看板・機器類
  DamageLevel get signageAndEquipment => throw _privateConstructorUsedError;
  List<ImagePaths> get signageAndEquipmentImages =>
      throw _privateConstructorUsedError; //その他
  DamageLevel get outdoorStairs => throw _privateConstructorUsedError;
  List<ImagePaths> get outdoorStairsImages =>
      throw _privateConstructorUsedError;
  DamageLevel get others => throw _privateConstructorUsedError;
  List<ImagePaths> get othersImages => throw _privateConstructorUsedError;
  String? get otherRemarks => throw _privateConstructorUsedError;
  String get overallExteriorScore => throw _privateConstructorUsedError;
  DamageLevel get overallStructuralScore => throw _privateConstructorUsedError;
  DamageLevel get overallFallingObjectScore =>
      throw _privateConstructorUsedError;

  /// Serializes this WoodenContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WoodenContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WoodenContentCopyWith<WoodenContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoodenContentCopyWith<$Res> {
  factory $WoodenContentCopyWith(
          WoodenContent value, $Res Function(WoodenContent) then) =
      _$WoodenContentCopyWithImpl<$Res, WoodenContent>;
  @useResult
  $Res call(
      {int exteriorInspectionScore,
      String? exteriorInspectionRemarks,
      DamageLevel adjacentBuildingRisk,
      List<ImagePaths> adjacentBuildingRiskImages,
      DamageLevel unevenSettlement,
      List<ImagePaths> unevenSettlementImages,
      DamageLevel foundationDamage,
      List<ImagePaths> foundationDamageImages,
      DamageLevel firstFloorTilt,
      List<ImagePaths> firstFloorTiltImages,
      DamageLevel wallDamage,
      List<ImagePaths> wallDamageImages,
      DamageLevel corrosionOrTermite,
      List<ImagePaths> corrosionOrTermiteImages,
      DamageLevel roofTile,
      List<ImagePaths> roofTileImages,
      DamageLevel windowFrame,
      List<ImagePaths> windowFrameImages,
      DamageLevel exteriorWet,
      List<ImagePaths> exteriorWetImages,
      DamageLevel exteriorDry,
      List<ImagePaths> exteriorDryImages,
      DamageLevel signageAndEquipment,
      List<ImagePaths> signageAndEquipmentImages,
      DamageLevel outdoorStairs,
      List<ImagePaths> outdoorStairsImages,
      DamageLevel others,
      List<ImagePaths> othersImages,
      String? otherRemarks,
      String overallExteriorScore,
      DamageLevel overallStructuralScore,
      DamageLevel overallFallingObjectScore});
}

/// @nodoc
class _$WoodenContentCopyWithImpl<$Res, $Val extends WoodenContent>
    implements $WoodenContentCopyWith<$Res> {
  _$WoodenContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WoodenContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exteriorInspectionScore = null,
    Object? exteriorInspectionRemarks = freezed,
    Object? adjacentBuildingRisk = null,
    Object? adjacentBuildingRiskImages = null,
    Object? unevenSettlement = null,
    Object? unevenSettlementImages = null,
    Object? foundationDamage = null,
    Object? foundationDamageImages = null,
    Object? firstFloorTilt = null,
    Object? firstFloorTiltImages = null,
    Object? wallDamage = null,
    Object? wallDamageImages = null,
    Object? corrosionOrTermite = null,
    Object? corrosionOrTermiteImages = null,
    Object? roofTile = null,
    Object? roofTileImages = null,
    Object? windowFrame = null,
    Object? windowFrameImages = null,
    Object? exteriorWet = null,
    Object? exteriorWetImages = null,
    Object? exteriorDry = null,
    Object? exteriorDryImages = null,
    Object? signageAndEquipment = null,
    Object? signageAndEquipmentImages = null,
    Object? outdoorStairs = null,
    Object? outdoorStairsImages = null,
    Object? others = null,
    Object? othersImages = null,
    Object? otherRemarks = freezed,
    Object? overallExteriorScore = null,
    Object? overallStructuralScore = null,
    Object? overallFallingObjectScore = null,
  }) {
    return _then(_value.copyWith(
      exteriorInspectionScore: null == exteriorInspectionScore
          ? _value.exteriorInspectionScore
          : exteriorInspectionScore // ignore: cast_nullable_to_non_nullable
              as int,
      exteriorInspectionRemarks: freezed == exteriorInspectionRemarks
          ? _value.exteriorInspectionRemarks
          : exteriorInspectionRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      adjacentBuildingRisk: null == adjacentBuildingRisk
          ? _value.adjacentBuildingRisk
          : adjacentBuildingRisk // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      adjacentBuildingRiskImages: null == adjacentBuildingRiskImages
          ? _value.adjacentBuildingRiskImages
          : adjacentBuildingRiskImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      unevenSettlement: null == unevenSettlement
          ? _value.unevenSettlement
          : unevenSettlement // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      unevenSettlementImages: null == unevenSettlementImages
          ? _value.unevenSettlementImages
          : unevenSettlementImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      foundationDamage: null == foundationDamage
          ? _value.foundationDamage
          : foundationDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      foundationDamageImages: null == foundationDamageImages
          ? _value.foundationDamageImages
          : foundationDamageImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      firstFloorTilt: null == firstFloorTilt
          ? _value.firstFloorTilt
          : firstFloorTilt // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      firstFloorTiltImages: null == firstFloorTiltImages
          ? _value.firstFloorTiltImages
          : firstFloorTiltImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      wallDamage: null == wallDamage
          ? _value.wallDamage
          : wallDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      wallDamageImages: null == wallDamageImages
          ? _value.wallDamageImages
          : wallDamageImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      corrosionOrTermite: null == corrosionOrTermite
          ? _value.corrosionOrTermite
          : corrosionOrTermite // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      corrosionOrTermiteImages: null == corrosionOrTermiteImages
          ? _value.corrosionOrTermiteImages
          : corrosionOrTermiteImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      roofTile: null == roofTile
          ? _value.roofTile
          : roofTile // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      roofTileImages: null == roofTileImages
          ? _value.roofTileImages
          : roofTileImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      windowFrame: null == windowFrame
          ? _value.windowFrame
          : windowFrame // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      windowFrameImages: null == windowFrameImages
          ? _value.windowFrameImages
          : windowFrameImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorWet: null == exteriorWet
          ? _value.exteriorWet
          : exteriorWet // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      exteriorWetImages: null == exteriorWetImages
          ? _value.exteriorWetImages
          : exteriorWetImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorDry: null == exteriorDry
          ? _value.exteriorDry
          : exteriorDry // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      exteriorDryImages: null == exteriorDryImages
          ? _value.exteriorDryImages
          : exteriorDryImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      signageAndEquipment: null == signageAndEquipment
          ? _value.signageAndEquipment
          : signageAndEquipment // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      signageAndEquipmentImages: null == signageAndEquipmentImages
          ? _value.signageAndEquipmentImages
          : signageAndEquipmentImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      outdoorStairs: null == outdoorStairs
          ? _value.outdoorStairs
          : outdoorStairs // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      outdoorStairsImages: null == outdoorStairsImages
          ? _value.outdoorStairsImages
          : outdoorStairsImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      othersImages: null == othersImages
          ? _value.othersImages
          : othersImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      otherRemarks: freezed == otherRemarks
          ? _value.otherRemarks
          : otherRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      overallExteriorScore: null == overallExteriorScore
          ? _value.overallExteriorScore
          : overallExteriorScore // ignore: cast_nullable_to_non_nullable
              as String,
      overallStructuralScore: null == overallStructuralScore
          ? _value.overallStructuralScore
          : overallStructuralScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      overallFallingObjectScore: null == overallFallingObjectScore
          ? _value.overallFallingObjectScore
          : overallFallingObjectScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WoodenContentImplCopyWith<$Res>
    implements $WoodenContentCopyWith<$Res> {
  factory _$$WoodenContentImplCopyWith(
          _$WoodenContentImpl value, $Res Function(_$WoodenContentImpl) then) =
      __$$WoodenContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int exteriorInspectionScore,
      String? exteriorInspectionRemarks,
      DamageLevel adjacentBuildingRisk,
      List<ImagePaths> adjacentBuildingRiskImages,
      DamageLevel unevenSettlement,
      List<ImagePaths> unevenSettlementImages,
      DamageLevel foundationDamage,
      List<ImagePaths> foundationDamageImages,
      DamageLevel firstFloorTilt,
      List<ImagePaths> firstFloorTiltImages,
      DamageLevel wallDamage,
      List<ImagePaths> wallDamageImages,
      DamageLevel corrosionOrTermite,
      List<ImagePaths> corrosionOrTermiteImages,
      DamageLevel roofTile,
      List<ImagePaths> roofTileImages,
      DamageLevel windowFrame,
      List<ImagePaths> windowFrameImages,
      DamageLevel exteriorWet,
      List<ImagePaths> exteriorWetImages,
      DamageLevel exteriorDry,
      List<ImagePaths> exteriorDryImages,
      DamageLevel signageAndEquipment,
      List<ImagePaths> signageAndEquipmentImages,
      DamageLevel outdoorStairs,
      List<ImagePaths> outdoorStairsImages,
      DamageLevel others,
      List<ImagePaths> othersImages,
      String? otherRemarks,
      String overallExteriorScore,
      DamageLevel overallStructuralScore,
      DamageLevel overallFallingObjectScore});
}

/// @nodoc
class __$$WoodenContentImplCopyWithImpl<$Res>
    extends _$WoodenContentCopyWithImpl<$Res, _$WoodenContentImpl>
    implements _$$WoodenContentImplCopyWith<$Res> {
  __$$WoodenContentImplCopyWithImpl(
      _$WoodenContentImpl _value, $Res Function(_$WoodenContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoodenContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exteriorInspectionScore = null,
    Object? exteriorInspectionRemarks = freezed,
    Object? adjacentBuildingRisk = null,
    Object? adjacentBuildingRiskImages = null,
    Object? unevenSettlement = null,
    Object? unevenSettlementImages = null,
    Object? foundationDamage = null,
    Object? foundationDamageImages = null,
    Object? firstFloorTilt = null,
    Object? firstFloorTiltImages = null,
    Object? wallDamage = null,
    Object? wallDamageImages = null,
    Object? corrosionOrTermite = null,
    Object? corrosionOrTermiteImages = null,
    Object? roofTile = null,
    Object? roofTileImages = null,
    Object? windowFrame = null,
    Object? windowFrameImages = null,
    Object? exteriorWet = null,
    Object? exteriorWetImages = null,
    Object? exteriorDry = null,
    Object? exteriorDryImages = null,
    Object? signageAndEquipment = null,
    Object? signageAndEquipmentImages = null,
    Object? outdoorStairs = null,
    Object? outdoorStairsImages = null,
    Object? others = null,
    Object? othersImages = null,
    Object? otherRemarks = freezed,
    Object? overallExteriorScore = null,
    Object? overallStructuralScore = null,
    Object? overallFallingObjectScore = null,
  }) {
    return _then(_$WoodenContentImpl(
      exteriorInspectionScore: null == exteriorInspectionScore
          ? _value.exteriorInspectionScore
          : exteriorInspectionScore // ignore: cast_nullable_to_non_nullable
              as int,
      exteriorInspectionRemarks: freezed == exteriorInspectionRemarks
          ? _value.exteriorInspectionRemarks
          : exteriorInspectionRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      adjacentBuildingRisk: null == adjacentBuildingRisk
          ? _value.adjacentBuildingRisk
          : adjacentBuildingRisk // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      adjacentBuildingRiskImages: null == adjacentBuildingRiskImages
          ? _value._adjacentBuildingRiskImages
          : adjacentBuildingRiskImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      unevenSettlement: null == unevenSettlement
          ? _value.unevenSettlement
          : unevenSettlement // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      unevenSettlementImages: null == unevenSettlementImages
          ? _value._unevenSettlementImages
          : unevenSettlementImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      foundationDamage: null == foundationDamage
          ? _value.foundationDamage
          : foundationDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      foundationDamageImages: null == foundationDamageImages
          ? _value._foundationDamageImages
          : foundationDamageImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      firstFloorTilt: null == firstFloorTilt
          ? _value.firstFloorTilt
          : firstFloorTilt // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      firstFloorTiltImages: null == firstFloorTiltImages
          ? _value._firstFloorTiltImages
          : firstFloorTiltImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      wallDamage: null == wallDamage
          ? _value.wallDamage
          : wallDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      wallDamageImages: null == wallDamageImages
          ? _value._wallDamageImages
          : wallDamageImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      corrosionOrTermite: null == corrosionOrTermite
          ? _value.corrosionOrTermite
          : corrosionOrTermite // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      corrosionOrTermiteImages: null == corrosionOrTermiteImages
          ? _value._corrosionOrTermiteImages
          : corrosionOrTermiteImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      roofTile: null == roofTile
          ? _value.roofTile
          : roofTile // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      roofTileImages: null == roofTileImages
          ? _value._roofTileImages
          : roofTileImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      windowFrame: null == windowFrame
          ? _value.windowFrame
          : windowFrame // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      windowFrameImages: null == windowFrameImages
          ? _value._windowFrameImages
          : windowFrameImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorWet: null == exteriorWet
          ? _value.exteriorWet
          : exteriorWet // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      exteriorWetImages: null == exteriorWetImages
          ? _value._exteriorWetImages
          : exteriorWetImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorDry: null == exteriorDry
          ? _value.exteriorDry
          : exteriorDry // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      exteriorDryImages: null == exteriorDryImages
          ? _value._exteriorDryImages
          : exteriorDryImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      signageAndEquipment: null == signageAndEquipment
          ? _value.signageAndEquipment
          : signageAndEquipment // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      signageAndEquipmentImages: null == signageAndEquipmentImages
          ? _value._signageAndEquipmentImages
          : signageAndEquipmentImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      outdoorStairs: null == outdoorStairs
          ? _value.outdoorStairs
          : outdoorStairs // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      outdoorStairsImages: null == outdoorStairsImages
          ? _value._outdoorStairsImages
          : outdoorStairsImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      othersImages: null == othersImages
          ? _value._othersImages
          : othersImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      otherRemarks: freezed == otherRemarks
          ? _value.otherRemarks
          : otherRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      overallExteriorScore: null == overallExteriorScore
          ? _value.overallExteriorScore
          : overallExteriorScore // ignore: cast_nullable_to_non_nullable
              as String,
      overallStructuralScore: null == overallStructuralScore
          ? _value.overallStructuralScore
          : overallStructuralScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      overallFallingObjectScore: null == overallFallingObjectScore
          ? _value.overallFallingObjectScore
          : overallFallingObjectScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WoodenContentImpl implements _WoodenContent {
  const _$WoodenContentImpl(
      {required this.exteriorInspectionScore,
      this.exteriorInspectionRemarks,
      required this.adjacentBuildingRisk,
      final List<ImagePaths> adjacentBuildingRiskImages = const [],
      required this.unevenSettlement,
      final List<ImagePaths> unevenSettlementImages = const [],
      required this.foundationDamage,
      final List<ImagePaths> foundationDamageImages = const [],
      required this.firstFloorTilt,
      final List<ImagePaths> firstFloorTiltImages = const [],
      required this.wallDamage,
      final List<ImagePaths> wallDamageImages = const [],
      required this.corrosionOrTermite,
      final List<ImagePaths> corrosionOrTermiteImages = const [],
      required this.roofTile,
      final List<ImagePaths> roofTileImages = const [],
      required this.windowFrame,
      final List<ImagePaths> windowFrameImages = const [],
      required this.exteriorWet,
      final List<ImagePaths> exteriorWetImages = const [],
      required this.exteriorDry,
      final List<ImagePaths> exteriorDryImages = const [],
      required this.signageAndEquipment,
      final List<ImagePaths> signageAndEquipmentImages = const [],
      required this.outdoorStairs,
      final List<ImagePaths> outdoorStairsImages = const [],
      required this.others,
      final List<ImagePaths> othersImages = const [],
      this.otherRemarks,
      required this.overallExteriorScore,
      required this.overallStructuralScore,
      required this.overallFallingObjectScore})
      : _adjacentBuildingRiskImages = adjacentBuildingRiskImages,
        _unevenSettlementImages = unevenSettlementImages,
        _foundationDamageImages = foundationDamageImages,
        _firstFloorTiltImages = firstFloorTiltImages,
        _wallDamageImages = wallDamageImages,
        _corrosionOrTermiteImages = corrosionOrTermiteImages,
        _roofTileImages = roofTileImages,
        _windowFrameImages = windowFrameImages,
        _exteriorWetImages = exteriorWetImages,
        _exteriorDryImages = exteriorDryImages,
        _signageAndEquipmentImages = signageAndEquipmentImages,
        _outdoorStairsImages = outdoorStairsImages,
        _othersImages = othersImages;

  factory _$WoodenContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$WoodenContentImplFromJson(json);

  @override
  final int exteriorInspectionScore;
  @override
  final String? exteriorInspectionRemarks;
//隣接建築物・周辺地盤等及び構造躯体にかんする危険度
  @override
  final DamageLevel adjacentBuildingRisk;
  final List<ImagePaths> _adjacentBuildingRiskImages;
  @override
  @JsonKey()
  List<ImagePaths> get adjacentBuildingRiskImages {
    if (_adjacentBuildingRiskImages is EqualUnmodifiableListView)
      return _adjacentBuildingRiskImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adjacentBuildingRiskImages);
  }

//構造躯体の不同沈下
  @override
  final DamageLevel unevenSettlement;
  final List<ImagePaths> _unevenSettlementImages;
  @override
  @JsonKey()
  List<ImagePaths> get unevenSettlementImages {
    if (_unevenSettlementImages is EqualUnmodifiableListView)
      return _unevenSettlementImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unevenSettlementImages);
  }

//基礎の被害
  @override
  final DamageLevel foundationDamage;
  final List<ImagePaths> _foundationDamageImages;
  @override
  @JsonKey()
  List<ImagePaths> get foundationDamageImages {
    if (_foundationDamageImages is EqualUnmodifiableListView)
      return _foundationDamageImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foundationDamageImages);
  }

//建築物の一回の傾斜
  @override
  final DamageLevel firstFloorTilt;
  final List<ImagePaths> _firstFloorTiltImages;
  @override
  @JsonKey()
  List<ImagePaths> get firstFloorTiltImages {
    if (_firstFloorTiltImages is EqualUnmodifiableListView)
      return _firstFloorTiltImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_firstFloorTiltImages);
  }

//壁の被害
  @override
  final DamageLevel wallDamage;
  final List<ImagePaths> _wallDamageImages;
  @override
  @JsonKey()
  List<ImagePaths> get wallDamageImages {
    if (_wallDamageImages is EqualUnmodifiableListView)
      return _wallDamageImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wallDamageImages);
  }

//腐食・蟻害の有無
  @override
  final DamageLevel corrosionOrTermite;
  final List<ImagePaths> _corrosionOrTermiteImages;
  @override
  @JsonKey()
  List<ImagePaths> get corrosionOrTermiteImages {
    if (_corrosionOrTermiteImages is EqualUnmodifiableListView)
      return _corrosionOrTermiteImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_corrosionOrTermiteImages);
  }

//落下危険物・転倒危険物に関する危険度
//瓦
  @override
  final DamageLevel roofTile;
  final List<ImagePaths> _roofTileImages;
  @override
  @JsonKey()
  List<ImagePaths> get roofTileImages {
    if (_roofTileImages is EqualUnmodifiableListView) return _roofTileImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roofTileImages);
  }

//窓枠・窓ガラス
  @override
  final DamageLevel windowFrame;
  final List<ImagePaths> _windowFrameImages;
  @override
  @JsonKey()
  List<ImagePaths> get windowFrameImages {
    if (_windowFrameImages is EqualUnmodifiableListView)
      return _windowFrameImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windowFrameImages);
  }

//外装材　湿式
  @override
  final DamageLevel exteriorWet;
  final List<ImagePaths> _exteriorWetImages;
  @override
  @JsonKey()
  List<ImagePaths> get exteriorWetImages {
    if (_exteriorWetImages is EqualUnmodifiableListView)
      return _exteriorWetImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exteriorWetImages);
  }

//外装材　乾式
  @override
  final DamageLevel exteriorDry;
  final List<ImagePaths> _exteriorDryImages;
  @override
  @JsonKey()
  List<ImagePaths> get exteriorDryImages {
    if (_exteriorDryImages is EqualUnmodifiableListView)
      return _exteriorDryImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exteriorDryImages);
  }

//看板・機器類
  @override
  final DamageLevel signageAndEquipment;
  final List<ImagePaths> _signageAndEquipmentImages;
  @override
  @JsonKey()
  List<ImagePaths> get signageAndEquipmentImages {
    if (_signageAndEquipmentImages is EqualUnmodifiableListView)
      return _signageAndEquipmentImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_signageAndEquipmentImages);
  }

//その他
  @override
  final DamageLevel outdoorStairs;
  final List<ImagePaths> _outdoorStairsImages;
  @override
  @JsonKey()
  List<ImagePaths> get outdoorStairsImages {
    if (_outdoorStairsImages is EqualUnmodifiableListView)
      return _outdoorStairsImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outdoorStairsImages);
  }

  @override
  final DamageLevel others;
  final List<ImagePaths> _othersImages;
  @override
  @JsonKey()
  List<ImagePaths> get othersImages {
    if (_othersImages is EqualUnmodifiableListView) return _othersImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_othersImages);
  }

  @override
  final String? otherRemarks;
  @override
  final String overallExteriorScore;
  @override
  final DamageLevel overallStructuralScore;
  @override
  final DamageLevel overallFallingObjectScore;

  @override
  String toString() {
    return 'WoodenContent(exteriorInspectionScore: $exteriorInspectionScore, exteriorInspectionRemarks: $exteriorInspectionRemarks, adjacentBuildingRisk: $adjacentBuildingRisk, adjacentBuildingRiskImages: $adjacentBuildingRiskImages, unevenSettlement: $unevenSettlement, unevenSettlementImages: $unevenSettlementImages, foundationDamage: $foundationDamage, foundationDamageImages: $foundationDamageImages, firstFloorTilt: $firstFloorTilt, firstFloorTiltImages: $firstFloorTiltImages, wallDamage: $wallDamage, wallDamageImages: $wallDamageImages, corrosionOrTermite: $corrosionOrTermite, corrosionOrTermiteImages: $corrosionOrTermiteImages, roofTile: $roofTile, roofTileImages: $roofTileImages, windowFrame: $windowFrame, windowFrameImages: $windowFrameImages, exteriorWet: $exteriorWet, exteriorWetImages: $exteriorWetImages, exteriorDry: $exteriorDry, exteriorDryImages: $exteriorDryImages, signageAndEquipment: $signageAndEquipment, signageAndEquipmentImages: $signageAndEquipmentImages, outdoorStairs: $outdoorStairs, outdoorStairsImages: $outdoorStairsImages, others: $others, othersImages: $othersImages, otherRemarks: $otherRemarks, overallExteriorScore: $overallExteriorScore, overallStructuralScore: $overallStructuralScore, overallFallingObjectScore: $overallFallingObjectScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WoodenContentImpl &&
            (identical(other.exteriorInspectionScore, exteriorInspectionScore) ||
                other.exteriorInspectionScore == exteriorInspectionScore) &&
            (identical(other.exteriorInspectionRemarks, exteriorInspectionRemarks) ||
                other.exteriorInspectionRemarks == exteriorInspectionRemarks) &&
            (identical(other.adjacentBuildingRisk, adjacentBuildingRisk) ||
                other.adjacentBuildingRisk == adjacentBuildingRisk) &&
            const DeepCollectionEquality().equals(
                other._adjacentBuildingRiskImages,
                _adjacentBuildingRiskImages) &&
            (identical(other.unevenSettlement, unevenSettlement) ||
                other.unevenSettlement == unevenSettlement) &&
            const DeepCollectionEquality().equals(
                other._unevenSettlementImages, _unevenSettlementImages) &&
            (identical(other.foundationDamage, foundationDamage) ||
                other.foundationDamage == foundationDamage) &&
            const DeepCollectionEquality().equals(
                other._foundationDamageImages, _foundationDamageImages) &&
            (identical(other.firstFloorTilt, firstFloorTilt) ||
                other.firstFloorTilt == firstFloorTilt) &&
            const DeepCollectionEquality()
                .equals(other._firstFloorTiltImages, _firstFloorTiltImages) &&
            (identical(other.wallDamage, wallDamage) ||
                other.wallDamage == wallDamage) &&
            const DeepCollectionEquality()
                .equals(other._wallDamageImages, _wallDamageImages) &&
            (identical(other.corrosionOrTermite, corrosionOrTermite) ||
                other.corrosionOrTermite == corrosionOrTermite) &&
            const DeepCollectionEquality().equals(
                other._corrosionOrTermiteImages, _corrosionOrTermiteImages) &&
            (identical(other.roofTile, roofTile) ||
                other.roofTile == roofTile) &&
            const DeepCollectionEquality()
                .equals(other._roofTileImages, _roofTileImages) &&
            (identical(other.windowFrame, windowFrame) ||
                other.windowFrame == windowFrame) &&
            const DeepCollectionEquality()
                .equals(other._windowFrameImages, _windowFrameImages) &&
            (identical(other.exteriorWet, exteriorWet) ||
                other.exteriorWet == exteriorWet) &&
            const DeepCollectionEquality()
                .equals(other._exteriorWetImages, _exteriorWetImages) &&
            (identical(other.exteriorDry, exteriorDry) ||
                other.exteriorDry == exteriorDry) &&
            const DeepCollectionEquality()
                .equals(other._exteriorDryImages, _exteriorDryImages) &&
            (identical(other.signageAndEquipment, signageAndEquipment) ||
                other.signageAndEquipment == signageAndEquipment) &&
            const DeepCollectionEquality()
                .equals(other._signageAndEquipmentImages, _signageAndEquipmentImages) &&
            (identical(other.outdoorStairs, outdoorStairs) || other.outdoorStairs == outdoorStairs) &&
            const DeepCollectionEquality().equals(other._outdoorStairsImages, _outdoorStairsImages) &&
            (identical(other.others, others) || other.others == others) &&
            const DeepCollectionEquality().equals(other._othersImages, _othersImages) &&
            (identical(other.otherRemarks, otherRemarks) || other.otherRemarks == otherRemarks) &&
            (identical(other.overallExteriorScore, overallExteriorScore) || other.overallExteriorScore == overallExteriorScore) &&
            (identical(other.overallStructuralScore, overallStructuralScore) || other.overallStructuralScore == overallStructuralScore) &&
            (identical(other.overallFallingObjectScore, overallFallingObjectScore) || other.overallFallingObjectScore == overallFallingObjectScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        exteriorInspectionScore,
        exteriorInspectionRemarks,
        adjacentBuildingRisk,
        const DeepCollectionEquality().hash(_adjacentBuildingRiskImages),
        unevenSettlement,
        const DeepCollectionEquality().hash(_unevenSettlementImages),
        foundationDamage,
        const DeepCollectionEquality().hash(_foundationDamageImages),
        firstFloorTilt,
        const DeepCollectionEquality().hash(_firstFloorTiltImages),
        wallDamage,
        const DeepCollectionEquality().hash(_wallDamageImages),
        corrosionOrTermite,
        const DeepCollectionEquality().hash(_corrosionOrTermiteImages),
        roofTile,
        const DeepCollectionEquality().hash(_roofTileImages),
        windowFrame,
        const DeepCollectionEquality().hash(_windowFrameImages),
        exteriorWet,
        const DeepCollectionEquality().hash(_exteriorWetImages),
        exteriorDry,
        const DeepCollectionEquality().hash(_exteriorDryImages),
        signageAndEquipment,
        const DeepCollectionEquality().hash(_signageAndEquipmentImages),
        outdoorStairs,
        const DeepCollectionEquality().hash(_outdoorStairsImages),
        others,
        const DeepCollectionEquality().hash(_othersImages),
        otherRemarks,
        overallExteriorScore,
        overallStructuralScore,
        overallFallingObjectScore
      ]);

  /// Create a copy of WoodenContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WoodenContentImplCopyWith<_$WoodenContentImpl> get copyWith =>
      __$$WoodenContentImplCopyWithImpl<_$WoodenContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WoodenContentImplToJson(
      this,
    );
  }
}

abstract class _WoodenContent implements WoodenContent {
  const factory _WoodenContent(
          {required final int exteriorInspectionScore,
          final String? exteriorInspectionRemarks,
          required final DamageLevel adjacentBuildingRisk,
          final List<ImagePaths> adjacentBuildingRiskImages,
          required final DamageLevel unevenSettlement,
          final List<ImagePaths> unevenSettlementImages,
          required final DamageLevel foundationDamage,
          final List<ImagePaths> foundationDamageImages,
          required final DamageLevel firstFloorTilt,
          final List<ImagePaths> firstFloorTiltImages,
          required final DamageLevel wallDamage,
          final List<ImagePaths> wallDamageImages,
          required final DamageLevel corrosionOrTermite,
          final List<ImagePaths> corrosionOrTermiteImages,
          required final DamageLevel roofTile,
          final List<ImagePaths> roofTileImages,
          required final DamageLevel windowFrame,
          final List<ImagePaths> windowFrameImages,
          required final DamageLevel exteriorWet,
          final List<ImagePaths> exteriorWetImages,
          required final DamageLevel exteriorDry,
          final List<ImagePaths> exteriorDryImages,
          required final DamageLevel signageAndEquipment,
          final List<ImagePaths> signageAndEquipmentImages,
          required final DamageLevel outdoorStairs,
          final List<ImagePaths> outdoorStairsImages,
          required final DamageLevel others,
          final List<ImagePaths> othersImages,
          final String? otherRemarks,
          required final String overallExteriorScore,
          required final DamageLevel overallStructuralScore,
          required final DamageLevel overallFallingObjectScore}) =
      _$WoodenContentImpl;

  factory _WoodenContent.fromJson(Map<String, dynamic> json) =
      _$WoodenContentImpl.fromJson;

  @override
  int get exteriorInspectionScore;
  @override
  String? get exteriorInspectionRemarks; //隣接建築物・周辺地盤等及び構造躯体にかんする危険度
  @override
  DamageLevel get adjacentBuildingRisk;
  @override
  List<ImagePaths> get adjacentBuildingRiskImages; //構造躯体の不同沈下
  @override
  DamageLevel get unevenSettlement;
  @override
  List<ImagePaths> get unevenSettlementImages; //基礎の被害
  @override
  DamageLevel get foundationDamage;
  @override
  List<ImagePaths> get foundationDamageImages; //建築物の一回の傾斜
  @override
  DamageLevel get firstFloorTilt;
  @override
  List<ImagePaths> get firstFloorTiltImages; //壁の被害
  @override
  DamageLevel get wallDamage;
  @override
  List<ImagePaths> get wallDamageImages; //腐食・蟻害の有無
  @override
  DamageLevel get corrosionOrTermite;
  @override
  List<ImagePaths> get corrosionOrTermiteImages; //落下危険物・転倒危険物に関する危険度
//瓦
  @override
  DamageLevel get roofTile;
  @override
  List<ImagePaths> get roofTileImages; //窓枠・窓ガラス
  @override
  DamageLevel get windowFrame;
  @override
  List<ImagePaths> get windowFrameImages; //外装材　湿式
  @override
  DamageLevel get exteriorWet;
  @override
  List<ImagePaths> get exteriorWetImages; //外装材　乾式
  @override
  DamageLevel get exteriorDry;
  @override
  List<ImagePaths> get exteriorDryImages; //看板・機器類
  @override
  DamageLevel get signageAndEquipment;
  @override
  List<ImagePaths> get signageAndEquipmentImages; //その他
  @override
  DamageLevel get outdoorStairs;
  @override
  List<ImagePaths> get outdoorStairsImages;
  @override
  DamageLevel get others;
  @override
  List<ImagePaths> get othersImages;
  @override
  String? get otherRemarks;
  @override
  String get overallExteriorScore;
  @override
  DamageLevel get overallStructuralScore;
  @override
  DamageLevel get overallFallingObjectScore;

  /// Create a copy of WoodenContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WoodenContentImplCopyWith<_$WoodenContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SteelFrameContent _$SteelFrameContentFromJson(Map<String, dynamic> json) {
  return _SteelFrameContent.fromJson(json);
}

/// @nodoc
mixin _$SteelFrameContent {
//外観調査(一見して危険と判断される)
  int get exteriorInspectionScore => throw _privateConstructorUsedError;
  String? get exteriorInspectionRemarks =>
      throw _privateConstructorUsedError; //隣接建築物・周辺地盤等及び構造躯体に関する危険度
  DamageLevel get adjacentBuildingRisk => throw _privateConstructorUsedError;
  List<ImagePaths> get adjacentBuildingRiskImages =>
      throw _privateConstructorUsedError; //不同沈下による建築物全体の傾斜
  DamageLevel get unevenSettlement => throw _privateConstructorUsedError;
  List<ImagePaths> get unevenSettlementImages =>
      throw _privateConstructorUsedError; //傾斜を生じた階の上の階数が1階以下
  DamageLevel get upperFloorLe1 => throw _privateConstructorUsedError;
  List<ImagePaths> get upperFloorLe1Images =>
      throw _privateConstructorUsedError; //傾斜を生じた階の上の階数が2階以下
  DamageLevel get upperFloorLe2 => throw _privateConstructorUsedError;
  List<ImagePaths> get upperFloorLe2Images =>
      throw _privateConstructorUsedError; //部材の座屈の有無
  DamageLevel get hasBuckling => throw _privateConstructorUsedError;
  List<ImagePaths> get hasBucklingImages =>
      throw _privateConstructorUsedError; //筋違の破断率
  DamageLevel get bracingBreakRate => throw _privateConstructorUsedError;
  List<ImagePaths> get bracingBreakRateImages =>
      throw _privateConstructorUsedError; //柱梁接合部および継手の破壊
  DamageLevel get jointFailure => throw _privateConstructorUsedError;
  List<ImagePaths> get jointFailureImages =>
      throw _privateConstructorUsedError; //柱脚の破損
  DamageLevel get columnBaseDamage => throw _privateConstructorUsedError;
  List<ImagePaths> get columnBaseDamageImages =>
      throw _privateConstructorUsedError; //腐食の有無
  DamageLevel get corrosion => throw _privateConstructorUsedError;
  List<ImagePaths> get corrosionImages =>
      throw _privateConstructorUsedError; //落下危険物・転倒危険物に関する危険度
//屋根材
  DamageLevel get roofingMaterial => throw _privateConstructorUsedError;
  List<ImagePaths> get roofingMaterialImages =>
      throw _privateConstructorUsedError; //窓枠・窓ガラス
  DamageLevel get windowFrame => throw _privateConstructorUsedError;
  List<ImagePaths> get windowFrameImages =>
      throw _privateConstructorUsedError; //外装材　湿式
  DamageLevel get exteriorWet => throw _privateConstructorUsedError;
  List<ImagePaths> get exteriorWetImages =>
      throw _privateConstructorUsedError; //外装材　乾式
  DamageLevel get exteriorDry => throw _privateConstructorUsedError;
  List<ImagePaths> get exteriorDryImages =>
      throw _privateConstructorUsedError; //看板・機器類
  DamageLevel get signageAndEquipment => throw _privateConstructorUsedError;
  List<ImagePaths> get signageAndEquipmentImages =>
      throw _privateConstructorUsedError; //屋外階段
  DamageLevel get outdoorStairs => throw _privateConstructorUsedError;
  List<ImagePaths> get outdoorStairsImages =>
      throw _privateConstructorUsedError; //その他
  DamageLevel get others => throw _privateConstructorUsedError;
  List<ImagePaths> get othersImages => throw _privateConstructorUsedError;
  String? get otherRemarks => throw _privateConstructorUsedError;
  String get overallExteriorScore => throw _privateConstructorUsedError;
  DamageLevel get overallStructuralScore => throw _privateConstructorUsedError;
  DamageLevel get overallFallingObjectScore =>
      throw _privateConstructorUsedError;

  /// Serializes this SteelFrameContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SteelFrameContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SteelFrameContentCopyWith<SteelFrameContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SteelFrameContentCopyWith<$Res> {
  factory $SteelFrameContentCopyWith(
          SteelFrameContent value, $Res Function(SteelFrameContent) then) =
      _$SteelFrameContentCopyWithImpl<$Res, SteelFrameContent>;
  @useResult
  $Res call(
      {int exteriorInspectionScore,
      String? exteriorInspectionRemarks,
      DamageLevel adjacentBuildingRisk,
      List<ImagePaths> adjacentBuildingRiskImages,
      DamageLevel unevenSettlement,
      List<ImagePaths> unevenSettlementImages,
      DamageLevel upperFloorLe1,
      List<ImagePaths> upperFloorLe1Images,
      DamageLevel upperFloorLe2,
      List<ImagePaths> upperFloorLe2Images,
      DamageLevel hasBuckling,
      List<ImagePaths> hasBucklingImages,
      DamageLevel bracingBreakRate,
      List<ImagePaths> bracingBreakRateImages,
      DamageLevel jointFailure,
      List<ImagePaths> jointFailureImages,
      DamageLevel columnBaseDamage,
      List<ImagePaths> columnBaseDamageImages,
      DamageLevel corrosion,
      List<ImagePaths> corrosionImages,
      DamageLevel roofingMaterial,
      List<ImagePaths> roofingMaterialImages,
      DamageLevel windowFrame,
      List<ImagePaths> windowFrameImages,
      DamageLevel exteriorWet,
      List<ImagePaths> exteriorWetImages,
      DamageLevel exteriorDry,
      List<ImagePaths> exteriorDryImages,
      DamageLevel signageAndEquipment,
      List<ImagePaths> signageAndEquipmentImages,
      DamageLevel outdoorStairs,
      List<ImagePaths> outdoorStairsImages,
      DamageLevel others,
      List<ImagePaths> othersImages,
      String? otherRemarks,
      String overallExteriorScore,
      DamageLevel overallStructuralScore,
      DamageLevel overallFallingObjectScore});
}

/// @nodoc
class _$SteelFrameContentCopyWithImpl<$Res, $Val extends SteelFrameContent>
    implements $SteelFrameContentCopyWith<$Res> {
  _$SteelFrameContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SteelFrameContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exteriorInspectionScore = null,
    Object? exteriorInspectionRemarks = freezed,
    Object? adjacentBuildingRisk = null,
    Object? adjacentBuildingRiskImages = null,
    Object? unevenSettlement = null,
    Object? unevenSettlementImages = null,
    Object? upperFloorLe1 = null,
    Object? upperFloorLe1Images = null,
    Object? upperFloorLe2 = null,
    Object? upperFloorLe2Images = null,
    Object? hasBuckling = null,
    Object? hasBucklingImages = null,
    Object? bracingBreakRate = null,
    Object? bracingBreakRateImages = null,
    Object? jointFailure = null,
    Object? jointFailureImages = null,
    Object? columnBaseDamage = null,
    Object? columnBaseDamageImages = null,
    Object? corrosion = null,
    Object? corrosionImages = null,
    Object? roofingMaterial = null,
    Object? roofingMaterialImages = null,
    Object? windowFrame = null,
    Object? windowFrameImages = null,
    Object? exteriorWet = null,
    Object? exteriorWetImages = null,
    Object? exteriorDry = null,
    Object? exteriorDryImages = null,
    Object? signageAndEquipment = null,
    Object? signageAndEquipmentImages = null,
    Object? outdoorStairs = null,
    Object? outdoorStairsImages = null,
    Object? others = null,
    Object? othersImages = null,
    Object? otherRemarks = freezed,
    Object? overallExteriorScore = null,
    Object? overallStructuralScore = null,
    Object? overallFallingObjectScore = null,
  }) {
    return _then(_value.copyWith(
      exteriorInspectionScore: null == exteriorInspectionScore
          ? _value.exteriorInspectionScore
          : exteriorInspectionScore // ignore: cast_nullable_to_non_nullable
              as int,
      exteriorInspectionRemarks: freezed == exteriorInspectionRemarks
          ? _value.exteriorInspectionRemarks
          : exteriorInspectionRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      adjacentBuildingRisk: null == adjacentBuildingRisk
          ? _value.adjacentBuildingRisk
          : adjacentBuildingRisk // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      adjacentBuildingRiskImages: null == adjacentBuildingRiskImages
          ? _value.adjacentBuildingRiskImages
          : adjacentBuildingRiskImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      unevenSettlement: null == unevenSettlement
          ? _value.unevenSettlement
          : unevenSettlement // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      unevenSettlementImages: null == unevenSettlementImages
          ? _value.unevenSettlementImages
          : unevenSettlementImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      upperFloorLe1: null == upperFloorLe1
          ? _value.upperFloorLe1
          : upperFloorLe1 // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      upperFloorLe1Images: null == upperFloorLe1Images
          ? _value.upperFloorLe1Images
          : upperFloorLe1Images // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      upperFloorLe2: null == upperFloorLe2
          ? _value.upperFloorLe2
          : upperFloorLe2 // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      upperFloorLe2Images: null == upperFloorLe2Images
          ? _value.upperFloorLe2Images
          : upperFloorLe2Images // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      hasBuckling: null == hasBuckling
          ? _value.hasBuckling
          : hasBuckling // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      hasBucklingImages: null == hasBucklingImages
          ? _value.hasBucklingImages
          : hasBucklingImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      bracingBreakRate: null == bracingBreakRate
          ? _value.bracingBreakRate
          : bracingBreakRate // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      bracingBreakRateImages: null == bracingBreakRateImages
          ? _value.bracingBreakRateImages
          : bracingBreakRateImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      jointFailure: null == jointFailure
          ? _value.jointFailure
          : jointFailure // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      jointFailureImages: null == jointFailureImages
          ? _value.jointFailureImages
          : jointFailureImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      columnBaseDamage: null == columnBaseDamage
          ? _value.columnBaseDamage
          : columnBaseDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      columnBaseDamageImages: null == columnBaseDamageImages
          ? _value.columnBaseDamageImages
          : columnBaseDamageImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      corrosion: null == corrosion
          ? _value.corrosion
          : corrosion // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      corrosionImages: null == corrosionImages
          ? _value.corrosionImages
          : corrosionImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      roofingMaterial: null == roofingMaterial
          ? _value.roofingMaterial
          : roofingMaterial // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      roofingMaterialImages: null == roofingMaterialImages
          ? _value.roofingMaterialImages
          : roofingMaterialImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      windowFrame: null == windowFrame
          ? _value.windowFrame
          : windowFrame // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      windowFrameImages: null == windowFrameImages
          ? _value.windowFrameImages
          : windowFrameImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorWet: null == exteriorWet
          ? _value.exteriorWet
          : exteriorWet // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      exteriorWetImages: null == exteriorWetImages
          ? _value.exteriorWetImages
          : exteriorWetImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorDry: null == exteriorDry
          ? _value.exteriorDry
          : exteriorDry // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      exteriorDryImages: null == exteriorDryImages
          ? _value.exteriorDryImages
          : exteriorDryImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      signageAndEquipment: null == signageAndEquipment
          ? _value.signageAndEquipment
          : signageAndEquipment // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      signageAndEquipmentImages: null == signageAndEquipmentImages
          ? _value.signageAndEquipmentImages
          : signageAndEquipmentImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      outdoorStairs: null == outdoorStairs
          ? _value.outdoorStairs
          : outdoorStairs // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      outdoorStairsImages: null == outdoorStairsImages
          ? _value.outdoorStairsImages
          : outdoorStairsImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      othersImages: null == othersImages
          ? _value.othersImages
          : othersImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      otherRemarks: freezed == otherRemarks
          ? _value.otherRemarks
          : otherRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      overallExteriorScore: null == overallExteriorScore
          ? _value.overallExteriorScore
          : overallExteriorScore // ignore: cast_nullable_to_non_nullable
              as String,
      overallStructuralScore: null == overallStructuralScore
          ? _value.overallStructuralScore
          : overallStructuralScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      overallFallingObjectScore: null == overallFallingObjectScore
          ? _value.overallFallingObjectScore
          : overallFallingObjectScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SteelFrameContentImplCopyWith<$Res>
    implements $SteelFrameContentCopyWith<$Res> {
  factory _$$SteelFrameContentImplCopyWith(_$SteelFrameContentImpl value,
          $Res Function(_$SteelFrameContentImpl) then) =
      __$$SteelFrameContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int exteriorInspectionScore,
      String? exteriorInspectionRemarks,
      DamageLevel adjacentBuildingRisk,
      List<ImagePaths> adjacentBuildingRiskImages,
      DamageLevel unevenSettlement,
      List<ImagePaths> unevenSettlementImages,
      DamageLevel upperFloorLe1,
      List<ImagePaths> upperFloorLe1Images,
      DamageLevel upperFloorLe2,
      List<ImagePaths> upperFloorLe2Images,
      DamageLevel hasBuckling,
      List<ImagePaths> hasBucklingImages,
      DamageLevel bracingBreakRate,
      List<ImagePaths> bracingBreakRateImages,
      DamageLevel jointFailure,
      List<ImagePaths> jointFailureImages,
      DamageLevel columnBaseDamage,
      List<ImagePaths> columnBaseDamageImages,
      DamageLevel corrosion,
      List<ImagePaths> corrosionImages,
      DamageLevel roofingMaterial,
      List<ImagePaths> roofingMaterialImages,
      DamageLevel windowFrame,
      List<ImagePaths> windowFrameImages,
      DamageLevel exteriorWet,
      List<ImagePaths> exteriorWetImages,
      DamageLevel exteriorDry,
      List<ImagePaths> exteriorDryImages,
      DamageLevel signageAndEquipment,
      List<ImagePaths> signageAndEquipmentImages,
      DamageLevel outdoorStairs,
      List<ImagePaths> outdoorStairsImages,
      DamageLevel others,
      List<ImagePaths> othersImages,
      String? otherRemarks,
      String overallExteriorScore,
      DamageLevel overallStructuralScore,
      DamageLevel overallFallingObjectScore});
}

/// @nodoc
class __$$SteelFrameContentImplCopyWithImpl<$Res>
    extends _$SteelFrameContentCopyWithImpl<$Res, _$SteelFrameContentImpl>
    implements _$$SteelFrameContentImplCopyWith<$Res> {
  __$$SteelFrameContentImplCopyWithImpl(_$SteelFrameContentImpl _value,
      $Res Function(_$SteelFrameContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of SteelFrameContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exteriorInspectionScore = null,
    Object? exteriorInspectionRemarks = freezed,
    Object? adjacentBuildingRisk = null,
    Object? adjacentBuildingRiskImages = null,
    Object? unevenSettlement = null,
    Object? unevenSettlementImages = null,
    Object? upperFloorLe1 = null,
    Object? upperFloorLe1Images = null,
    Object? upperFloorLe2 = null,
    Object? upperFloorLe2Images = null,
    Object? hasBuckling = null,
    Object? hasBucklingImages = null,
    Object? bracingBreakRate = null,
    Object? bracingBreakRateImages = null,
    Object? jointFailure = null,
    Object? jointFailureImages = null,
    Object? columnBaseDamage = null,
    Object? columnBaseDamageImages = null,
    Object? corrosion = null,
    Object? corrosionImages = null,
    Object? roofingMaterial = null,
    Object? roofingMaterialImages = null,
    Object? windowFrame = null,
    Object? windowFrameImages = null,
    Object? exteriorWet = null,
    Object? exteriorWetImages = null,
    Object? exteriorDry = null,
    Object? exteriorDryImages = null,
    Object? signageAndEquipment = null,
    Object? signageAndEquipmentImages = null,
    Object? outdoorStairs = null,
    Object? outdoorStairsImages = null,
    Object? others = null,
    Object? othersImages = null,
    Object? otherRemarks = freezed,
    Object? overallExteriorScore = null,
    Object? overallStructuralScore = null,
    Object? overallFallingObjectScore = null,
  }) {
    return _then(_$SteelFrameContentImpl(
      exteriorInspectionScore: null == exteriorInspectionScore
          ? _value.exteriorInspectionScore
          : exteriorInspectionScore // ignore: cast_nullable_to_non_nullable
              as int,
      exteriorInspectionRemarks: freezed == exteriorInspectionRemarks
          ? _value.exteriorInspectionRemarks
          : exteriorInspectionRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      adjacentBuildingRisk: null == adjacentBuildingRisk
          ? _value.adjacentBuildingRisk
          : adjacentBuildingRisk // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      adjacentBuildingRiskImages: null == adjacentBuildingRiskImages
          ? _value._adjacentBuildingRiskImages
          : adjacentBuildingRiskImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      unevenSettlement: null == unevenSettlement
          ? _value.unevenSettlement
          : unevenSettlement // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      unevenSettlementImages: null == unevenSettlementImages
          ? _value._unevenSettlementImages
          : unevenSettlementImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      upperFloorLe1: null == upperFloorLe1
          ? _value.upperFloorLe1
          : upperFloorLe1 // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      upperFloorLe1Images: null == upperFloorLe1Images
          ? _value._upperFloorLe1Images
          : upperFloorLe1Images // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      upperFloorLe2: null == upperFloorLe2
          ? _value.upperFloorLe2
          : upperFloorLe2 // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      upperFloorLe2Images: null == upperFloorLe2Images
          ? _value._upperFloorLe2Images
          : upperFloorLe2Images // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      hasBuckling: null == hasBuckling
          ? _value.hasBuckling
          : hasBuckling // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      hasBucklingImages: null == hasBucklingImages
          ? _value._hasBucklingImages
          : hasBucklingImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      bracingBreakRate: null == bracingBreakRate
          ? _value.bracingBreakRate
          : bracingBreakRate // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      bracingBreakRateImages: null == bracingBreakRateImages
          ? _value._bracingBreakRateImages
          : bracingBreakRateImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      jointFailure: null == jointFailure
          ? _value.jointFailure
          : jointFailure // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      jointFailureImages: null == jointFailureImages
          ? _value._jointFailureImages
          : jointFailureImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      columnBaseDamage: null == columnBaseDamage
          ? _value.columnBaseDamage
          : columnBaseDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      columnBaseDamageImages: null == columnBaseDamageImages
          ? _value._columnBaseDamageImages
          : columnBaseDamageImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      corrosion: null == corrosion
          ? _value.corrosion
          : corrosion // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      corrosionImages: null == corrosionImages
          ? _value._corrosionImages
          : corrosionImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      roofingMaterial: null == roofingMaterial
          ? _value.roofingMaterial
          : roofingMaterial // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      roofingMaterialImages: null == roofingMaterialImages
          ? _value._roofingMaterialImages
          : roofingMaterialImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      windowFrame: null == windowFrame
          ? _value.windowFrame
          : windowFrame // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      windowFrameImages: null == windowFrameImages
          ? _value._windowFrameImages
          : windowFrameImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorWet: null == exteriorWet
          ? _value.exteriorWet
          : exteriorWet // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      exteriorWetImages: null == exteriorWetImages
          ? _value._exteriorWetImages
          : exteriorWetImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorDry: null == exteriorDry
          ? _value.exteriorDry
          : exteriorDry // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      exteriorDryImages: null == exteriorDryImages
          ? _value._exteriorDryImages
          : exteriorDryImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      signageAndEquipment: null == signageAndEquipment
          ? _value.signageAndEquipment
          : signageAndEquipment // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      signageAndEquipmentImages: null == signageAndEquipmentImages
          ? _value._signageAndEquipmentImages
          : signageAndEquipmentImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      outdoorStairs: null == outdoorStairs
          ? _value.outdoorStairs
          : outdoorStairs // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      outdoorStairsImages: null == outdoorStairsImages
          ? _value._outdoorStairsImages
          : outdoorStairsImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      othersImages: null == othersImages
          ? _value._othersImages
          : othersImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      otherRemarks: freezed == otherRemarks
          ? _value.otherRemarks
          : otherRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      overallExteriorScore: null == overallExteriorScore
          ? _value.overallExteriorScore
          : overallExteriorScore // ignore: cast_nullable_to_non_nullable
              as String,
      overallStructuralScore: null == overallStructuralScore
          ? _value.overallStructuralScore
          : overallStructuralScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      overallFallingObjectScore: null == overallFallingObjectScore
          ? _value.overallFallingObjectScore
          : overallFallingObjectScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SteelFrameContentImpl implements _SteelFrameContent {
  const _$SteelFrameContentImpl(
      {required this.exteriorInspectionScore,
      this.exteriorInspectionRemarks,
      required this.adjacentBuildingRisk,
      final List<ImagePaths> adjacentBuildingRiskImages = const [],
      required this.unevenSettlement,
      final List<ImagePaths> unevenSettlementImages = const [],
      required this.upperFloorLe1,
      final List<ImagePaths> upperFloorLe1Images = const [],
      required this.upperFloorLe2,
      final List<ImagePaths> upperFloorLe2Images = const [],
      required this.hasBuckling,
      final List<ImagePaths> hasBucklingImages = const [],
      required this.bracingBreakRate,
      final List<ImagePaths> bracingBreakRateImages = const [],
      required this.jointFailure,
      final List<ImagePaths> jointFailureImages = const [],
      required this.columnBaseDamage,
      final List<ImagePaths> columnBaseDamageImages = const [],
      required this.corrosion,
      final List<ImagePaths> corrosionImages = const [],
      required this.roofingMaterial,
      final List<ImagePaths> roofingMaterialImages = const [],
      required this.windowFrame,
      final List<ImagePaths> windowFrameImages = const [],
      required this.exteriorWet,
      final List<ImagePaths> exteriorWetImages = const [],
      required this.exteriorDry,
      final List<ImagePaths> exteriorDryImages = const [],
      required this.signageAndEquipment,
      final List<ImagePaths> signageAndEquipmentImages = const [],
      required this.outdoorStairs,
      final List<ImagePaths> outdoorStairsImages = const [],
      required this.others,
      final List<ImagePaths> othersImages = const [],
      this.otherRemarks,
      required this.overallExteriorScore,
      required this.overallStructuralScore,
      required this.overallFallingObjectScore})
      : _adjacentBuildingRiskImages = adjacentBuildingRiskImages,
        _unevenSettlementImages = unevenSettlementImages,
        _upperFloorLe1Images = upperFloorLe1Images,
        _upperFloorLe2Images = upperFloorLe2Images,
        _hasBucklingImages = hasBucklingImages,
        _bracingBreakRateImages = bracingBreakRateImages,
        _jointFailureImages = jointFailureImages,
        _columnBaseDamageImages = columnBaseDamageImages,
        _corrosionImages = corrosionImages,
        _roofingMaterialImages = roofingMaterialImages,
        _windowFrameImages = windowFrameImages,
        _exteriorWetImages = exteriorWetImages,
        _exteriorDryImages = exteriorDryImages,
        _signageAndEquipmentImages = signageAndEquipmentImages,
        _outdoorStairsImages = outdoorStairsImages,
        _othersImages = othersImages;

  factory _$SteelFrameContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SteelFrameContentImplFromJson(json);

//外観調査(一見して危険と判断される)
  @override
  final int exteriorInspectionScore;
  @override
  final String? exteriorInspectionRemarks;
//隣接建築物・周辺地盤等及び構造躯体に関する危険度
  @override
  final DamageLevel adjacentBuildingRisk;
  final List<ImagePaths> _adjacentBuildingRiskImages;
  @override
  @JsonKey()
  List<ImagePaths> get adjacentBuildingRiskImages {
    if (_adjacentBuildingRiskImages is EqualUnmodifiableListView)
      return _adjacentBuildingRiskImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adjacentBuildingRiskImages);
  }

//不同沈下による建築物全体の傾斜
  @override
  final DamageLevel unevenSettlement;
  final List<ImagePaths> _unevenSettlementImages;
  @override
  @JsonKey()
  List<ImagePaths> get unevenSettlementImages {
    if (_unevenSettlementImages is EqualUnmodifiableListView)
      return _unevenSettlementImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unevenSettlementImages);
  }

//傾斜を生じた階の上の階数が1階以下
  @override
  final DamageLevel upperFloorLe1;
  final List<ImagePaths> _upperFloorLe1Images;
  @override
  @JsonKey()
  List<ImagePaths> get upperFloorLe1Images {
    if (_upperFloorLe1Images is EqualUnmodifiableListView)
      return _upperFloorLe1Images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upperFloorLe1Images);
  }

//傾斜を生じた階の上の階数が2階以下
  @override
  final DamageLevel upperFloorLe2;
  final List<ImagePaths> _upperFloorLe2Images;
  @override
  @JsonKey()
  List<ImagePaths> get upperFloorLe2Images {
    if (_upperFloorLe2Images is EqualUnmodifiableListView)
      return _upperFloorLe2Images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upperFloorLe2Images);
  }

//部材の座屈の有無
  @override
  final DamageLevel hasBuckling;
  final List<ImagePaths> _hasBucklingImages;
  @override
  @JsonKey()
  List<ImagePaths> get hasBucklingImages {
    if (_hasBucklingImages is EqualUnmodifiableListView)
      return _hasBucklingImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hasBucklingImages);
  }

//筋違の破断率
  @override
  final DamageLevel bracingBreakRate;
  final List<ImagePaths> _bracingBreakRateImages;
  @override
  @JsonKey()
  List<ImagePaths> get bracingBreakRateImages {
    if (_bracingBreakRateImages is EqualUnmodifiableListView)
      return _bracingBreakRateImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bracingBreakRateImages);
  }

//柱梁接合部および継手の破壊
  @override
  final DamageLevel jointFailure;
  final List<ImagePaths> _jointFailureImages;
  @override
  @JsonKey()
  List<ImagePaths> get jointFailureImages {
    if (_jointFailureImages is EqualUnmodifiableListView)
      return _jointFailureImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jointFailureImages);
  }

//柱脚の破損
  @override
  final DamageLevel columnBaseDamage;
  final List<ImagePaths> _columnBaseDamageImages;
  @override
  @JsonKey()
  List<ImagePaths> get columnBaseDamageImages {
    if (_columnBaseDamageImages is EqualUnmodifiableListView)
      return _columnBaseDamageImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_columnBaseDamageImages);
  }

//腐食の有無
  @override
  final DamageLevel corrosion;
  final List<ImagePaths> _corrosionImages;
  @override
  @JsonKey()
  List<ImagePaths> get corrosionImages {
    if (_corrosionImages is EqualUnmodifiableListView) return _corrosionImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_corrosionImages);
  }

//落下危険物・転倒危険物に関する危険度
//屋根材
  @override
  final DamageLevel roofingMaterial;
  final List<ImagePaths> _roofingMaterialImages;
  @override
  @JsonKey()
  List<ImagePaths> get roofingMaterialImages {
    if (_roofingMaterialImages is EqualUnmodifiableListView)
      return _roofingMaterialImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roofingMaterialImages);
  }

//窓枠・窓ガラス
  @override
  final DamageLevel windowFrame;
  final List<ImagePaths> _windowFrameImages;
  @override
  @JsonKey()
  List<ImagePaths> get windowFrameImages {
    if (_windowFrameImages is EqualUnmodifiableListView)
      return _windowFrameImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windowFrameImages);
  }

//外装材　湿式
  @override
  final DamageLevel exteriorWet;
  final List<ImagePaths> _exteriorWetImages;
  @override
  @JsonKey()
  List<ImagePaths> get exteriorWetImages {
    if (_exteriorWetImages is EqualUnmodifiableListView)
      return _exteriorWetImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exteriorWetImages);
  }

//外装材　乾式
  @override
  final DamageLevel exteriorDry;
  final List<ImagePaths> _exteriorDryImages;
  @override
  @JsonKey()
  List<ImagePaths> get exteriorDryImages {
    if (_exteriorDryImages is EqualUnmodifiableListView)
      return _exteriorDryImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exteriorDryImages);
  }

//看板・機器類
  @override
  final DamageLevel signageAndEquipment;
  final List<ImagePaths> _signageAndEquipmentImages;
  @override
  @JsonKey()
  List<ImagePaths> get signageAndEquipmentImages {
    if (_signageAndEquipmentImages is EqualUnmodifiableListView)
      return _signageAndEquipmentImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_signageAndEquipmentImages);
  }

//屋外階段
  @override
  final DamageLevel outdoorStairs;
  final List<ImagePaths> _outdoorStairsImages;
  @override
  @JsonKey()
  List<ImagePaths> get outdoorStairsImages {
    if (_outdoorStairsImages is EqualUnmodifiableListView)
      return _outdoorStairsImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outdoorStairsImages);
  }

//その他
  @override
  final DamageLevel others;
  final List<ImagePaths> _othersImages;
  @override
  @JsonKey()
  List<ImagePaths> get othersImages {
    if (_othersImages is EqualUnmodifiableListView) return _othersImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_othersImages);
  }

  @override
  final String? otherRemarks;
  @override
  final String overallExteriorScore;
  @override
  final DamageLevel overallStructuralScore;
  @override
  final DamageLevel overallFallingObjectScore;

  @override
  String toString() {
    return 'SteelFrameContent(exteriorInspectionScore: $exteriorInspectionScore, exteriorInspectionRemarks: $exteriorInspectionRemarks, adjacentBuildingRisk: $adjacentBuildingRisk, adjacentBuildingRiskImages: $adjacentBuildingRiskImages, unevenSettlement: $unevenSettlement, unevenSettlementImages: $unevenSettlementImages, upperFloorLe1: $upperFloorLe1, upperFloorLe1Images: $upperFloorLe1Images, upperFloorLe2: $upperFloorLe2, upperFloorLe2Images: $upperFloorLe2Images, hasBuckling: $hasBuckling, hasBucklingImages: $hasBucklingImages, bracingBreakRate: $bracingBreakRate, bracingBreakRateImages: $bracingBreakRateImages, jointFailure: $jointFailure, jointFailureImages: $jointFailureImages, columnBaseDamage: $columnBaseDamage, columnBaseDamageImages: $columnBaseDamageImages, corrosion: $corrosion, corrosionImages: $corrosionImages, roofingMaterial: $roofingMaterial, roofingMaterialImages: $roofingMaterialImages, windowFrame: $windowFrame, windowFrameImages: $windowFrameImages, exteriorWet: $exteriorWet, exteriorWetImages: $exteriorWetImages, exteriorDry: $exteriorDry, exteriorDryImages: $exteriorDryImages, signageAndEquipment: $signageAndEquipment, signageAndEquipmentImages: $signageAndEquipmentImages, outdoorStairs: $outdoorStairs, outdoorStairsImages: $outdoorStairsImages, others: $others, othersImages: $othersImages, otherRemarks: $otherRemarks, overallExteriorScore: $overallExteriorScore, overallStructuralScore: $overallStructuralScore, overallFallingObjectScore: $overallFallingObjectScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SteelFrameContentImpl &&
            (identical(other.exteriorInspectionScore, exteriorInspectionScore) ||
                other.exteriorInspectionScore == exteriorInspectionScore) &&
            (identical(other.exteriorInspectionRemarks, exteriorInspectionRemarks) ||
                other.exteriorInspectionRemarks == exteriorInspectionRemarks) &&
            (identical(other.adjacentBuildingRisk, adjacentBuildingRisk) ||
                other.adjacentBuildingRisk == adjacentBuildingRisk) &&
            const DeepCollectionEquality().equals(
                other._adjacentBuildingRiskImages,
                _adjacentBuildingRiskImages) &&
            (identical(other.unevenSettlement, unevenSettlement) ||
                other.unevenSettlement == unevenSettlement) &&
            const DeepCollectionEquality().equals(
                other._unevenSettlementImages, _unevenSettlementImages) &&
            (identical(other.upperFloorLe1, upperFloorLe1) ||
                other.upperFloorLe1 == upperFloorLe1) &&
            const DeepCollectionEquality()
                .equals(other._upperFloorLe1Images, _upperFloorLe1Images) &&
            (identical(other.upperFloorLe2, upperFloorLe2) ||
                other.upperFloorLe2 == upperFloorLe2) &&
            const DeepCollectionEquality()
                .equals(other._upperFloorLe2Images, _upperFloorLe2Images) &&
            (identical(other.hasBuckling, hasBuckling) ||
                other.hasBuckling == hasBuckling) &&
            const DeepCollectionEquality()
                .equals(other._hasBucklingImages, _hasBucklingImages) &&
            (identical(other.bracingBreakRate, bracingBreakRate) ||
                other.bracingBreakRate == bracingBreakRate) &&
            const DeepCollectionEquality().equals(
                other._bracingBreakRateImages, _bracingBreakRateImages) &&
            (identical(other.jointFailure, jointFailure) ||
                other.jointFailure == jointFailure) &&
            const DeepCollectionEquality()
                .equals(other._jointFailureImages, _jointFailureImages) &&
            (identical(other.columnBaseDamage, columnBaseDamage) ||
                other.columnBaseDamage == columnBaseDamage) &&
            const DeepCollectionEquality().equals(
                other._columnBaseDamageImages, _columnBaseDamageImages) &&
            (identical(other.corrosion, corrosion) ||
                other.corrosion == corrosion) &&
            const DeepCollectionEquality()
                .equals(other._corrosionImages, _corrosionImages) &&
            (identical(other.roofingMaterial, roofingMaterial) ||
                other.roofingMaterial == roofingMaterial) &&
            const DeepCollectionEquality()
                .equals(other._roofingMaterialImages, _roofingMaterialImages) &&
            (identical(other.windowFrame, windowFrame) ||
                other.windowFrame == windowFrame) &&
            const DeepCollectionEquality()
                .equals(other._windowFrameImages, _windowFrameImages) &&
            (identical(other.exteriorWet, exteriorWet) || other.exteriorWet == exteriorWet) &&
            const DeepCollectionEquality().equals(other._exteriorWetImages, _exteriorWetImages) &&
            (identical(other.exteriorDry, exteriorDry) || other.exteriorDry == exteriorDry) &&
            const DeepCollectionEquality().equals(other._exteriorDryImages, _exteriorDryImages) &&
            (identical(other.signageAndEquipment, signageAndEquipment) || other.signageAndEquipment == signageAndEquipment) &&
            const DeepCollectionEquality().equals(other._signageAndEquipmentImages, _signageAndEquipmentImages) &&
            (identical(other.outdoorStairs, outdoorStairs) || other.outdoorStairs == outdoorStairs) &&
            const DeepCollectionEquality().equals(other._outdoorStairsImages, _outdoorStairsImages) &&
            (identical(other.others, others) || other.others == others) &&
            const DeepCollectionEquality().equals(other._othersImages, _othersImages) &&
            (identical(other.otherRemarks, otherRemarks) || other.otherRemarks == otherRemarks) &&
            (identical(other.overallExteriorScore, overallExteriorScore) || other.overallExteriorScore == overallExteriorScore) &&
            (identical(other.overallStructuralScore, overallStructuralScore) || other.overallStructuralScore == overallStructuralScore) &&
            (identical(other.overallFallingObjectScore, overallFallingObjectScore) || other.overallFallingObjectScore == overallFallingObjectScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        exteriorInspectionScore,
        exteriorInspectionRemarks,
        adjacentBuildingRisk,
        const DeepCollectionEquality().hash(_adjacentBuildingRiskImages),
        unevenSettlement,
        const DeepCollectionEquality().hash(_unevenSettlementImages),
        upperFloorLe1,
        const DeepCollectionEquality().hash(_upperFloorLe1Images),
        upperFloorLe2,
        const DeepCollectionEquality().hash(_upperFloorLe2Images),
        hasBuckling,
        const DeepCollectionEquality().hash(_hasBucklingImages),
        bracingBreakRate,
        const DeepCollectionEquality().hash(_bracingBreakRateImages),
        jointFailure,
        const DeepCollectionEquality().hash(_jointFailureImages),
        columnBaseDamage,
        const DeepCollectionEquality().hash(_columnBaseDamageImages),
        corrosion,
        const DeepCollectionEquality().hash(_corrosionImages),
        roofingMaterial,
        const DeepCollectionEquality().hash(_roofingMaterialImages),
        windowFrame,
        const DeepCollectionEquality().hash(_windowFrameImages),
        exteriorWet,
        const DeepCollectionEquality().hash(_exteriorWetImages),
        exteriorDry,
        const DeepCollectionEquality().hash(_exteriorDryImages),
        signageAndEquipment,
        const DeepCollectionEquality().hash(_signageAndEquipmentImages),
        outdoorStairs,
        const DeepCollectionEquality().hash(_outdoorStairsImages),
        others,
        const DeepCollectionEquality().hash(_othersImages),
        otherRemarks,
        overallExteriorScore,
        overallStructuralScore,
        overallFallingObjectScore
      ]);

  /// Create a copy of SteelFrameContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SteelFrameContentImplCopyWith<_$SteelFrameContentImpl> get copyWith =>
      __$$SteelFrameContentImplCopyWithImpl<_$SteelFrameContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SteelFrameContentImplToJson(
      this,
    );
  }
}

abstract class _SteelFrameContent implements SteelFrameContent {
  const factory _SteelFrameContent(
          {required final int exteriorInspectionScore,
          final String? exteriorInspectionRemarks,
          required final DamageLevel adjacentBuildingRisk,
          final List<ImagePaths> adjacentBuildingRiskImages,
          required final DamageLevel unevenSettlement,
          final List<ImagePaths> unevenSettlementImages,
          required final DamageLevel upperFloorLe1,
          final List<ImagePaths> upperFloorLe1Images,
          required final DamageLevel upperFloorLe2,
          final List<ImagePaths> upperFloorLe2Images,
          required final DamageLevel hasBuckling,
          final List<ImagePaths> hasBucklingImages,
          required final DamageLevel bracingBreakRate,
          final List<ImagePaths> bracingBreakRateImages,
          required final DamageLevel jointFailure,
          final List<ImagePaths> jointFailureImages,
          required final DamageLevel columnBaseDamage,
          final List<ImagePaths> columnBaseDamageImages,
          required final DamageLevel corrosion,
          final List<ImagePaths> corrosionImages,
          required final DamageLevel roofingMaterial,
          final List<ImagePaths> roofingMaterialImages,
          required final DamageLevel windowFrame,
          final List<ImagePaths> windowFrameImages,
          required final DamageLevel exteriorWet,
          final List<ImagePaths> exteriorWetImages,
          required final DamageLevel exteriorDry,
          final List<ImagePaths> exteriorDryImages,
          required final DamageLevel signageAndEquipment,
          final List<ImagePaths> signageAndEquipmentImages,
          required final DamageLevel outdoorStairs,
          final List<ImagePaths> outdoorStairsImages,
          required final DamageLevel others,
          final List<ImagePaths> othersImages,
          final String? otherRemarks,
          required final String overallExteriorScore,
          required final DamageLevel overallStructuralScore,
          required final DamageLevel overallFallingObjectScore}) =
      _$SteelFrameContentImpl;

  factory _SteelFrameContent.fromJson(Map<String, dynamic> json) =
      _$SteelFrameContentImpl.fromJson;

//外観調査(一見して危険と判断される)
  @override
  int get exteriorInspectionScore;
  @override
  String? get exteriorInspectionRemarks; //隣接建築物・周辺地盤等及び構造躯体に関する危険度
  @override
  DamageLevel get adjacentBuildingRisk;
  @override
  List<ImagePaths> get adjacentBuildingRiskImages; //不同沈下による建築物全体の傾斜
  @override
  DamageLevel get unevenSettlement;
  @override
  List<ImagePaths> get unevenSettlementImages; //傾斜を生じた階の上の階数が1階以下
  @override
  DamageLevel get upperFloorLe1;
  @override
  List<ImagePaths> get upperFloorLe1Images; //傾斜を生じた階の上の階数が2階以下
  @override
  DamageLevel get upperFloorLe2;
  @override
  List<ImagePaths> get upperFloorLe2Images; //部材の座屈の有無
  @override
  DamageLevel get hasBuckling;
  @override
  List<ImagePaths> get hasBucklingImages; //筋違の破断率
  @override
  DamageLevel get bracingBreakRate;
  @override
  List<ImagePaths> get bracingBreakRateImages; //柱梁接合部および継手の破壊
  @override
  DamageLevel get jointFailure;
  @override
  List<ImagePaths> get jointFailureImages; //柱脚の破損
  @override
  DamageLevel get columnBaseDamage;
  @override
  List<ImagePaths> get columnBaseDamageImages; //腐食の有無
  @override
  DamageLevel get corrosion;
  @override
  List<ImagePaths> get corrosionImages; //落下危険物・転倒危険物に関する危険度
//屋根材
  @override
  DamageLevel get roofingMaterial;
  @override
  List<ImagePaths> get roofingMaterialImages; //窓枠・窓ガラス
  @override
  DamageLevel get windowFrame;
  @override
  List<ImagePaths> get windowFrameImages; //外装材　湿式
  @override
  DamageLevel get exteriorWet;
  @override
  List<ImagePaths> get exteriorWetImages; //外装材　乾式
  @override
  DamageLevel get exteriorDry;
  @override
  List<ImagePaths> get exteriorDryImages; //看板・機器類
  @override
  DamageLevel get signageAndEquipment;
  @override
  List<ImagePaths> get signageAndEquipmentImages; //屋外階段
  @override
  DamageLevel get outdoorStairs;
  @override
  List<ImagePaths> get outdoorStairsImages; //その他
  @override
  DamageLevel get others;
  @override
  List<ImagePaths> get othersImages;
  @override
  String? get otherRemarks;
  @override
  String get overallExteriorScore;
  @override
  DamageLevel get overallStructuralScore;
  @override
  DamageLevel get overallFallingObjectScore;

  /// Create a copy of SteelFrameContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SteelFrameContentImplCopyWith<_$SteelFrameContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WoodenRecord _$WoodenRecordFromJson(Map<String, dynamic> json) {
  return _WoodenRecord.fromJson(json);
}

/// @nodoc
mixin _$WoodenRecord {
  InvestigationUnit get unit => throw _privateConstructorUsedError;
  BuildingOverview get overview => throw _privateConstructorUsedError;
  WoodenContent get content => throw _privateConstructorUsedError;
  OverallScore get overallScore => throw _privateConstructorUsedError;

  /// Serializes this WoodenRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WoodenRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WoodenRecordCopyWith<WoodenRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoodenRecordCopyWith<$Res> {
  factory $WoodenRecordCopyWith(
          WoodenRecord value, $Res Function(WoodenRecord) then) =
      _$WoodenRecordCopyWithImpl<$Res, WoodenRecord>;
  @useResult
  $Res call(
      {InvestigationUnit unit,
      BuildingOverview overview,
      WoodenContent content,
      OverallScore overallScore});

  $InvestigationUnitCopyWith<$Res> get unit;
  $BuildingOverviewCopyWith<$Res> get overview;
  $WoodenContentCopyWith<$Res> get content;
}

/// @nodoc
class _$WoodenRecordCopyWithImpl<$Res, $Val extends WoodenRecord>
    implements $WoodenRecordCopyWith<$Res> {
  _$WoodenRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WoodenRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? overview = null,
    Object? content = null,
    Object? overallScore = null,
  }) {
    return _then(_value.copyWith(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as InvestigationUnit,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as BuildingOverview,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as WoodenContent,
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as OverallScore,
    ) as $Val);
  }

  /// Create a copy of WoodenRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvestigationUnitCopyWith<$Res> get unit {
    return $InvestigationUnitCopyWith<$Res>(_value.unit, (value) {
      return _then(_value.copyWith(unit: value) as $Val);
    });
  }

  /// Create a copy of WoodenRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BuildingOverviewCopyWith<$Res> get overview {
    return $BuildingOverviewCopyWith<$Res>(_value.overview, (value) {
      return _then(_value.copyWith(overview: value) as $Val);
    });
  }

  /// Create a copy of WoodenRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WoodenContentCopyWith<$Res> get content {
    return $WoodenContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WoodenRecordImplCopyWith<$Res>
    implements $WoodenRecordCopyWith<$Res> {
  factory _$$WoodenRecordImplCopyWith(
          _$WoodenRecordImpl value, $Res Function(_$WoodenRecordImpl) then) =
      __$$WoodenRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InvestigationUnit unit,
      BuildingOverview overview,
      WoodenContent content,
      OverallScore overallScore});

  @override
  $InvestigationUnitCopyWith<$Res> get unit;
  @override
  $BuildingOverviewCopyWith<$Res> get overview;
  @override
  $WoodenContentCopyWith<$Res> get content;
}

/// @nodoc
class __$$WoodenRecordImplCopyWithImpl<$Res>
    extends _$WoodenRecordCopyWithImpl<$Res, _$WoodenRecordImpl>
    implements _$$WoodenRecordImplCopyWith<$Res> {
  __$$WoodenRecordImplCopyWithImpl(
      _$WoodenRecordImpl _value, $Res Function(_$WoodenRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoodenRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? overview = null,
    Object? content = null,
    Object? overallScore = null,
  }) {
    return _then(_$WoodenRecordImpl(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as InvestigationUnit,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as BuildingOverview,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as WoodenContent,
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as OverallScore,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WoodenRecordImpl implements _WoodenRecord {
  const _$WoodenRecordImpl(
      {required this.unit,
      required this.overview,
      required this.content,
      required this.overallScore});

  factory _$WoodenRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$WoodenRecordImplFromJson(json);

  @override
  final InvestigationUnit unit;
  @override
  final BuildingOverview overview;
  @override
  final WoodenContent content;
  @override
  final OverallScore overallScore;

  @override
  String toString() {
    return 'WoodenRecord(unit: $unit, overview: $overview, content: $content, overallScore: $overallScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WoodenRecordImpl &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.overallScore, overallScore) ||
                other.overallScore == overallScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, unit, overview, content, overallScore);

  /// Create a copy of WoodenRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WoodenRecordImplCopyWith<_$WoodenRecordImpl> get copyWith =>
      __$$WoodenRecordImplCopyWithImpl<_$WoodenRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WoodenRecordImplToJson(
      this,
    );
  }
}

abstract class _WoodenRecord implements WoodenRecord {
  const factory _WoodenRecord(
      {required final InvestigationUnit unit,
      required final BuildingOverview overview,
      required final WoodenContent content,
      required final OverallScore overallScore}) = _$WoodenRecordImpl;

  factory _WoodenRecord.fromJson(Map<String, dynamic> json) =
      _$WoodenRecordImpl.fromJson;

  @override
  InvestigationUnit get unit;
  @override
  BuildingOverview get overview;
  @override
  WoodenContent get content;
  @override
  OverallScore get overallScore;

  /// Create a copy of WoodenRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WoodenRecordImplCopyWith<_$WoodenRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SteelFrameRecord _$SteelFrameRecordFromJson(Map<String, dynamic> json) {
  return _SteelFrameRecord.fromJson(json);
}

/// @nodoc
mixin _$SteelFrameRecord {
  InvestigationUnit get unit => throw _privateConstructorUsedError;
  BuildingOverview get overview => throw _privateConstructorUsedError;
  SteelFrameContent get content => throw _privateConstructorUsedError;
  OverallScore get overallScore => throw _privateConstructorUsedError;

  /// Serializes this SteelFrameRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SteelFrameRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SteelFrameRecordCopyWith<SteelFrameRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SteelFrameRecordCopyWith<$Res> {
  factory $SteelFrameRecordCopyWith(
          SteelFrameRecord value, $Res Function(SteelFrameRecord) then) =
      _$SteelFrameRecordCopyWithImpl<$Res, SteelFrameRecord>;
  @useResult
  $Res call(
      {InvestigationUnit unit,
      BuildingOverview overview,
      SteelFrameContent content,
      OverallScore overallScore});

  $InvestigationUnitCopyWith<$Res> get unit;
  $BuildingOverviewCopyWith<$Res> get overview;
  $SteelFrameContentCopyWith<$Res> get content;
}

/// @nodoc
class _$SteelFrameRecordCopyWithImpl<$Res, $Val extends SteelFrameRecord>
    implements $SteelFrameRecordCopyWith<$Res> {
  _$SteelFrameRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SteelFrameRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? overview = null,
    Object? content = null,
    Object? overallScore = null,
  }) {
    return _then(_value.copyWith(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as InvestigationUnit,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as BuildingOverview,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as SteelFrameContent,
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as OverallScore,
    ) as $Val);
  }

  /// Create a copy of SteelFrameRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvestigationUnitCopyWith<$Res> get unit {
    return $InvestigationUnitCopyWith<$Res>(_value.unit, (value) {
      return _then(_value.copyWith(unit: value) as $Val);
    });
  }

  /// Create a copy of SteelFrameRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BuildingOverviewCopyWith<$Res> get overview {
    return $BuildingOverviewCopyWith<$Res>(_value.overview, (value) {
      return _then(_value.copyWith(overview: value) as $Val);
    });
  }

  /// Create a copy of SteelFrameRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SteelFrameContentCopyWith<$Res> get content {
    return $SteelFrameContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SteelFrameRecordImplCopyWith<$Res>
    implements $SteelFrameRecordCopyWith<$Res> {
  factory _$$SteelFrameRecordImplCopyWith(_$SteelFrameRecordImpl value,
          $Res Function(_$SteelFrameRecordImpl) then) =
      __$$SteelFrameRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InvestigationUnit unit,
      BuildingOverview overview,
      SteelFrameContent content,
      OverallScore overallScore});

  @override
  $InvestigationUnitCopyWith<$Res> get unit;
  @override
  $BuildingOverviewCopyWith<$Res> get overview;
  @override
  $SteelFrameContentCopyWith<$Res> get content;
}

/// @nodoc
class __$$SteelFrameRecordImplCopyWithImpl<$Res>
    extends _$SteelFrameRecordCopyWithImpl<$Res, _$SteelFrameRecordImpl>
    implements _$$SteelFrameRecordImplCopyWith<$Res> {
  __$$SteelFrameRecordImplCopyWithImpl(_$SteelFrameRecordImpl _value,
      $Res Function(_$SteelFrameRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of SteelFrameRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? overview = null,
    Object? content = null,
    Object? overallScore = null,
  }) {
    return _then(_$SteelFrameRecordImpl(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as InvestigationUnit,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as BuildingOverview,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as SteelFrameContent,
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as OverallScore,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SteelFrameRecordImpl implements _SteelFrameRecord {
  const _$SteelFrameRecordImpl(
      {required this.unit,
      required this.overview,
      required this.content,
      required this.overallScore});

  factory _$SteelFrameRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$SteelFrameRecordImplFromJson(json);

  @override
  final InvestigationUnit unit;
  @override
  final BuildingOverview overview;
  @override
  final SteelFrameContent content;
  @override
  final OverallScore overallScore;

  @override
  String toString() {
    return 'SteelFrameRecord(unit: $unit, overview: $overview, content: $content, overallScore: $overallScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SteelFrameRecordImpl &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.overallScore, overallScore) ||
                other.overallScore == overallScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, unit, overview, content, overallScore);

  /// Create a copy of SteelFrameRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SteelFrameRecordImplCopyWith<_$SteelFrameRecordImpl> get copyWith =>
      __$$SteelFrameRecordImplCopyWithImpl<_$SteelFrameRecordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SteelFrameRecordImplToJson(
      this,
    );
  }
}

abstract class _SteelFrameRecord implements SteelFrameRecord {
  const factory _SteelFrameRecord(
      {required final InvestigationUnit unit,
      required final BuildingOverview overview,
      required final SteelFrameContent content,
      required final OverallScore overallScore}) = _$SteelFrameRecordImpl;

  factory _SteelFrameRecord.fromJson(Map<String, dynamic> json) =
      _$SteelFrameRecordImpl.fromJson;

  @override
  InvestigationUnit get unit;
  @override
  BuildingOverview get overview;
  @override
  SteelFrameContent get content;
  @override
  OverallScore get overallScore;

  /// Create a copy of SteelFrameRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SteelFrameRecordImplCopyWith<_$SteelFrameRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
