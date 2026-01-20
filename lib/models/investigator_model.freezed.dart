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
  LatLng get position => throw _privateConstructorUsedError;

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
      LatLng position});
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
    Object? position = null,
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
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
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
      LatLng position});
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
    Object? position = null,
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
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
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
      required this.position})
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
  final LatLng position;

  @override
  String toString() {
    return 'InvestigationUnit(buildingtype: $buildingtype, number: $number, date: $date, surveyCount: $surveyCount, investigator: $investigator, investigatorPrefecture: $investigatorPrefecture, investigatorNumber: $investigatorNumber, position: $position)';
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
            (identical(other.position, position) ||
                other.position == position));
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
      position);

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
      required final LatLng position}) = _$InvestigationUnitImpl;

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
  LatLng get position;

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
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get adjacentBuildingRisk => throw _privateConstructorUsedError;
  List<ImagePaths> get adjacentBuildingRiskImages =>
      throw _privateConstructorUsedError; //構造躯体の不同沈下
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get unevenSettlement => throw _privateConstructorUsedError;
  List<ImagePaths> get unevenSettlementImages =>
      throw _privateConstructorUsedError; //基礎の被害
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get foundationDamage => throw _privateConstructorUsedError;
  List<ImagePaths> get foundationDamageImages =>
      throw _privateConstructorUsedError; //建築物の一回の傾斜
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get firstFloorTilt => throw _privateConstructorUsedError;
  List<ImagePaths> get firstFloorTiltImages =>
      throw _privateConstructorUsedError; //壁の被害
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get wallDamage => throw _privateConstructorUsedError;
  List<ImagePaths> get wallDamageImages =>
      throw _privateConstructorUsedError; //腐食・蟻害の有無
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get corrosionOrTermite => throw _privateConstructorUsedError;
  List<ImagePaths> get corrosionOrTermiteImages =>
      throw _privateConstructorUsedError; //落下危険物・転倒危険物に関する危険度
//瓦
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get roofTile => throw _privateConstructorUsedError;
  List<ImagePaths> get roofTileImages =>
      throw _privateConstructorUsedError; //窓枠・窓ガラス
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get windowFrame => throw _privateConstructorUsedError;
  List<ImagePaths> get windowFrameImages =>
      throw _privateConstructorUsedError; //外装材　湿式
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get exteriorWet => throw _privateConstructorUsedError;
  List<ImagePaths> get exteriorWetImages =>
      throw _privateConstructorUsedError; //外装材　乾式
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get exteriorDry => throw _privateConstructorUsedError;
  List<ImagePaths> get exteriorDryImages =>
      throw _privateConstructorUsedError; //看板・機器類
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get signageAndEquipment => throw _privateConstructorUsedError;
  List<ImagePaths> get signageAndEquipmentImages =>
      throw _privateConstructorUsedError; //その他
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get outdoorStairs => throw _privateConstructorUsedError;
  List<ImagePaths> get outdoorStairsImages =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get others => throw _privateConstructorUsedError;
  List<ImagePaths> get othersImages => throw _privateConstructorUsedError;
  String? get otherRemarks => throw _privateConstructorUsedError;
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallExteriorScore => throw _privateConstructorUsedError;
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallStructuralScore => throw _privateConstructorUsedError;
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallFallingObjectScore =>
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
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? adjacentBuildingRisk,
      List<ImagePaths> adjacentBuildingRiskImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? unevenSettlement,
      List<ImagePaths> unevenSettlementImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? foundationDamage,
      List<ImagePaths> foundationDamageImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? firstFloorTilt,
      List<ImagePaths> firstFloorTiltImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? wallDamage,
      List<ImagePaths> wallDamageImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? corrosionOrTermite,
      List<ImagePaths> corrosionOrTermiteImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? roofTile,
      List<ImagePaths> roofTileImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? windowFrame,
      List<ImagePaths> windowFrameImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? exteriorWet,
      List<ImagePaths> exteriorWetImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? exteriorDry,
      List<ImagePaths> exteriorDryImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? signageAndEquipment,
      List<ImagePaths> signageAndEquipmentImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? outdoorStairs,
      List<ImagePaths> outdoorStairsImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? others,
      List<ImagePaths> othersImages,
      String? otherRemarks,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? overallExteriorScore,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? overallStructuralScore,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? overallFallingObjectScore});
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
    Object? adjacentBuildingRisk = freezed,
    Object? adjacentBuildingRiskImages = null,
    Object? unevenSettlement = freezed,
    Object? unevenSettlementImages = null,
    Object? foundationDamage = freezed,
    Object? foundationDamageImages = null,
    Object? firstFloorTilt = freezed,
    Object? firstFloorTiltImages = null,
    Object? wallDamage = freezed,
    Object? wallDamageImages = null,
    Object? corrosionOrTermite = freezed,
    Object? corrosionOrTermiteImages = null,
    Object? roofTile = freezed,
    Object? roofTileImages = null,
    Object? windowFrame = freezed,
    Object? windowFrameImages = null,
    Object? exteriorWet = freezed,
    Object? exteriorWetImages = null,
    Object? exteriorDry = freezed,
    Object? exteriorDryImages = null,
    Object? signageAndEquipment = freezed,
    Object? signageAndEquipmentImages = null,
    Object? outdoorStairs = freezed,
    Object? outdoorStairsImages = null,
    Object? others = freezed,
    Object? othersImages = null,
    Object? otherRemarks = freezed,
    Object? overallExteriorScore = freezed,
    Object? overallStructuralScore = freezed,
    Object? overallFallingObjectScore = freezed,
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
      adjacentBuildingRisk: freezed == adjacentBuildingRisk
          ? _value.adjacentBuildingRisk
          : adjacentBuildingRisk // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      adjacentBuildingRiskImages: null == adjacentBuildingRiskImages
          ? _value.adjacentBuildingRiskImages
          : adjacentBuildingRiskImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      unevenSettlement: freezed == unevenSettlement
          ? _value.unevenSettlement
          : unevenSettlement // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      unevenSettlementImages: null == unevenSettlementImages
          ? _value.unevenSettlementImages
          : unevenSettlementImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      foundationDamage: freezed == foundationDamage
          ? _value.foundationDamage
          : foundationDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      foundationDamageImages: null == foundationDamageImages
          ? _value.foundationDamageImages
          : foundationDamageImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      firstFloorTilt: freezed == firstFloorTilt
          ? _value.firstFloorTilt
          : firstFloorTilt // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      firstFloorTiltImages: null == firstFloorTiltImages
          ? _value.firstFloorTiltImages
          : firstFloorTiltImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      wallDamage: freezed == wallDamage
          ? _value.wallDamage
          : wallDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      wallDamageImages: null == wallDamageImages
          ? _value.wallDamageImages
          : wallDamageImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      corrosionOrTermite: freezed == corrosionOrTermite
          ? _value.corrosionOrTermite
          : corrosionOrTermite // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      corrosionOrTermiteImages: null == corrosionOrTermiteImages
          ? _value.corrosionOrTermiteImages
          : corrosionOrTermiteImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      roofTile: freezed == roofTile
          ? _value.roofTile
          : roofTile // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      roofTileImages: null == roofTileImages
          ? _value.roofTileImages
          : roofTileImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      windowFrame: freezed == windowFrame
          ? _value.windowFrame
          : windowFrame // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      windowFrameImages: null == windowFrameImages
          ? _value.windowFrameImages
          : windowFrameImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorWet: freezed == exteriorWet
          ? _value.exteriorWet
          : exteriorWet // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      exteriorWetImages: null == exteriorWetImages
          ? _value.exteriorWetImages
          : exteriorWetImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorDry: freezed == exteriorDry
          ? _value.exteriorDry
          : exteriorDry // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      exteriorDryImages: null == exteriorDryImages
          ? _value.exteriorDryImages
          : exteriorDryImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      signageAndEquipment: freezed == signageAndEquipment
          ? _value.signageAndEquipment
          : signageAndEquipment // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      signageAndEquipmentImages: null == signageAndEquipmentImages
          ? _value.signageAndEquipmentImages
          : signageAndEquipmentImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      outdoorStairs: freezed == outdoorStairs
          ? _value.outdoorStairs
          : outdoorStairs // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      outdoorStairsImages: null == outdoorStairsImages
          ? _value.outdoorStairsImages
          : outdoorStairsImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      others: freezed == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      othersImages: null == othersImages
          ? _value.othersImages
          : othersImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      otherRemarks: freezed == otherRemarks
          ? _value.otherRemarks
          : otherRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      overallExteriorScore: freezed == overallExteriorScore
          ? _value.overallExteriorScore
          : overallExteriorScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      overallStructuralScore: freezed == overallStructuralScore
          ? _value.overallStructuralScore
          : overallStructuralScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      overallFallingObjectScore: freezed == overallFallingObjectScore
          ? _value.overallFallingObjectScore
          : overallFallingObjectScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
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
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? adjacentBuildingRisk,
      List<ImagePaths> adjacentBuildingRiskImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? unevenSettlement,
      List<ImagePaths> unevenSettlementImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? foundationDamage,
      List<ImagePaths> foundationDamageImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? firstFloorTilt,
      List<ImagePaths> firstFloorTiltImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? wallDamage,
      List<ImagePaths> wallDamageImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? corrosionOrTermite,
      List<ImagePaths> corrosionOrTermiteImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? roofTile,
      List<ImagePaths> roofTileImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? windowFrame,
      List<ImagePaths> windowFrameImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? exteriorWet,
      List<ImagePaths> exteriorWetImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? exteriorDry,
      List<ImagePaths> exteriorDryImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? signageAndEquipment,
      List<ImagePaths> signageAndEquipmentImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? outdoorStairs,
      List<ImagePaths> outdoorStairsImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? others,
      List<ImagePaths> othersImages,
      String? otherRemarks,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? overallExteriorScore,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? overallStructuralScore,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? overallFallingObjectScore});
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
    Object? adjacentBuildingRisk = freezed,
    Object? adjacentBuildingRiskImages = null,
    Object? unevenSettlement = freezed,
    Object? unevenSettlementImages = null,
    Object? foundationDamage = freezed,
    Object? foundationDamageImages = null,
    Object? firstFloorTilt = freezed,
    Object? firstFloorTiltImages = null,
    Object? wallDamage = freezed,
    Object? wallDamageImages = null,
    Object? corrosionOrTermite = freezed,
    Object? corrosionOrTermiteImages = null,
    Object? roofTile = freezed,
    Object? roofTileImages = null,
    Object? windowFrame = freezed,
    Object? windowFrameImages = null,
    Object? exteriorWet = freezed,
    Object? exteriorWetImages = null,
    Object? exteriorDry = freezed,
    Object? exteriorDryImages = null,
    Object? signageAndEquipment = freezed,
    Object? signageAndEquipmentImages = null,
    Object? outdoorStairs = freezed,
    Object? outdoorStairsImages = null,
    Object? others = freezed,
    Object? othersImages = null,
    Object? otherRemarks = freezed,
    Object? overallExteriorScore = freezed,
    Object? overallStructuralScore = freezed,
    Object? overallFallingObjectScore = freezed,
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
      adjacentBuildingRisk: freezed == adjacentBuildingRisk
          ? _value.adjacentBuildingRisk
          : adjacentBuildingRisk // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      adjacentBuildingRiskImages: null == adjacentBuildingRiskImages
          ? _value._adjacentBuildingRiskImages
          : adjacentBuildingRiskImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      unevenSettlement: freezed == unevenSettlement
          ? _value.unevenSettlement
          : unevenSettlement // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      unevenSettlementImages: null == unevenSettlementImages
          ? _value._unevenSettlementImages
          : unevenSettlementImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      foundationDamage: freezed == foundationDamage
          ? _value.foundationDamage
          : foundationDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      foundationDamageImages: null == foundationDamageImages
          ? _value._foundationDamageImages
          : foundationDamageImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      firstFloorTilt: freezed == firstFloorTilt
          ? _value.firstFloorTilt
          : firstFloorTilt // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      firstFloorTiltImages: null == firstFloorTiltImages
          ? _value._firstFloorTiltImages
          : firstFloorTiltImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      wallDamage: freezed == wallDamage
          ? _value.wallDamage
          : wallDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      wallDamageImages: null == wallDamageImages
          ? _value._wallDamageImages
          : wallDamageImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      corrosionOrTermite: freezed == corrosionOrTermite
          ? _value.corrosionOrTermite
          : corrosionOrTermite // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      corrosionOrTermiteImages: null == corrosionOrTermiteImages
          ? _value._corrosionOrTermiteImages
          : corrosionOrTermiteImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      roofTile: freezed == roofTile
          ? _value.roofTile
          : roofTile // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      roofTileImages: null == roofTileImages
          ? _value._roofTileImages
          : roofTileImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      windowFrame: freezed == windowFrame
          ? _value.windowFrame
          : windowFrame // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      windowFrameImages: null == windowFrameImages
          ? _value._windowFrameImages
          : windowFrameImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorWet: freezed == exteriorWet
          ? _value.exteriorWet
          : exteriorWet // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      exteriorWetImages: null == exteriorWetImages
          ? _value._exteriorWetImages
          : exteriorWetImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorDry: freezed == exteriorDry
          ? _value.exteriorDry
          : exteriorDry // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      exteriorDryImages: null == exteriorDryImages
          ? _value._exteriorDryImages
          : exteriorDryImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      signageAndEquipment: freezed == signageAndEquipment
          ? _value.signageAndEquipment
          : signageAndEquipment // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      signageAndEquipmentImages: null == signageAndEquipmentImages
          ? _value._signageAndEquipmentImages
          : signageAndEquipmentImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      outdoorStairs: freezed == outdoorStairs
          ? _value.outdoorStairs
          : outdoorStairs // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      outdoorStairsImages: null == outdoorStairsImages
          ? _value._outdoorStairsImages
          : outdoorStairsImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      others: freezed == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      othersImages: null == othersImages
          ? _value._othersImages
          : othersImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      otherRemarks: freezed == otherRemarks
          ? _value.otherRemarks
          : otherRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      overallExteriorScore: freezed == overallExteriorScore
          ? _value.overallExteriorScore
          : overallExteriorScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      overallStructuralScore: freezed == overallStructuralScore
          ? _value.overallStructuralScore
          : overallStructuralScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      overallFallingObjectScore: freezed == overallFallingObjectScore
          ? _value.overallFallingObjectScore
          : overallFallingObjectScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WoodenContentImpl implements _WoodenContent {
  const _$WoodenContentImpl(
      {required this.exteriorInspectionScore,
      this.exteriorInspectionRemarks,
      @JsonKey(fromJson: damageLevelFromJson)
      required this.adjacentBuildingRisk,
      final List<ImagePaths> adjacentBuildingRiskImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.unevenSettlement,
      final List<ImagePaths> unevenSettlementImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.foundationDamage,
      final List<ImagePaths> foundationDamageImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.firstFloorTilt,
      final List<ImagePaths> firstFloorTiltImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.wallDamage,
      final List<ImagePaths> wallDamageImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.corrosionOrTermite,
      final List<ImagePaths> corrosionOrTermiteImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.roofTile,
      final List<ImagePaths> roofTileImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.windowFrame,
      final List<ImagePaths> windowFrameImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.exteriorWet,
      final List<ImagePaths> exteriorWetImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.exteriorDry,
      final List<ImagePaths> exteriorDryImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.signageAndEquipment,
      final List<ImagePaths> signageAndEquipmentImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.outdoorStairs,
      final List<ImagePaths> outdoorStairsImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.others,
      final List<ImagePaths> othersImages = const [],
      this.otherRemarks,
      @JsonKey(fromJson: damageLevelFromJson)
      required this.overallExteriorScore,
      @JsonKey(fromJson: damageLevelFromJson)
      required this.overallStructuralScore,
      @JsonKey(fromJson: damageLevelFromJson)
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? adjacentBuildingRisk;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? unevenSettlement;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? foundationDamage;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? firstFloorTilt;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? wallDamage;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? corrosionOrTermite;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? roofTile;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? windowFrame;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? exteriorWet;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? exteriorDry;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? signageAndEquipment;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? outdoorStairs;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? others;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? overallExteriorScore;
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? overallStructuralScore;
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? overallFallingObjectScore;

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
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? adjacentBuildingRisk,
          final List<ImagePaths> adjacentBuildingRiskImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? unevenSettlement,
          final List<ImagePaths> unevenSettlementImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? foundationDamage,
          final List<ImagePaths> foundationDamageImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? firstFloorTilt,
          final List<ImagePaths> firstFloorTiltImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? wallDamage,
          final List<ImagePaths> wallDamageImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? corrosionOrTermite,
          final List<ImagePaths> corrosionOrTermiteImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? roofTile,
          final List<ImagePaths> roofTileImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? windowFrame,
          final List<ImagePaths> windowFrameImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? exteriorWet,
          final List<ImagePaths> exteriorWetImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? exteriorDry,
          final List<ImagePaths> exteriorDryImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? signageAndEquipment,
          final List<ImagePaths> signageAndEquipmentImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? outdoorStairs,
          final List<ImagePaths> outdoorStairsImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? others,
          final List<ImagePaths> othersImages,
          final String? otherRemarks,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? overallExteriorScore,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? overallStructuralScore,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? overallFallingObjectScore}) =
      _$WoodenContentImpl;

  factory _WoodenContent.fromJson(Map<String, dynamic> json) =
      _$WoodenContentImpl.fromJson;

  @override
  int get exteriorInspectionScore;
  @override
  String? get exteriorInspectionRemarks; //隣接建築物・周辺地盤等及び構造躯体にかんする危険度
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get adjacentBuildingRisk;
  @override
  List<ImagePaths> get adjacentBuildingRiskImages; //構造躯体の不同沈下
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get unevenSettlement;
  @override
  List<ImagePaths> get unevenSettlementImages; //基礎の被害
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get foundationDamage;
  @override
  List<ImagePaths> get foundationDamageImages; //建築物の一回の傾斜
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get firstFloorTilt;
  @override
  List<ImagePaths> get firstFloorTiltImages; //壁の被害
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get wallDamage;
  @override
  List<ImagePaths> get wallDamageImages; //腐食・蟻害の有無
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get corrosionOrTermite;
  @override
  List<ImagePaths> get corrosionOrTermiteImages; //落下危険物・転倒危険物に関する危険度
//瓦
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get roofTile;
  @override
  List<ImagePaths> get roofTileImages; //窓枠・窓ガラス
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get windowFrame;
  @override
  List<ImagePaths> get windowFrameImages; //外装材　湿式
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get exteriorWet;
  @override
  List<ImagePaths> get exteriorWetImages; //外装材　乾式
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get exteriorDry;
  @override
  List<ImagePaths> get exteriorDryImages; //看板・機器類
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get signageAndEquipment;
  @override
  List<ImagePaths> get signageAndEquipmentImages; //その他
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get outdoorStairs;
  @override
  List<ImagePaths> get outdoorStairsImages;
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get others;
  @override
  List<ImagePaths> get othersImages;
  @override
  String? get otherRemarks;
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallExteriorScore;
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallStructuralScore;
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallFallingObjectScore;

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
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get adjacentBuildingRisk => throw _privateConstructorUsedError;
  List<ImagePaths> get adjacentBuildingRiskImages =>
      throw _privateConstructorUsedError; //不同沈下による建築物全体の傾斜
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get unevenSettlement => throw _privateConstructorUsedError;
  List<ImagePaths> get unevenSettlementImages =>
      throw _privateConstructorUsedError; //傾斜を生じた階の上の階数が1階以下
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get upperFloorLe1 => throw _privateConstructorUsedError;
  List<ImagePaths> get upperFloorLe1Images =>
      throw _privateConstructorUsedError; //傾斜を生じた階の上の階数が2階以下
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get upperFloorLe2 => throw _privateConstructorUsedError;
  List<ImagePaths> get upperFloorLe2Images =>
      throw _privateConstructorUsedError; //部材の座屈の有無
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get hasBuckling => throw _privateConstructorUsedError;
  List<ImagePaths> get hasBucklingImages =>
      throw _privateConstructorUsedError; //筋違の破断率
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get bracingBreakRate => throw _privateConstructorUsedError;
  List<ImagePaths> get bracingBreakRateImages =>
      throw _privateConstructorUsedError; //柱梁接合部および継手の破壊
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get jointFailure => throw _privateConstructorUsedError;
  List<ImagePaths> get jointFailureImages =>
      throw _privateConstructorUsedError; //柱脚の破損
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get columnBaseDamage => throw _privateConstructorUsedError;
  List<ImagePaths> get columnBaseDamageImages =>
      throw _privateConstructorUsedError; //腐食の有無
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get corrosion => throw _privateConstructorUsedError;
  List<ImagePaths> get corrosionImages =>
      throw _privateConstructorUsedError; //落下危険物・転倒危険物に関する危険度
//屋根材
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get roofingMaterial => throw _privateConstructorUsedError;
  List<ImagePaths> get roofingMaterialImages =>
      throw _privateConstructorUsedError; //窓枠・窓ガラス
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get windowFrame => throw _privateConstructorUsedError;
  List<ImagePaths> get windowFrameImages =>
      throw _privateConstructorUsedError; //外装材　湿式
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get exteriorWet => throw _privateConstructorUsedError;
  List<ImagePaths> get exteriorWetImages =>
      throw _privateConstructorUsedError; //外装材　乾式
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get exteriorDry => throw _privateConstructorUsedError;
  List<ImagePaths> get exteriorDryImages =>
      throw _privateConstructorUsedError; //看板・機器類
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get signageAndEquipment => throw _privateConstructorUsedError;
  List<ImagePaths> get signageAndEquipmentImages =>
      throw _privateConstructorUsedError; //屋外階段
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get outdoorStairs => throw _privateConstructorUsedError;
  List<ImagePaths> get outdoorStairsImages =>
      throw _privateConstructorUsedError; //その他
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get others => throw _privateConstructorUsedError;
  List<ImagePaths> get othersImages => throw _privateConstructorUsedError;
  String? get otherRemarks => throw _privateConstructorUsedError;
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallExteriorScore => throw _privateConstructorUsedError;
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallStructuralScore => throw _privateConstructorUsedError;
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallFallingObjectScore =>
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
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? adjacentBuildingRisk,
      List<ImagePaths> adjacentBuildingRiskImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? unevenSettlement,
      List<ImagePaths> unevenSettlementImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? upperFloorLe1,
      List<ImagePaths> upperFloorLe1Images,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? upperFloorLe2,
      List<ImagePaths> upperFloorLe2Images,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? hasBuckling,
      List<ImagePaths> hasBucklingImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? bracingBreakRate,
      List<ImagePaths> bracingBreakRateImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? jointFailure,
      List<ImagePaths> jointFailureImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? columnBaseDamage,
      List<ImagePaths> columnBaseDamageImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? corrosion,
      List<ImagePaths> corrosionImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? roofingMaterial,
      List<ImagePaths> roofingMaterialImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? windowFrame,
      List<ImagePaths> windowFrameImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? exteriorWet,
      List<ImagePaths> exteriorWetImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? exteriorDry,
      List<ImagePaths> exteriorDryImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? signageAndEquipment,
      List<ImagePaths> signageAndEquipmentImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? outdoorStairs,
      List<ImagePaths> outdoorStairsImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? others,
      List<ImagePaths> othersImages,
      String? otherRemarks,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? overallExteriorScore,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? overallStructuralScore,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? overallFallingObjectScore});
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
    Object? adjacentBuildingRisk = freezed,
    Object? adjacentBuildingRiskImages = null,
    Object? unevenSettlement = freezed,
    Object? unevenSettlementImages = null,
    Object? upperFloorLe1 = freezed,
    Object? upperFloorLe1Images = null,
    Object? upperFloorLe2 = freezed,
    Object? upperFloorLe2Images = null,
    Object? hasBuckling = freezed,
    Object? hasBucklingImages = null,
    Object? bracingBreakRate = freezed,
    Object? bracingBreakRateImages = null,
    Object? jointFailure = freezed,
    Object? jointFailureImages = null,
    Object? columnBaseDamage = freezed,
    Object? columnBaseDamageImages = null,
    Object? corrosion = freezed,
    Object? corrosionImages = null,
    Object? roofingMaterial = freezed,
    Object? roofingMaterialImages = null,
    Object? windowFrame = freezed,
    Object? windowFrameImages = null,
    Object? exteriorWet = freezed,
    Object? exteriorWetImages = null,
    Object? exteriorDry = freezed,
    Object? exteriorDryImages = null,
    Object? signageAndEquipment = freezed,
    Object? signageAndEquipmentImages = null,
    Object? outdoorStairs = freezed,
    Object? outdoorStairsImages = null,
    Object? others = freezed,
    Object? othersImages = null,
    Object? otherRemarks = freezed,
    Object? overallExteriorScore = freezed,
    Object? overallStructuralScore = freezed,
    Object? overallFallingObjectScore = freezed,
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
      adjacentBuildingRisk: freezed == adjacentBuildingRisk
          ? _value.adjacentBuildingRisk
          : adjacentBuildingRisk // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      adjacentBuildingRiskImages: null == adjacentBuildingRiskImages
          ? _value.adjacentBuildingRiskImages
          : adjacentBuildingRiskImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      unevenSettlement: freezed == unevenSettlement
          ? _value.unevenSettlement
          : unevenSettlement // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      unevenSettlementImages: null == unevenSettlementImages
          ? _value.unevenSettlementImages
          : unevenSettlementImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      upperFloorLe1: freezed == upperFloorLe1
          ? _value.upperFloorLe1
          : upperFloorLe1 // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      upperFloorLe1Images: null == upperFloorLe1Images
          ? _value.upperFloorLe1Images
          : upperFloorLe1Images // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      upperFloorLe2: freezed == upperFloorLe2
          ? _value.upperFloorLe2
          : upperFloorLe2 // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      upperFloorLe2Images: null == upperFloorLe2Images
          ? _value.upperFloorLe2Images
          : upperFloorLe2Images // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      hasBuckling: freezed == hasBuckling
          ? _value.hasBuckling
          : hasBuckling // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      hasBucklingImages: null == hasBucklingImages
          ? _value.hasBucklingImages
          : hasBucklingImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      bracingBreakRate: freezed == bracingBreakRate
          ? _value.bracingBreakRate
          : bracingBreakRate // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      bracingBreakRateImages: null == bracingBreakRateImages
          ? _value.bracingBreakRateImages
          : bracingBreakRateImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      jointFailure: freezed == jointFailure
          ? _value.jointFailure
          : jointFailure // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      jointFailureImages: null == jointFailureImages
          ? _value.jointFailureImages
          : jointFailureImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      columnBaseDamage: freezed == columnBaseDamage
          ? _value.columnBaseDamage
          : columnBaseDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      columnBaseDamageImages: null == columnBaseDamageImages
          ? _value.columnBaseDamageImages
          : columnBaseDamageImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      corrosion: freezed == corrosion
          ? _value.corrosion
          : corrosion // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      corrosionImages: null == corrosionImages
          ? _value.corrosionImages
          : corrosionImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      roofingMaterial: freezed == roofingMaterial
          ? _value.roofingMaterial
          : roofingMaterial // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      roofingMaterialImages: null == roofingMaterialImages
          ? _value.roofingMaterialImages
          : roofingMaterialImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      windowFrame: freezed == windowFrame
          ? _value.windowFrame
          : windowFrame // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      windowFrameImages: null == windowFrameImages
          ? _value.windowFrameImages
          : windowFrameImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorWet: freezed == exteriorWet
          ? _value.exteriorWet
          : exteriorWet // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      exteriorWetImages: null == exteriorWetImages
          ? _value.exteriorWetImages
          : exteriorWetImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorDry: freezed == exteriorDry
          ? _value.exteriorDry
          : exteriorDry // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      exteriorDryImages: null == exteriorDryImages
          ? _value.exteriorDryImages
          : exteriorDryImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      signageAndEquipment: freezed == signageAndEquipment
          ? _value.signageAndEquipment
          : signageAndEquipment // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      signageAndEquipmentImages: null == signageAndEquipmentImages
          ? _value.signageAndEquipmentImages
          : signageAndEquipmentImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      outdoorStairs: freezed == outdoorStairs
          ? _value.outdoorStairs
          : outdoorStairs // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      outdoorStairsImages: null == outdoorStairsImages
          ? _value.outdoorStairsImages
          : outdoorStairsImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      others: freezed == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      othersImages: null == othersImages
          ? _value.othersImages
          : othersImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      otherRemarks: freezed == otherRemarks
          ? _value.otherRemarks
          : otherRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      overallExteriorScore: freezed == overallExteriorScore
          ? _value.overallExteriorScore
          : overallExteriorScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      overallStructuralScore: freezed == overallStructuralScore
          ? _value.overallStructuralScore
          : overallStructuralScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      overallFallingObjectScore: freezed == overallFallingObjectScore
          ? _value.overallFallingObjectScore
          : overallFallingObjectScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
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
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? adjacentBuildingRisk,
      List<ImagePaths> adjacentBuildingRiskImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? unevenSettlement,
      List<ImagePaths> unevenSettlementImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? upperFloorLe1,
      List<ImagePaths> upperFloorLe1Images,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? upperFloorLe2,
      List<ImagePaths> upperFloorLe2Images,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? hasBuckling,
      List<ImagePaths> hasBucklingImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? bracingBreakRate,
      List<ImagePaths> bracingBreakRateImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? jointFailure,
      List<ImagePaths> jointFailureImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? columnBaseDamage,
      List<ImagePaths> columnBaseDamageImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? corrosion,
      List<ImagePaths> corrosionImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? roofingMaterial,
      List<ImagePaths> roofingMaterialImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? windowFrame,
      List<ImagePaths> windowFrameImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? exteriorWet,
      List<ImagePaths> exteriorWetImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? exteriorDry,
      List<ImagePaths> exteriorDryImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? signageAndEquipment,
      List<ImagePaths> signageAndEquipmentImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? outdoorStairs,
      List<ImagePaths> outdoorStairsImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? others,
      List<ImagePaths> othersImages,
      String? otherRemarks,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? overallExteriorScore,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? overallStructuralScore,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? overallFallingObjectScore});
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
    Object? adjacentBuildingRisk = freezed,
    Object? adjacentBuildingRiskImages = null,
    Object? unevenSettlement = freezed,
    Object? unevenSettlementImages = null,
    Object? upperFloorLe1 = freezed,
    Object? upperFloorLe1Images = null,
    Object? upperFloorLe2 = freezed,
    Object? upperFloorLe2Images = null,
    Object? hasBuckling = freezed,
    Object? hasBucklingImages = null,
    Object? bracingBreakRate = freezed,
    Object? bracingBreakRateImages = null,
    Object? jointFailure = freezed,
    Object? jointFailureImages = null,
    Object? columnBaseDamage = freezed,
    Object? columnBaseDamageImages = null,
    Object? corrosion = freezed,
    Object? corrosionImages = null,
    Object? roofingMaterial = freezed,
    Object? roofingMaterialImages = null,
    Object? windowFrame = freezed,
    Object? windowFrameImages = null,
    Object? exteriorWet = freezed,
    Object? exteriorWetImages = null,
    Object? exteriorDry = freezed,
    Object? exteriorDryImages = null,
    Object? signageAndEquipment = freezed,
    Object? signageAndEquipmentImages = null,
    Object? outdoorStairs = freezed,
    Object? outdoorStairsImages = null,
    Object? others = freezed,
    Object? othersImages = null,
    Object? otherRemarks = freezed,
    Object? overallExteriorScore = freezed,
    Object? overallStructuralScore = freezed,
    Object? overallFallingObjectScore = freezed,
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
      adjacentBuildingRisk: freezed == adjacentBuildingRisk
          ? _value.adjacentBuildingRisk
          : adjacentBuildingRisk // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      adjacentBuildingRiskImages: null == adjacentBuildingRiskImages
          ? _value._adjacentBuildingRiskImages
          : adjacentBuildingRiskImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      unevenSettlement: freezed == unevenSettlement
          ? _value.unevenSettlement
          : unevenSettlement // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      unevenSettlementImages: null == unevenSettlementImages
          ? _value._unevenSettlementImages
          : unevenSettlementImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      upperFloorLe1: freezed == upperFloorLe1
          ? _value.upperFloorLe1
          : upperFloorLe1 // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      upperFloorLe1Images: null == upperFloorLe1Images
          ? _value._upperFloorLe1Images
          : upperFloorLe1Images // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      upperFloorLe2: freezed == upperFloorLe2
          ? _value.upperFloorLe2
          : upperFloorLe2 // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      upperFloorLe2Images: null == upperFloorLe2Images
          ? _value._upperFloorLe2Images
          : upperFloorLe2Images // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      hasBuckling: freezed == hasBuckling
          ? _value.hasBuckling
          : hasBuckling // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      hasBucklingImages: null == hasBucklingImages
          ? _value._hasBucklingImages
          : hasBucklingImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      bracingBreakRate: freezed == bracingBreakRate
          ? _value.bracingBreakRate
          : bracingBreakRate // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      bracingBreakRateImages: null == bracingBreakRateImages
          ? _value._bracingBreakRateImages
          : bracingBreakRateImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      jointFailure: freezed == jointFailure
          ? _value.jointFailure
          : jointFailure // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      jointFailureImages: null == jointFailureImages
          ? _value._jointFailureImages
          : jointFailureImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      columnBaseDamage: freezed == columnBaseDamage
          ? _value.columnBaseDamage
          : columnBaseDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      columnBaseDamageImages: null == columnBaseDamageImages
          ? _value._columnBaseDamageImages
          : columnBaseDamageImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      corrosion: freezed == corrosion
          ? _value.corrosion
          : corrosion // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      corrosionImages: null == corrosionImages
          ? _value._corrosionImages
          : corrosionImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      roofingMaterial: freezed == roofingMaterial
          ? _value.roofingMaterial
          : roofingMaterial // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      roofingMaterialImages: null == roofingMaterialImages
          ? _value._roofingMaterialImages
          : roofingMaterialImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      windowFrame: freezed == windowFrame
          ? _value.windowFrame
          : windowFrame // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      windowFrameImages: null == windowFrameImages
          ? _value._windowFrameImages
          : windowFrameImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorWet: freezed == exteriorWet
          ? _value.exteriorWet
          : exteriorWet // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      exteriorWetImages: null == exteriorWetImages
          ? _value._exteriorWetImages
          : exteriorWetImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorDry: freezed == exteriorDry
          ? _value.exteriorDry
          : exteriorDry // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      exteriorDryImages: null == exteriorDryImages
          ? _value._exteriorDryImages
          : exteriorDryImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      signageAndEquipment: freezed == signageAndEquipment
          ? _value.signageAndEquipment
          : signageAndEquipment // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      signageAndEquipmentImages: null == signageAndEquipmentImages
          ? _value._signageAndEquipmentImages
          : signageAndEquipmentImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      outdoorStairs: freezed == outdoorStairs
          ? _value.outdoorStairs
          : outdoorStairs // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      outdoorStairsImages: null == outdoorStairsImages
          ? _value._outdoorStairsImages
          : outdoorStairsImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      others: freezed == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      othersImages: null == othersImages
          ? _value._othersImages
          : othersImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      otherRemarks: freezed == otherRemarks
          ? _value.otherRemarks
          : otherRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      overallExteriorScore: freezed == overallExteriorScore
          ? _value.overallExteriorScore
          : overallExteriorScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      overallStructuralScore: freezed == overallStructuralScore
          ? _value.overallStructuralScore
          : overallStructuralScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      overallFallingObjectScore: freezed == overallFallingObjectScore
          ? _value.overallFallingObjectScore
          : overallFallingObjectScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SteelFrameContentImpl implements _SteelFrameContent {
  const _$SteelFrameContentImpl(
      {required this.exteriorInspectionScore,
      this.exteriorInspectionRemarks,
      @JsonKey(fromJson: damageLevelFromJson)
      required this.adjacentBuildingRisk,
      final List<ImagePaths> adjacentBuildingRiskImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.unevenSettlement,
      final List<ImagePaths> unevenSettlementImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.upperFloorLe1,
      final List<ImagePaths> upperFloorLe1Images = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.upperFloorLe2,
      final List<ImagePaths> upperFloorLe2Images = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.hasBuckling,
      final List<ImagePaths> hasBucklingImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.bracingBreakRate,
      final List<ImagePaths> bracingBreakRateImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.jointFailure,
      final List<ImagePaths> jointFailureImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.columnBaseDamage,
      final List<ImagePaths> columnBaseDamageImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.corrosion,
      final List<ImagePaths> corrosionImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.roofingMaterial,
      final List<ImagePaths> roofingMaterialImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.windowFrame,
      final List<ImagePaths> windowFrameImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.exteriorWet,
      final List<ImagePaths> exteriorWetImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.exteriorDry,
      final List<ImagePaths> exteriorDryImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.signageAndEquipment,
      final List<ImagePaths> signageAndEquipmentImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.outdoorStairs,
      final List<ImagePaths> outdoorStairsImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.others,
      final List<ImagePaths> othersImages = const [],
      this.otherRemarks,
      @JsonKey(fromJson: damageLevelFromJson)
      required this.overallExteriorScore,
      @JsonKey(fromJson: damageLevelFromJson)
      required this.overallStructuralScore,
      @JsonKey(fromJson: damageLevelFromJson)
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? adjacentBuildingRisk;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? unevenSettlement;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? upperFloorLe1;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? upperFloorLe2;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? hasBuckling;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? bracingBreakRate;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? jointFailure;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? columnBaseDamage;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? corrosion;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? roofingMaterial;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? windowFrame;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? exteriorWet;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? exteriorDry;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? signageAndEquipment;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? outdoorStairs;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? others;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? overallExteriorScore;
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? overallStructuralScore;
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? overallFallingObjectScore;

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
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? adjacentBuildingRisk,
          final List<ImagePaths> adjacentBuildingRiskImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? unevenSettlement,
          final List<ImagePaths> unevenSettlementImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? upperFloorLe1,
          final List<ImagePaths> upperFloorLe1Images,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? upperFloorLe2,
          final List<ImagePaths> upperFloorLe2Images,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? hasBuckling,
          final List<ImagePaths> hasBucklingImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? bracingBreakRate,
          final List<ImagePaths> bracingBreakRateImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? jointFailure,
          final List<ImagePaths> jointFailureImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? columnBaseDamage,
          final List<ImagePaths> columnBaseDamageImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? corrosion,
          final List<ImagePaths> corrosionImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? roofingMaterial,
          final List<ImagePaths> roofingMaterialImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? windowFrame,
          final List<ImagePaths> windowFrameImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? exteriorWet,
          final List<ImagePaths> exteriorWetImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? exteriorDry,
          final List<ImagePaths> exteriorDryImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? signageAndEquipment,
          final List<ImagePaths> signageAndEquipmentImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? outdoorStairs,
          final List<ImagePaths> outdoorStairsImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? others,
          final List<ImagePaths> othersImages,
          final String? otherRemarks,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? overallExteriorScore,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? overallStructuralScore,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? overallFallingObjectScore}) =
      _$SteelFrameContentImpl;

  factory _SteelFrameContent.fromJson(Map<String, dynamic> json) =
      _$SteelFrameContentImpl.fromJson;

//外観調査(一見して危険と判断される)
  @override
  int get exteriorInspectionScore;
  @override
  String? get exteriorInspectionRemarks; //隣接建築物・周辺地盤等及び構造躯体に関する危険度
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get adjacentBuildingRisk;
  @override
  List<ImagePaths> get adjacentBuildingRiskImages; //不同沈下による建築物全体の傾斜
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get unevenSettlement;
  @override
  List<ImagePaths> get unevenSettlementImages; //傾斜を生じた階の上の階数が1階以下
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get upperFloorLe1;
  @override
  List<ImagePaths> get upperFloorLe1Images; //傾斜を生じた階の上の階数が2階以下
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get upperFloorLe2;
  @override
  List<ImagePaths> get upperFloorLe2Images; //部材の座屈の有無
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get hasBuckling;
  @override
  List<ImagePaths> get hasBucklingImages; //筋違の破断率
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get bracingBreakRate;
  @override
  List<ImagePaths> get bracingBreakRateImages; //柱梁接合部および継手の破壊
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get jointFailure;
  @override
  List<ImagePaths> get jointFailureImages; //柱脚の破損
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get columnBaseDamage;
  @override
  List<ImagePaths> get columnBaseDamageImages; //腐食の有無
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get corrosion;
  @override
  List<ImagePaths> get corrosionImages; //落下危険物・転倒危険物に関する危険度
//屋根材
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get roofingMaterial;
  @override
  List<ImagePaths> get roofingMaterialImages; //窓枠・窓ガラス
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get windowFrame;
  @override
  List<ImagePaths> get windowFrameImages; //外装材　湿式
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get exteriorWet;
  @override
  List<ImagePaths> get exteriorWetImages; //外装材　乾式
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get exteriorDry;
  @override
  List<ImagePaths> get exteriorDryImages; //看板・機器類
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get signageAndEquipment;
  @override
  List<ImagePaths> get signageAndEquipmentImages; //屋外階段
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get outdoorStairs;
  @override
  List<ImagePaths> get outdoorStairsImages; //その他
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get others;
  @override
  List<ImagePaths> get othersImages;
  @override
  String? get otherRemarks;
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallExteriorScore;
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallStructuralScore;
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallFallingObjectScore;

  /// Create a copy of SteelFrameContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SteelFrameContentImplCopyWith<_$SteelFrameContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RebarContent _$RebarContentFromJson(Map<String, dynamic> json) {
  return _RebarContent.fromJson(json);
}

/// @nodoc
mixin _$RebarContent {
//外観調査(一見して危険と判断される)
  int get exteriorInspectionScore => throw _privateConstructorUsedError;
  String? get exteriorInspectionRemarks =>
      throw _privateConstructorUsedError; //損傷度Ⅲ以上の損傷部材の有無
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get hasSevereDamageMembers => throw _privateConstructorUsedError;
  List<ImagePaths> get hasSevereDamageMembersImages =>
      throw _privateConstructorUsedError; //隣接建築物・周辺地盤の破壊による危険
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get adjacentBuildingRisk => throw _privateConstructorUsedError;
  List<ImagePaths> get adjacentBuildingRiskImages =>
      throw _privateConstructorUsedError; //地盤破壊による建築物全体の沈下
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get groundFailureInclination =>
      throw _privateConstructorUsedError;
  List<ImagePaths> get groundFailureInclinationImages =>
      throw _privateConstructorUsedError; //不同沈下による建築物全体の傾斜
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get unevenSettlement => throw _privateConstructorUsedError;
  List<ImagePaths> get unevenSettlementImages =>
      throw _privateConstructorUsedError; //柱の被害の調査階数
  int get inspectedFloorsForColumns =>
      throw _privateConstructorUsedError; //損傷度Ⅴ
//損傷度Ⅴの柱総数
  int get totalColumnsLevel5 => throw _privateConstructorUsedError; //損傷度Ⅴの調査柱数
  int get surveyedColumnsLevel5 =>
      throw _privateConstructorUsedError; //損傷度Ⅴの調査柱本数のうち損傷度Ⅴの柱のパーセントの調査率
  double get percentColumnsLevel5 =>
      throw _privateConstructorUsedError; //損傷度Ⅴの調査柱本数のうち損傷度Ⅴの柱のパーセントの調査率のダメージレベル
  DamageLevel? get percentColumnsDamageLevel5 =>
      throw _privateConstructorUsedError;
  List<ImagePaths> get percentColumnsDamageLevel5Images =>
      throw _privateConstructorUsedError; //損傷度Ⅴに関する調査率
  double get surveyRateLevel5 => throw _privateConstructorUsedError; //損傷度Ⅳ
//損傷度Ⅳの柱総数
  int get totalColumnsLevel4 => throw _privateConstructorUsedError; //損傷度Ⅳの調査柱数
  int get surveyedColumnsLevel4 =>
      throw _privateConstructorUsedError; //損傷度Ⅳの調査柱本数のうち損傷度Ⅳの柱のパーセントの調査率
  double get percentColumnsLevel4 =>
      throw _privateConstructorUsedError; //損傷度Ⅳの調査柱本数のうち損傷度Ⅴの柱のパーセントの調査率のダメージレベル
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get percentColumnsDamageLevel4 =>
      throw _privateConstructorUsedError;
  List<ImagePaths> get percentColumnsDamageLevel4Images =>
      throw _privateConstructorUsedError; //損傷度Ⅳに関する調査率
  double get surveyRateLevel4 =>
      throw _privateConstructorUsedError; //落下危険物・転倒危険物に関する危険度
//窓枠・窓ガラス
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get windowFrame => throw _privateConstructorUsedError;
  List<ImagePaths> get windowFrameImages =>
      throw _privateConstructorUsedError; //外装材（モルタル・タイル・石貼り等）
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get exteriorMaterialMortarTileStone =>
      throw _privateConstructorUsedError;
  List<ImagePaths> get exteriorMaterialMortarTileStoneImages =>
      throw _privateConstructorUsedError; //外装材（ALC板・PC板・金属・ブロック等）
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get exteriorMaterialALCPCMetalBlock =>
      throw _privateConstructorUsedError;
  List<ImagePaths> get exteriorMaterialALCPCMetalBlockImages =>
      throw _privateConstructorUsedError; //看板・機器類
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get signageAndEquipment => throw _privateConstructorUsedError;
  List<ImagePaths> get signageAndEquipmentImages =>
      throw _privateConstructorUsedError; //屋外階段
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get outdoorStairs => throw _privateConstructorUsedError;
  List<ImagePaths> get outdoorStairsImages =>
      throw _privateConstructorUsedError; //その他
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get others => throw _privateConstructorUsedError;
  List<ImagePaths> get othersImages => throw _privateConstructorUsedError;
  String? get otherRemarks => throw _privateConstructorUsedError;
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallExteriorScore =>
      throw _privateConstructorUsedError; //判定(2)
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallStructuralScore2 =>
      throw _privateConstructorUsedError; //総合判定（調査番号2)
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallStructuralScore => throw _privateConstructorUsedError;
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallFallingObjectScore =>
      throw _privateConstructorUsedError;

  /// Serializes this RebarContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RebarContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RebarContentCopyWith<RebarContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RebarContentCopyWith<$Res> {
  factory $RebarContentCopyWith(
          RebarContent value, $Res Function(RebarContent) then) =
      _$RebarContentCopyWithImpl<$Res, RebarContent>;
  @useResult
  $Res call(
      {int exteriorInspectionScore,
      String? exteriorInspectionRemarks,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? hasSevereDamageMembers,
      List<ImagePaths> hasSevereDamageMembersImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? adjacentBuildingRisk,
      List<ImagePaths> adjacentBuildingRiskImages,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? groundFailureInclination,
      List<ImagePaths> groundFailureInclinationImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? unevenSettlement,
      List<ImagePaths> unevenSettlementImages,
      int inspectedFloorsForColumns,
      int totalColumnsLevel5,
      int surveyedColumnsLevel5,
      double percentColumnsLevel5,
      DamageLevel? percentColumnsDamageLevel5,
      List<ImagePaths> percentColumnsDamageLevel5Images,
      double surveyRateLevel5,
      int totalColumnsLevel4,
      int surveyedColumnsLevel4,
      double percentColumnsLevel4,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? percentColumnsDamageLevel4,
      List<ImagePaths> percentColumnsDamageLevel4Images,
      double surveyRateLevel4,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? windowFrame,
      List<ImagePaths> windowFrameImages,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? exteriorMaterialMortarTileStone,
      List<ImagePaths> exteriorMaterialMortarTileStoneImages,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? exteriorMaterialALCPCMetalBlock,
      List<ImagePaths> exteriorMaterialALCPCMetalBlockImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? signageAndEquipment,
      List<ImagePaths> signageAndEquipmentImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? outdoorStairs,
      List<ImagePaths> outdoorStairsImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? others,
      List<ImagePaths> othersImages,
      String? otherRemarks,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? overallExteriorScore,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? overallStructuralScore2,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? overallStructuralScore,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? overallFallingObjectScore});
}

/// @nodoc
class _$RebarContentCopyWithImpl<$Res, $Val extends RebarContent>
    implements $RebarContentCopyWith<$Res> {
  _$RebarContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RebarContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exteriorInspectionScore = null,
    Object? exteriorInspectionRemarks = freezed,
    Object? hasSevereDamageMembers = freezed,
    Object? hasSevereDamageMembersImages = null,
    Object? adjacentBuildingRisk = freezed,
    Object? adjacentBuildingRiskImages = null,
    Object? groundFailureInclination = freezed,
    Object? groundFailureInclinationImages = null,
    Object? unevenSettlement = freezed,
    Object? unevenSettlementImages = null,
    Object? inspectedFloorsForColumns = null,
    Object? totalColumnsLevel5 = null,
    Object? surveyedColumnsLevel5 = null,
    Object? percentColumnsLevel5 = null,
    Object? percentColumnsDamageLevel5 = freezed,
    Object? percentColumnsDamageLevel5Images = null,
    Object? surveyRateLevel5 = null,
    Object? totalColumnsLevel4 = null,
    Object? surveyedColumnsLevel4 = null,
    Object? percentColumnsLevel4 = null,
    Object? percentColumnsDamageLevel4 = freezed,
    Object? percentColumnsDamageLevel4Images = null,
    Object? surveyRateLevel4 = null,
    Object? windowFrame = freezed,
    Object? windowFrameImages = null,
    Object? exteriorMaterialMortarTileStone = freezed,
    Object? exteriorMaterialMortarTileStoneImages = null,
    Object? exteriorMaterialALCPCMetalBlock = freezed,
    Object? exteriorMaterialALCPCMetalBlockImages = null,
    Object? signageAndEquipment = freezed,
    Object? signageAndEquipmentImages = null,
    Object? outdoorStairs = freezed,
    Object? outdoorStairsImages = null,
    Object? others = freezed,
    Object? othersImages = null,
    Object? otherRemarks = freezed,
    Object? overallExteriorScore = freezed,
    Object? overallStructuralScore2 = freezed,
    Object? overallStructuralScore = freezed,
    Object? overallFallingObjectScore = freezed,
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
      hasSevereDamageMembers: freezed == hasSevereDamageMembers
          ? _value.hasSevereDamageMembers
          : hasSevereDamageMembers // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      hasSevereDamageMembersImages: null == hasSevereDamageMembersImages
          ? _value.hasSevereDamageMembersImages
          : hasSevereDamageMembersImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      adjacentBuildingRisk: freezed == adjacentBuildingRisk
          ? _value.adjacentBuildingRisk
          : adjacentBuildingRisk // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      adjacentBuildingRiskImages: null == adjacentBuildingRiskImages
          ? _value.adjacentBuildingRiskImages
          : adjacentBuildingRiskImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      groundFailureInclination: freezed == groundFailureInclination
          ? _value.groundFailureInclination
          : groundFailureInclination // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      groundFailureInclinationImages: null == groundFailureInclinationImages
          ? _value.groundFailureInclinationImages
          : groundFailureInclinationImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      unevenSettlement: freezed == unevenSettlement
          ? _value.unevenSettlement
          : unevenSettlement // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      unevenSettlementImages: null == unevenSettlementImages
          ? _value.unevenSettlementImages
          : unevenSettlementImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      inspectedFloorsForColumns: null == inspectedFloorsForColumns
          ? _value.inspectedFloorsForColumns
          : inspectedFloorsForColumns // ignore: cast_nullable_to_non_nullable
              as int,
      totalColumnsLevel5: null == totalColumnsLevel5
          ? _value.totalColumnsLevel5
          : totalColumnsLevel5 // ignore: cast_nullable_to_non_nullable
              as int,
      surveyedColumnsLevel5: null == surveyedColumnsLevel5
          ? _value.surveyedColumnsLevel5
          : surveyedColumnsLevel5 // ignore: cast_nullable_to_non_nullable
              as int,
      percentColumnsLevel5: null == percentColumnsLevel5
          ? _value.percentColumnsLevel5
          : percentColumnsLevel5 // ignore: cast_nullable_to_non_nullable
              as double,
      percentColumnsDamageLevel5: freezed == percentColumnsDamageLevel5
          ? _value.percentColumnsDamageLevel5
          : percentColumnsDamageLevel5 // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      percentColumnsDamageLevel5Images: null == percentColumnsDamageLevel5Images
          ? _value.percentColumnsDamageLevel5Images
          : percentColumnsDamageLevel5Images // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      surveyRateLevel5: null == surveyRateLevel5
          ? _value.surveyRateLevel5
          : surveyRateLevel5 // ignore: cast_nullable_to_non_nullable
              as double,
      totalColumnsLevel4: null == totalColumnsLevel4
          ? _value.totalColumnsLevel4
          : totalColumnsLevel4 // ignore: cast_nullable_to_non_nullable
              as int,
      surveyedColumnsLevel4: null == surveyedColumnsLevel4
          ? _value.surveyedColumnsLevel4
          : surveyedColumnsLevel4 // ignore: cast_nullable_to_non_nullable
              as int,
      percentColumnsLevel4: null == percentColumnsLevel4
          ? _value.percentColumnsLevel4
          : percentColumnsLevel4 // ignore: cast_nullable_to_non_nullable
              as double,
      percentColumnsDamageLevel4: freezed == percentColumnsDamageLevel4
          ? _value.percentColumnsDamageLevel4
          : percentColumnsDamageLevel4 // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      percentColumnsDamageLevel4Images: null == percentColumnsDamageLevel4Images
          ? _value.percentColumnsDamageLevel4Images
          : percentColumnsDamageLevel4Images // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      surveyRateLevel4: null == surveyRateLevel4
          ? _value.surveyRateLevel4
          : surveyRateLevel4 // ignore: cast_nullable_to_non_nullable
              as double,
      windowFrame: freezed == windowFrame
          ? _value.windowFrame
          : windowFrame // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      windowFrameImages: null == windowFrameImages
          ? _value.windowFrameImages
          : windowFrameImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorMaterialMortarTileStone: freezed ==
              exteriorMaterialMortarTileStone
          ? _value.exteriorMaterialMortarTileStone
          : exteriorMaterialMortarTileStone // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      exteriorMaterialMortarTileStoneImages: null ==
              exteriorMaterialMortarTileStoneImages
          ? _value.exteriorMaterialMortarTileStoneImages
          : exteriorMaterialMortarTileStoneImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorMaterialALCPCMetalBlock: freezed ==
              exteriorMaterialALCPCMetalBlock
          ? _value.exteriorMaterialALCPCMetalBlock
          : exteriorMaterialALCPCMetalBlock // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      exteriorMaterialALCPCMetalBlockImages: null ==
              exteriorMaterialALCPCMetalBlockImages
          ? _value.exteriorMaterialALCPCMetalBlockImages
          : exteriorMaterialALCPCMetalBlockImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      signageAndEquipment: freezed == signageAndEquipment
          ? _value.signageAndEquipment
          : signageAndEquipment // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      signageAndEquipmentImages: null == signageAndEquipmentImages
          ? _value.signageAndEquipmentImages
          : signageAndEquipmentImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      outdoorStairs: freezed == outdoorStairs
          ? _value.outdoorStairs
          : outdoorStairs // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      outdoorStairsImages: null == outdoorStairsImages
          ? _value.outdoorStairsImages
          : outdoorStairsImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      others: freezed == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      othersImages: null == othersImages
          ? _value.othersImages
          : othersImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      otherRemarks: freezed == otherRemarks
          ? _value.otherRemarks
          : otherRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      overallExteriorScore: freezed == overallExteriorScore
          ? _value.overallExteriorScore
          : overallExteriorScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      overallStructuralScore2: freezed == overallStructuralScore2
          ? _value.overallStructuralScore2
          : overallStructuralScore2 // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      overallStructuralScore: freezed == overallStructuralScore
          ? _value.overallStructuralScore
          : overallStructuralScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      overallFallingObjectScore: freezed == overallFallingObjectScore
          ? _value.overallFallingObjectScore
          : overallFallingObjectScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RebarContentImplCopyWith<$Res>
    implements $RebarContentCopyWith<$Res> {
  factory _$$RebarContentImplCopyWith(
          _$RebarContentImpl value, $Res Function(_$RebarContentImpl) then) =
      __$$RebarContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int exteriorInspectionScore,
      String? exteriorInspectionRemarks,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? hasSevereDamageMembers,
      List<ImagePaths> hasSevereDamageMembersImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? adjacentBuildingRisk,
      List<ImagePaths> adjacentBuildingRiskImages,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? groundFailureInclination,
      List<ImagePaths> groundFailureInclinationImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? unevenSettlement,
      List<ImagePaths> unevenSettlementImages,
      int inspectedFloorsForColumns,
      int totalColumnsLevel5,
      int surveyedColumnsLevel5,
      double percentColumnsLevel5,
      DamageLevel? percentColumnsDamageLevel5,
      List<ImagePaths> percentColumnsDamageLevel5Images,
      double surveyRateLevel5,
      int totalColumnsLevel4,
      int surveyedColumnsLevel4,
      double percentColumnsLevel4,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? percentColumnsDamageLevel4,
      List<ImagePaths> percentColumnsDamageLevel4Images,
      double surveyRateLevel4,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? windowFrame,
      List<ImagePaths> windowFrameImages,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? exteriorMaterialMortarTileStone,
      List<ImagePaths> exteriorMaterialMortarTileStoneImages,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? exteriorMaterialALCPCMetalBlock,
      List<ImagePaths> exteriorMaterialALCPCMetalBlockImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? signageAndEquipment,
      List<ImagePaths> signageAndEquipmentImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? outdoorStairs,
      List<ImagePaths> outdoorStairsImages,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? others,
      List<ImagePaths> othersImages,
      String? otherRemarks,
      @JsonKey(fromJson: damageLevelFromJson) DamageLevel? overallExteriorScore,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? overallStructuralScore2,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? overallStructuralScore,
      @JsonKey(fromJson: damageLevelFromJson)
      DamageLevel? overallFallingObjectScore});
}

/// @nodoc
class __$$RebarContentImplCopyWithImpl<$Res>
    extends _$RebarContentCopyWithImpl<$Res, _$RebarContentImpl>
    implements _$$RebarContentImplCopyWith<$Res> {
  __$$RebarContentImplCopyWithImpl(
      _$RebarContentImpl _value, $Res Function(_$RebarContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of RebarContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exteriorInspectionScore = null,
    Object? exteriorInspectionRemarks = freezed,
    Object? hasSevereDamageMembers = freezed,
    Object? hasSevereDamageMembersImages = null,
    Object? adjacentBuildingRisk = freezed,
    Object? adjacentBuildingRiskImages = null,
    Object? groundFailureInclination = freezed,
    Object? groundFailureInclinationImages = null,
    Object? unevenSettlement = freezed,
    Object? unevenSettlementImages = null,
    Object? inspectedFloorsForColumns = null,
    Object? totalColumnsLevel5 = null,
    Object? surveyedColumnsLevel5 = null,
    Object? percentColumnsLevel5 = null,
    Object? percentColumnsDamageLevel5 = freezed,
    Object? percentColumnsDamageLevel5Images = null,
    Object? surveyRateLevel5 = null,
    Object? totalColumnsLevel4 = null,
    Object? surveyedColumnsLevel4 = null,
    Object? percentColumnsLevel4 = null,
    Object? percentColumnsDamageLevel4 = freezed,
    Object? percentColumnsDamageLevel4Images = null,
    Object? surveyRateLevel4 = null,
    Object? windowFrame = freezed,
    Object? windowFrameImages = null,
    Object? exteriorMaterialMortarTileStone = freezed,
    Object? exteriorMaterialMortarTileStoneImages = null,
    Object? exteriorMaterialALCPCMetalBlock = freezed,
    Object? exteriorMaterialALCPCMetalBlockImages = null,
    Object? signageAndEquipment = freezed,
    Object? signageAndEquipmentImages = null,
    Object? outdoorStairs = freezed,
    Object? outdoorStairsImages = null,
    Object? others = freezed,
    Object? othersImages = null,
    Object? otherRemarks = freezed,
    Object? overallExteriorScore = freezed,
    Object? overallStructuralScore2 = freezed,
    Object? overallStructuralScore = freezed,
    Object? overallFallingObjectScore = freezed,
  }) {
    return _then(_$RebarContentImpl(
      exteriorInspectionScore: null == exteriorInspectionScore
          ? _value.exteriorInspectionScore
          : exteriorInspectionScore // ignore: cast_nullable_to_non_nullable
              as int,
      exteriorInspectionRemarks: freezed == exteriorInspectionRemarks
          ? _value.exteriorInspectionRemarks
          : exteriorInspectionRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSevereDamageMembers: freezed == hasSevereDamageMembers
          ? _value.hasSevereDamageMembers
          : hasSevereDamageMembers // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      hasSevereDamageMembersImages: null == hasSevereDamageMembersImages
          ? _value._hasSevereDamageMembersImages
          : hasSevereDamageMembersImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      adjacentBuildingRisk: freezed == adjacentBuildingRisk
          ? _value.adjacentBuildingRisk
          : adjacentBuildingRisk // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      adjacentBuildingRiskImages: null == adjacentBuildingRiskImages
          ? _value._adjacentBuildingRiskImages
          : adjacentBuildingRiskImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      groundFailureInclination: freezed == groundFailureInclination
          ? _value.groundFailureInclination
          : groundFailureInclination // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      groundFailureInclinationImages: null == groundFailureInclinationImages
          ? _value._groundFailureInclinationImages
          : groundFailureInclinationImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      unevenSettlement: freezed == unevenSettlement
          ? _value.unevenSettlement
          : unevenSettlement // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      unevenSettlementImages: null == unevenSettlementImages
          ? _value._unevenSettlementImages
          : unevenSettlementImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      inspectedFloorsForColumns: null == inspectedFloorsForColumns
          ? _value.inspectedFloorsForColumns
          : inspectedFloorsForColumns // ignore: cast_nullable_to_non_nullable
              as int,
      totalColumnsLevel5: null == totalColumnsLevel5
          ? _value.totalColumnsLevel5
          : totalColumnsLevel5 // ignore: cast_nullable_to_non_nullable
              as int,
      surveyedColumnsLevel5: null == surveyedColumnsLevel5
          ? _value.surveyedColumnsLevel5
          : surveyedColumnsLevel5 // ignore: cast_nullable_to_non_nullable
              as int,
      percentColumnsLevel5: null == percentColumnsLevel5
          ? _value.percentColumnsLevel5
          : percentColumnsLevel5 // ignore: cast_nullable_to_non_nullable
              as double,
      percentColumnsDamageLevel5: freezed == percentColumnsDamageLevel5
          ? _value.percentColumnsDamageLevel5
          : percentColumnsDamageLevel5 // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      percentColumnsDamageLevel5Images: null == percentColumnsDamageLevel5Images
          ? _value._percentColumnsDamageLevel5Images
          : percentColumnsDamageLevel5Images // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      surveyRateLevel5: null == surveyRateLevel5
          ? _value.surveyRateLevel5
          : surveyRateLevel5 // ignore: cast_nullable_to_non_nullable
              as double,
      totalColumnsLevel4: null == totalColumnsLevel4
          ? _value.totalColumnsLevel4
          : totalColumnsLevel4 // ignore: cast_nullable_to_non_nullable
              as int,
      surveyedColumnsLevel4: null == surveyedColumnsLevel4
          ? _value.surveyedColumnsLevel4
          : surveyedColumnsLevel4 // ignore: cast_nullable_to_non_nullable
              as int,
      percentColumnsLevel4: null == percentColumnsLevel4
          ? _value.percentColumnsLevel4
          : percentColumnsLevel4 // ignore: cast_nullable_to_non_nullable
              as double,
      percentColumnsDamageLevel4: freezed == percentColumnsDamageLevel4
          ? _value.percentColumnsDamageLevel4
          : percentColumnsDamageLevel4 // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      percentColumnsDamageLevel4Images: null == percentColumnsDamageLevel4Images
          ? _value._percentColumnsDamageLevel4Images
          : percentColumnsDamageLevel4Images // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      surveyRateLevel4: null == surveyRateLevel4
          ? _value.surveyRateLevel4
          : surveyRateLevel4 // ignore: cast_nullable_to_non_nullable
              as double,
      windowFrame: freezed == windowFrame
          ? _value.windowFrame
          : windowFrame // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      windowFrameImages: null == windowFrameImages
          ? _value._windowFrameImages
          : windowFrameImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorMaterialMortarTileStone: freezed ==
              exteriorMaterialMortarTileStone
          ? _value.exteriorMaterialMortarTileStone
          : exteriorMaterialMortarTileStone // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      exteriorMaterialMortarTileStoneImages: null ==
              exteriorMaterialMortarTileStoneImages
          ? _value._exteriorMaterialMortarTileStoneImages
          : exteriorMaterialMortarTileStoneImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      exteriorMaterialALCPCMetalBlock: freezed ==
              exteriorMaterialALCPCMetalBlock
          ? _value.exteriorMaterialALCPCMetalBlock
          : exteriorMaterialALCPCMetalBlock // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      exteriorMaterialALCPCMetalBlockImages: null ==
              exteriorMaterialALCPCMetalBlockImages
          ? _value._exteriorMaterialALCPCMetalBlockImages
          : exteriorMaterialALCPCMetalBlockImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      signageAndEquipment: freezed == signageAndEquipment
          ? _value.signageAndEquipment
          : signageAndEquipment // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      signageAndEquipmentImages: null == signageAndEquipmentImages
          ? _value._signageAndEquipmentImages
          : signageAndEquipmentImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      outdoorStairs: freezed == outdoorStairs
          ? _value.outdoorStairs
          : outdoorStairs // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      outdoorStairsImages: null == outdoorStairsImages
          ? _value._outdoorStairsImages
          : outdoorStairsImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      others: freezed == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      othersImages: null == othersImages
          ? _value._othersImages
          : othersImages // ignore: cast_nullable_to_non_nullable
              as List<ImagePaths>,
      otherRemarks: freezed == otherRemarks
          ? _value.otherRemarks
          : otherRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      overallExteriorScore: freezed == overallExteriorScore
          ? _value.overallExteriorScore
          : overallExteriorScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      overallStructuralScore2: freezed == overallStructuralScore2
          ? _value.overallStructuralScore2
          : overallStructuralScore2 // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      overallStructuralScore: freezed == overallStructuralScore
          ? _value.overallStructuralScore
          : overallStructuralScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
      overallFallingObjectScore: freezed == overallFallingObjectScore
          ? _value.overallFallingObjectScore
          : overallFallingObjectScore // ignore: cast_nullable_to_non_nullable
              as DamageLevel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RebarContentImpl implements _RebarContent {
  const _$RebarContentImpl(
      {required this.exteriorInspectionScore,
      this.exteriorInspectionRemarks,
      @JsonKey(fromJson: damageLevelFromJson)
      required this.hasSevereDamageMembers,
      final List<ImagePaths> hasSevereDamageMembersImages = const [],
      @JsonKey(fromJson: damageLevelFromJson)
      required this.adjacentBuildingRisk,
      final List<ImagePaths> adjacentBuildingRiskImages = const [],
      @JsonKey(fromJson: damageLevelFromJson)
      required this.groundFailureInclination,
      final List<ImagePaths> groundFailureInclinationImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.unevenSettlement,
      final List<ImagePaths> unevenSettlementImages = const [],
      required this.inspectedFloorsForColumns,
      required this.totalColumnsLevel5,
      required this.surveyedColumnsLevel5,
      required this.percentColumnsLevel5,
      required this.percentColumnsDamageLevel5,
      final List<ImagePaths> percentColumnsDamageLevel5Images = const [],
      required this.surveyRateLevel5,
      required this.totalColumnsLevel4,
      required this.surveyedColumnsLevel4,
      required this.percentColumnsLevel4,
      @JsonKey(fromJson: damageLevelFromJson)
      required this.percentColumnsDamageLevel4,
      final List<ImagePaths> percentColumnsDamageLevel4Images = const [],
      required this.surveyRateLevel4,
      @JsonKey(fromJson: damageLevelFromJson) required this.windowFrame,
      final List<ImagePaths> windowFrameImages = const [],
      @JsonKey(fromJson: damageLevelFromJson)
      required this.exteriorMaterialMortarTileStone,
      final List<ImagePaths> exteriorMaterialMortarTileStoneImages = const [],
      @JsonKey(fromJson: damageLevelFromJson)
      required this.exteriorMaterialALCPCMetalBlock,
      final List<ImagePaths> exteriorMaterialALCPCMetalBlockImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.signageAndEquipment,
      final List<ImagePaths> signageAndEquipmentImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.outdoorStairs,
      final List<ImagePaths> outdoorStairsImages = const [],
      @JsonKey(fromJson: damageLevelFromJson) required this.others,
      final List<ImagePaths> othersImages = const [],
      this.otherRemarks,
      @JsonKey(fromJson: damageLevelFromJson)
      required this.overallExteriorScore,
      @JsonKey(fromJson: damageLevelFromJson)
      required this.overallStructuralScore2,
      @JsonKey(fromJson: damageLevelFromJson)
      required this.overallStructuralScore,
      @JsonKey(fromJson: damageLevelFromJson)
      required this.overallFallingObjectScore})
      : _hasSevereDamageMembersImages = hasSevereDamageMembersImages,
        _adjacentBuildingRiskImages = adjacentBuildingRiskImages,
        _groundFailureInclinationImages = groundFailureInclinationImages,
        _unevenSettlementImages = unevenSettlementImages,
        _percentColumnsDamageLevel5Images = percentColumnsDamageLevel5Images,
        _percentColumnsDamageLevel4Images = percentColumnsDamageLevel4Images,
        _windowFrameImages = windowFrameImages,
        _exteriorMaterialMortarTileStoneImages =
            exteriorMaterialMortarTileStoneImages,
        _exteriorMaterialALCPCMetalBlockImages =
            exteriorMaterialALCPCMetalBlockImages,
        _signageAndEquipmentImages = signageAndEquipmentImages,
        _outdoorStairsImages = outdoorStairsImages,
        _othersImages = othersImages;

  factory _$RebarContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$RebarContentImplFromJson(json);

//外観調査(一見して危険と判断される)
  @override
  final int exteriorInspectionScore;
  @override
  final String? exteriorInspectionRemarks;
//損傷度Ⅲ以上の損傷部材の有無
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? hasSevereDamageMembers;
  final List<ImagePaths> _hasSevereDamageMembersImages;
  @override
  @JsonKey()
  List<ImagePaths> get hasSevereDamageMembersImages {
    if (_hasSevereDamageMembersImages is EqualUnmodifiableListView)
      return _hasSevereDamageMembersImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hasSevereDamageMembersImages);
  }

//隣接建築物・周辺地盤の破壊による危険
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? adjacentBuildingRisk;
  final List<ImagePaths> _adjacentBuildingRiskImages;
  @override
  @JsonKey()
  List<ImagePaths> get adjacentBuildingRiskImages {
    if (_adjacentBuildingRiskImages is EqualUnmodifiableListView)
      return _adjacentBuildingRiskImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adjacentBuildingRiskImages);
  }

//地盤破壊による建築物全体の沈下
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? groundFailureInclination;
  final List<ImagePaths> _groundFailureInclinationImages;
  @override
  @JsonKey()
  List<ImagePaths> get groundFailureInclinationImages {
    if (_groundFailureInclinationImages is EqualUnmodifiableListView)
      return _groundFailureInclinationImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groundFailureInclinationImages);
  }

//不同沈下による建築物全体の傾斜
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? unevenSettlement;
  final List<ImagePaths> _unevenSettlementImages;
  @override
  @JsonKey()
  List<ImagePaths> get unevenSettlementImages {
    if (_unevenSettlementImages is EqualUnmodifiableListView)
      return _unevenSettlementImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unevenSettlementImages);
  }

//柱の被害の調査階数
  @override
  final int inspectedFloorsForColumns;
//損傷度Ⅴ
//損傷度Ⅴの柱総数
  @override
  final int totalColumnsLevel5;
//損傷度Ⅴの調査柱数
  @override
  final int surveyedColumnsLevel5;
//損傷度Ⅴの調査柱本数のうち損傷度Ⅴの柱のパーセントの調査率
  @override
  final double percentColumnsLevel5;
//損傷度Ⅴの調査柱本数のうち損傷度Ⅴの柱のパーセントの調査率のダメージレベル
  @override
  final DamageLevel? percentColumnsDamageLevel5;
  final List<ImagePaths> _percentColumnsDamageLevel5Images;
  @override
  @JsonKey()
  List<ImagePaths> get percentColumnsDamageLevel5Images {
    if (_percentColumnsDamageLevel5Images is EqualUnmodifiableListView)
      return _percentColumnsDamageLevel5Images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_percentColumnsDamageLevel5Images);
  }

//損傷度Ⅴに関する調査率
  @override
  final double surveyRateLevel5;
//損傷度Ⅳ
//損傷度Ⅳの柱総数
  @override
  final int totalColumnsLevel4;
//損傷度Ⅳの調査柱数
  @override
  final int surveyedColumnsLevel4;
//損傷度Ⅳの調査柱本数のうち損傷度Ⅳの柱のパーセントの調査率
  @override
  final double percentColumnsLevel4;
//損傷度Ⅳの調査柱本数のうち損傷度Ⅴの柱のパーセントの調査率のダメージレベル
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? percentColumnsDamageLevel4;
  final List<ImagePaths> _percentColumnsDamageLevel4Images;
  @override
  @JsonKey()
  List<ImagePaths> get percentColumnsDamageLevel4Images {
    if (_percentColumnsDamageLevel4Images is EqualUnmodifiableListView)
      return _percentColumnsDamageLevel4Images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_percentColumnsDamageLevel4Images);
  }

//損傷度Ⅳに関する調査率
  @override
  final double surveyRateLevel4;
//落下危険物・転倒危険物に関する危険度
//窓枠・窓ガラス
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? windowFrame;
  final List<ImagePaths> _windowFrameImages;
  @override
  @JsonKey()
  List<ImagePaths> get windowFrameImages {
    if (_windowFrameImages is EqualUnmodifiableListView)
      return _windowFrameImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windowFrameImages);
  }

//外装材（モルタル・タイル・石貼り等）
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? exteriorMaterialMortarTileStone;
  final List<ImagePaths> _exteriorMaterialMortarTileStoneImages;
  @override
  @JsonKey()
  List<ImagePaths> get exteriorMaterialMortarTileStoneImages {
    if (_exteriorMaterialMortarTileStoneImages is EqualUnmodifiableListView)
      return _exteriorMaterialMortarTileStoneImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exteriorMaterialMortarTileStoneImages);
  }

//外装材（ALC板・PC板・金属・ブロック等）
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? exteriorMaterialALCPCMetalBlock;
  final List<ImagePaths> _exteriorMaterialALCPCMetalBlockImages;
  @override
  @JsonKey()
  List<ImagePaths> get exteriorMaterialALCPCMetalBlockImages {
    if (_exteriorMaterialALCPCMetalBlockImages is EqualUnmodifiableListView)
      return _exteriorMaterialALCPCMetalBlockImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exteriorMaterialALCPCMetalBlockImages);
  }

//看板・機器類
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? signageAndEquipment;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? outdoorStairs;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? others;
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
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? overallExteriorScore;
//判定(2)
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? overallStructuralScore2;
//総合判定（調査番号2)
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? overallStructuralScore;
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  final DamageLevel? overallFallingObjectScore;

  @override
  String toString() {
    return 'RebarContent(exteriorInspectionScore: $exteriorInspectionScore, exteriorInspectionRemarks: $exteriorInspectionRemarks, hasSevereDamageMembers: $hasSevereDamageMembers, hasSevereDamageMembersImages: $hasSevereDamageMembersImages, adjacentBuildingRisk: $adjacentBuildingRisk, adjacentBuildingRiskImages: $adjacentBuildingRiskImages, groundFailureInclination: $groundFailureInclination, groundFailureInclinationImages: $groundFailureInclinationImages, unevenSettlement: $unevenSettlement, unevenSettlementImages: $unevenSettlementImages, inspectedFloorsForColumns: $inspectedFloorsForColumns, totalColumnsLevel5: $totalColumnsLevel5, surveyedColumnsLevel5: $surveyedColumnsLevel5, percentColumnsLevel5: $percentColumnsLevel5, percentColumnsDamageLevel5: $percentColumnsDamageLevel5, percentColumnsDamageLevel5Images: $percentColumnsDamageLevel5Images, surveyRateLevel5: $surveyRateLevel5, totalColumnsLevel4: $totalColumnsLevel4, surveyedColumnsLevel4: $surveyedColumnsLevel4, percentColumnsLevel4: $percentColumnsLevel4, percentColumnsDamageLevel4: $percentColumnsDamageLevel4, percentColumnsDamageLevel4Images: $percentColumnsDamageLevel4Images, surveyRateLevel4: $surveyRateLevel4, windowFrame: $windowFrame, windowFrameImages: $windowFrameImages, exteriorMaterialMortarTileStone: $exteriorMaterialMortarTileStone, exteriorMaterialMortarTileStoneImages: $exteriorMaterialMortarTileStoneImages, exteriorMaterialALCPCMetalBlock: $exteriorMaterialALCPCMetalBlock, exteriorMaterialALCPCMetalBlockImages: $exteriorMaterialALCPCMetalBlockImages, signageAndEquipment: $signageAndEquipment, signageAndEquipmentImages: $signageAndEquipmentImages, outdoorStairs: $outdoorStairs, outdoorStairsImages: $outdoorStairsImages, others: $others, othersImages: $othersImages, otherRemarks: $otherRemarks, overallExteriorScore: $overallExteriorScore, overallStructuralScore2: $overallStructuralScore2, overallStructuralScore: $overallStructuralScore, overallFallingObjectScore: $overallFallingObjectScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RebarContentImpl &&
            (identical(other.exteriorInspectionScore, exteriorInspectionScore) ||
                other.exteriorInspectionScore == exteriorInspectionScore) &&
            (identical(other.exteriorInspectionRemarks, exteriorInspectionRemarks) ||
                other.exteriorInspectionRemarks == exteriorInspectionRemarks) &&
            (identical(other.hasSevereDamageMembers, hasSevereDamageMembers) ||
                other.hasSevereDamageMembers == hasSevereDamageMembers) &&
            const DeepCollectionEquality().equals(
                other._hasSevereDamageMembersImages,
                _hasSevereDamageMembersImages) &&
            (identical(other.adjacentBuildingRisk, adjacentBuildingRisk) ||
                other.adjacentBuildingRisk == adjacentBuildingRisk) &&
            const DeepCollectionEquality().equals(
                other._adjacentBuildingRiskImages,
                _adjacentBuildingRiskImages) &&
            (identical(other.groundFailureInclination, groundFailureInclination) ||
                other.groundFailureInclination == groundFailureInclination) &&
            const DeepCollectionEquality().equals(
                other._groundFailureInclinationImages,
                _groundFailureInclinationImages) &&
            (identical(other.unevenSettlement, unevenSettlement) ||
                other.unevenSettlement == unevenSettlement) &&
            const DeepCollectionEquality().equals(
                other._unevenSettlementImages, _unevenSettlementImages) &&
            (identical(other.inspectedFloorsForColumns, inspectedFloorsForColumns) ||
                other.inspectedFloorsForColumns == inspectedFloorsForColumns) &&
            (identical(other.totalColumnsLevel5, totalColumnsLevel5) ||
                other.totalColumnsLevel5 == totalColumnsLevel5) &&
            (identical(other.surveyedColumnsLevel5, surveyedColumnsLevel5) ||
                other.surveyedColumnsLevel5 == surveyedColumnsLevel5) &&
            (identical(other.percentColumnsLevel5, percentColumnsLevel5) ||
                other.percentColumnsLevel5 == percentColumnsLevel5) &&
            (identical(other.percentColumnsDamageLevel5, percentColumnsDamageLevel5) ||
                other.percentColumnsDamageLevel5 ==
                    percentColumnsDamageLevel5) &&
            const DeepCollectionEquality().equals(
                other._percentColumnsDamageLevel5Images,
                _percentColumnsDamageLevel5Images) &&
            (identical(other.surveyRateLevel5, surveyRateLevel5) ||
                other.surveyRateLevel5 == surveyRateLevel5) &&
            (identical(other.totalColumnsLevel4, totalColumnsLevel4) ||
                other.totalColumnsLevel4 == totalColumnsLevel4) &&
            (identical(other.surveyedColumnsLevel4, surveyedColumnsLevel4) || other.surveyedColumnsLevel4 == surveyedColumnsLevel4) &&
            (identical(other.percentColumnsLevel4, percentColumnsLevel4) || other.percentColumnsLevel4 == percentColumnsLevel4) &&
            (identical(other.percentColumnsDamageLevel4, percentColumnsDamageLevel4) || other.percentColumnsDamageLevel4 == percentColumnsDamageLevel4) &&
            const DeepCollectionEquality().equals(other._percentColumnsDamageLevel4Images, _percentColumnsDamageLevel4Images) &&
            (identical(other.surveyRateLevel4, surveyRateLevel4) || other.surveyRateLevel4 == surveyRateLevel4) &&
            (identical(other.windowFrame, windowFrame) || other.windowFrame == windowFrame) &&
            const DeepCollectionEquality().equals(other._windowFrameImages, _windowFrameImages) &&
            (identical(other.exteriorMaterialMortarTileStone, exteriorMaterialMortarTileStone) || other.exteriorMaterialMortarTileStone == exteriorMaterialMortarTileStone) &&
            const DeepCollectionEquality().equals(other._exteriorMaterialMortarTileStoneImages, _exteriorMaterialMortarTileStoneImages) &&
            (identical(other.exteriorMaterialALCPCMetalBlock, exteriorMaterialALCPCMetalBlock) || other.exteriorMaterialALCPCMetalBlock == exteriorMaterialALCPCMetalBlock) &&
            const DeepCollectionEquality().equals(other._exteriorMaterialALCPCMetalBlockImages, _exteriorMaterialALCPCMetalBlockImages) &&
            (identical(other.signageAndEquipment, signageAndEquipment) || other.signageAndEquipment == signageAndEquipment) &&
            const DeepCollectionEquality().equals(other._signageAndEquipmentImages, _signageAndEquipmentImages) &&
            (identical(other.outdoorStairs, outdoorStairs) || other.outdoorStairs == outdoorStairs) &&
            const DeepCollectionEquality().equals(other._outdoorStairsImages, _outdoorStairsImages) &&
            (identical(other.others, others) || other.others == others) &&
            const DeepCollectionEquality().equals(other._othersImages, _othersImages) &&
            (identical(other.otherRemarks, otherRemarks) || other.otherRemarks == otherRemarks) &&
            (identical(other.overallExteriorScore, overallExteriorScore) || other.overallExteriorScore == overallExteriorScore) &&
            (identical(other.overallStructuralScore2, overallStructuralScore2) || other.overallStructuralScore2 == overallStructuralScore2) &&
            (identical(other.overallStructuralScore, overallStructuralScore) || other.overallStructuralScore == overallStructuralScore) &&
            (identical(other.overallFallingObjectScore, overallFallingObjectScore) || other.overallFallingObjectScore == overallFallingObjectScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        exteriorInspectionScore,
        exteriorInspectionRemarks,
        hasSevereDamageMembers,
        const DeepCollectionEquality().hash(_hasSevereDamageMembersImages),
        adjacentBuildingRisk,
        const DeepCollectionEquality().hash(_adjacentBuildingRiskImages),
        groundFailureInclination,
        const DeepCollectionEquality().hash(_groundFailureInclinationImages),
        unevenSettlement,
        const DeepCollectionEquality().hash(_unevenSettlementImages),
        inspectedFloorsForColumns,
        totalColumnsLevel5,
        surveyedColumnsLevel5,
        percentColumnsLevel5,
        percentColumnsDamageLevel5,
        const DeepCollectionEquality().hash(_percentColumnsDamageLevel5Images),
        surveyRateLevel5,
        totalColumnsLevel4,
        surveyedColumnsLevel4,
        percentColumnsLevel4,
        percentColumnsDamageLevel4,
        const DeepCollectionEquality().hash(_percentColumnsDamageLevel4Images),
        surveyRateLevel4,
        windowFrame,
        const DeepCollectionEquality().hash(_windowFrameImages),
        exteriorMaterialMortarTileStone,
        const DeepCollectionEquality()
            .hash(_exteriorMaterialMortarTileStoneImages),
        exteriorMaterialALCPCMetalBlock,
        const DeepCollectionEquality()
            .hash(_exteriorMaterialALCPCMetalBlockImages),
        signageAndEquipment,
        const DeepCollectionEquality().hash(_signageAndEquipmentImages),
        outdoorStairs,
        const DeepCollectionEquality().hash(_outdoorStairsImages),
        others,
        const DeepCollectionEquality().hash(_othersImages),
        otherRemarks,
        overallExteriorScore,
        overallStructuralScore2,
        overallStructuralScore,
        overallFallingObjectScore
      ]);

  /// Create a copy of RebarContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RebarContentImplCopyWith<_$RebarContentImpl> get copyWith =>
      __$$RebarContentImplCopyWithImpl<_$RebarContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RebarContentImplToJson(
      this,
    );
  }
}

abstract class _RebarContent implements RebarContent {
  const factory _RebarContent(
          {required final int exteriorInspectionScore,
          final String? exteriorInspectionRemarks,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? hasSevereDamageMembers,
          final List<ImagePaths> hasSevereDamageMembersImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? adjacentBuildingRisk,
          final List<ImagePaths> adjacentBuildingRiskImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? groundFailureInclination,
          final List<ImagePaths> groundFailureInclinationImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? unevenSettlement,
          final List<ImagePaths> unevenSettlementImages,
          required final int inspectedFloorsForColumns,
          required final int totalColumnsLevel5,
          required final int surveyedColumnsLevel5,
          required final double percentColumnsLevel5,
          required final DamageLevel? percentColumnsDamageLevel5,
          final List<ImagePaths> percentColumnsDamageLevel5Images,
          required final double surveyRateLevel5,
          required final int totalColumnsLevel4,
          required final int surveyedColumnsLevel4,
          required final double percentColumnsLevel4,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? percentColumnsDamageLevel4,
          final List<ImagePaths> percentColumnsDamageLevel4Images,
          required final double surveyRateLevel4,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? windowFrame,
          final List<ImagePaths> windowFrameImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? exteriorMaterialMortarTileStone,
          final List<ImagePaths> exteriorMaterialMortarTileStoneImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? exteriorMaterialALCPCMetalBlock,
          final List<ImagePaths> exteriorMaterialALCPCMetalBlockImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? signageAndEquipment,
          final List<ImagePaths> signageAndEquipmentImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? outdoorStairs,
          final List<ImagePaths> outdoorStairsImages,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? others,
          final List<ImagePaths> othersImages,
          final String? otherRemarks,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? overallExteriorScore,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? overallStructuralScore2,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? overallStructuralScore,
          @JsonKey(fromJson: damageLevelFromJson)
          required final DamageLevel? overallFallingObjectScore}) =
      _$RebarContentImpl;

  factory _RebarContent.fromJson(Map<String, dynamic> json) =
      _$RebarContentImpl.fromJson;

//外観調査(一見して危険と判断される)
  @override
  int get exteriorInspectionScore;
  @override
  String? get exteriorInspectionRemarks; //損傷度Ⅲ以上の損傷部材の有無
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get hasSevereDamageMembers;
  @override
  List<ImagePaths> get hasSevereDamageMembersImages; //隣接建築物・周辺地盤の破壊による危険
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get adjacentBuildingRisk;
  @override
  List<ImagePaths> get adjacentBuildingRiskImages; //地盤破壊による建築物全体の沈下
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get groundFailureInclination;
  @override
  List<ImagePaths> get groundFailureInclinationImages; //不同沈下による建築物全体の傾斜
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get unevenSettlement;
  @override
  List<ImagePaths> get unevenSettlementImages; //柱の被害の調査階数
  @override
  int get inspectedFloorsForColumns; //損傷度Ⅴ
//損傷度Ⅴの柱総数
  @override
  int get totalColumnsLevel5; //損傷度Ⅴの調査柱数
  @override
  int get surveyedColumnsLevel5; //損傷度Ⅴの調査柱本数のうち損傷度Ⅴの柱のパーセントの調査率
  @override
  double get percentColumnsLevel5; //損傷度Ⅴの調査柱本数のうち損傷度Ⅴの柱のパーセントの調査率のダメージレベル
  @override
  DamageLevel? get percentColumnsDamageLevel5;
  @override
  List<ImagePaths> get percentColumnsDamageLevel5Images; //損傷度Ⅴに関する調査率
  @override
  double get surveyRateLevel5; //損傷度Ⅳ
//損傷度Ⅳの柱総数
  @override
  int get totalColumnsLevel4; //損傷度Ⅳの調査柱数
  @override
  int get surveyedColumnsLevel4; //損傷度Ⅳの調査柱本数のうち損傷度Ⅳの柱のパーセントの調査率
  @override
  double get percentColumnsLevel4; //損傷度Ⅳの調査柱本数のうち損傷度Ⅴの柱のパーセントの調査率のダメージレベル
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get percentColumnsDamageLevel4;
  @override
  List<ImagePaths> get percentColumnsDamageLevel4Images; //損傷度Ⅳに関する調査率
  @override
  double get surveyRateLevel4; //落下危険物・転倒危険物に関する危険度
//窓枠・窓ガラス
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get windowFrame;
  @override
  List<ImagePaths> get windowFrameImages; //外装材（モルタル・タイル・石貼り等）
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get exteriorMaterialMortarTileStone;
  @override
  List<ImagePaths>
      get exteriorMaterialMortarTileStoneImages; //外装材（ALC板・PC板・金属・ブロック等）
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get exteriorMaterialALCPCMetalBlock;
  @override
  List<ImagePaths> get exteriorMaterialALCPCMetalBlockImages; //看板・機器類
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get signageAndEquipment;
  @override
  List<ImagePaths> get signageAndEquipmentImages; //屋外階段
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get outdoorStairs;
  @override
  List<ImagePaths> get outdoorStairsImages; //その他
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get others;
  @override
  List<ImagePaths> get othersImages;
  @override
  String? get otherRemarks;
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallExteriorScore; //判定(2)
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallStructuralScore2; //総合判定（調査番号2)
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallStructuralScore;
  @override
  @JsonKey(fromJson: damageLevelFromJson)
  DamageLevel? get overallFallingObjectScore;

  /// Create a copy of RebarContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RebarContentImplCopyWith<_$RebarContentImpl> get copyWith =>
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

RebarRecord _$RebarRecordFromJson(Map<String, dynamic> json) {
  return _RebarRecord.fromJson(json);
}

/// @nodoc
mixin _$RebarRecord {
  InvestigationUnit get unit => throw _privateConstructorUsedError;
  BuildingOverview get overview => throw _privateConstructorUsedError;
  RebarContent get content => throw _privateConstructorUsedError;
  OverallScore get overallScore => throw _privateConstructorUsedError;

  /// Serializes this RebarRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RebarRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RebarRecordCopyWith<RebarRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RebarRecordCopyWith<$Res> {
  factory $RebarRecordCopyWith(
          RebarRecord value, $Res Function(RebarRecord) then) =
      _$RebarRecordCopyWithImpl<$Res, RebarRecord>;
  @useResult
  $Res call(
      {InvestigationUnit unit,
      BuildingOverview overview,
      RebarContent content,
      OverallScore overallScore});

  $InvestigationUnitCopyWith<$Res> get unit;
  $BuildingOverviewCopyWith<$Res> get overview;
  $RebarContentCopyWith<$Res> get content;
}

/// @nodoc
class _$RebarRecordCopyWithImpl<$Res, $Val extends RebarRecord>
    implements $RebarRecordCopyWith<$Res> {
  _$RebarRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RebarRecord
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
              as RebarContent,
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as OverallScore,
    ) as $Val);
  }

  /// Create a copy of RebarRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvestigationUnitCopyWith<$Res> get unit {
    return $InvestigationUnitCopyWith<$Res>(_value.unit, (value) {
      return _then(_value.copyWith(unit: value) as $Val);
    });
  }

  /// Create a copy of RebarRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BuildingOverviewCopyWith<$Res> get overview {
    return $BuildingOverviewCopyWith<$Res>(_value.overview, (value) {
      return _then(_value.copyWith(overview: value) as $Val);
    });
  }

  /// Create a copy of RebarRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RebarContentCopyWith<$Res> get content {
    return $RebarContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RebarRecordImplCopyWith<$Res>
    implements $RebarRecordCopyWith<$Res> {
  factory _$$RebarRecordImplCopyWith(
          _$RebarRecordImpl value, $Res Function(_$RebarRecordImpl) then) =
      __$$RebarRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InvestigationUnit unit,
      BuildingOverview overview,
      RebarContent content,
      OverallScore overallScore});

  @override
  $InvestigationUnitCopyWith<$Res> get unit;
  @override
  $BuildingOverviewCopyWith<$Res> get overview;
  @override
  $RebarContentCopyWith<$Res> get content;
}

/// @nodoc
class __$$RebarRecordImplCopyWithImpl<$Res>
    extends _$RebarRecordCopyWithImpl<$Res, _$RebarRecordImpl>
    implements _$$RebarRecordImplCopyWith<$Res> {
  __$$RebarRecordImplCopyWithImpl(
      _$RebarRecordImpl _value, $Res Function(_$RebarRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of RebarRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? overview = null,
    Object? content = null,
    Object? overallScore = null,
  }) {
    return _then(_$RebarRecordImpl(
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
              as RebarContent,
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as OverallScore,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RebarRecordImpl implements _RebarRecord {
  const _$RebarRecordImpl(
      {required this.unit,
      required this.overview,
      required this.content,
      required this.overallScore});

  factory _$RebarRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$RebarRecordImplFromJson(json);

  @override
  final InvestigationUnit unit;
  @override
  final BuildingOverview overview;
  @override
  final RebarContent content;
  @override
  final OverallScore overallScore;

  @override
  String toString() {
    return 'RebarRecord(unit: $unit, overview: $overview, content: $content, overallScore: $overallScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RebarRecordImpl &&
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

  /// Create a copy of RebarRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RebarRecordImplCopyWith<_$RebarRecordImpl> get copyWith =>
      __$$RebarRecordImplCopyWithImpl<_$RebarRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RebarRecordImplToJson(
      this,
    );
  }
}

abstract class _RebarRecord implements RebarRecord {
  const factory _RebarRecord(
      {required final InvestigationUnit unit,
      required final BuildingOverview overview,
      required final RebarContent content,
      required final OverallScore overallScore}) = _$RebarRecordImpl;

  factory _RebarRecord.fromJson(Map<String, dynamic> json) =
      _$RebarRecordImpl.fromJson;

  @override
  InvestigationUnit get unit;
  @override
  BuildingOverview get overview;
  @override
  RebarContent get content;
  @override
  OverallScore get overallScore;

  /// Create a copy of RebarRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RebarRecordImplCopyWith<_$RebarRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
