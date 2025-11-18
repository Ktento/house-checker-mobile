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

InvestigationContent _$InvestigationContentFromJson(Map<String, dynamic> json) {
  return _InvestigationContent.fromJson(json);
}

/// @nodoc
mixin _$InvestigationContent {
  int get exteriorInspectionScore => throw _privateConstructorUsedError;
  String? get exteriorInspectionRemarks => throw _privateConstructorUsedError;
  DamageLevel get adjacentBuildingRisk => throw _privateConstructorUsedError;
  DamageLevel get unevenSettlement => throw _privateConstructorUsedError;
  DamageLevel get foundationDamage => throw _privateConstructorUsedError;
  DamageLevel get firstFloorTilt => throw _privateConstructorUsedError;
  DamageLevel get wallDamage => throw _privateConstructorUsedError;
  DamageLevel get corrosionOrTermite => throw _privateConstructorUsedError;
  DamageLevel get roofTile => throw _privateConstructorUsedError;
  DamageLevel get windowFrame => throw _privateConstructorUsedError;
  DamageLevel get exteriorWet => throw _privateConstructorUsedError;
  DamageLevel get exteriorDry => throw _privateConstructorUsedError;
  DamageLevel get signageAndEquipment => throw _privateConstructorUsedError;
  DamageLevel get outdoorStairs => throw _privateConstructorUsedError;
  DamageLevel get others => throw _privateConstructorUsedError;
  String? get otherRemarks => throw _privateConstructorUsedError;
  String get overallExteriorScore => throw _privateConstructorUsedError;
  DamageLevel get overallStructuralScore => throw _privateConstructorUsedError;
  DamageLevel get overallFallingObjectScore =>
      throw _privateConstructorUsedError;

  /// Serializes this InvestigationContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvestigationContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvestigationContentCopyWith<InvestigationContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestigationContentCopyWith<$Res> {
  factory $InvestigationContentCopyWith(InvestigationContent value,
          $Res Function(InvestigationContent) then) =
      _$InvestigationContentCopyWithImpl<$Res, InvestigationContent>;
  @useResult
  $Res call(
      {int exteriorInspectionScore,
      String? exteriorInspectionRemarks,
      DamageLevel adjacentBuildingRisk,
      DamageLevel unevenSettlement,
      DamageLevel foundationDamage,
      DamageLevel firstFloorTilt,
      DamageLevel wallDamage,
      DamageLevel corrosionOrTermite,
      DamageLevel roofTile,
      DamageLevel windowFrame,
      DamageLevel exteriorWet,
      DamageLevel exteriorDry,
      DamageLevel signageAndEquipment,
      DamageLevel outdoorStairs,
      DamageLevel others,
      String? otherRemarks,
      String overallExteriorScore,
      DamageLevel overallStructuralScore,
      DamageLevel overallFallingObjectScore});
}

/// @nodoc
class _$InvestigationContentCopyWithImpl<$Res,
        $Val extends InvestigationContent>
    implements $InvestigationContentCopyWith<$Res> {
  _$InvestigationContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvestigationContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exteriorInspectionScore = null,
    Object? exteriorInspectionRemarks = freezed,
    Object? adjacentBuildingRisk = null,
    Object? unevenSettlement = null,
    Object? foundationDamage = null,
    Object? firstFloorTilt = null,
    Object? wallDamage = null,
    Object? corrosionOrTermite = null,
    Object? roofTile = null,
    Object? windowFrame = null,
    Object? exteriorWet = null,
    Object? exteriorDry = null,
    Object? signageAndEquipment = null,
    Object? outdoorStairs = null,
    Object? others = null,
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
      unevenSettlement: null == unevenSettlement
          ? _value.unevenSettlement
          : unevenSettlement // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      foundationDamage: null == foundationDamage
          ? _value.foundationDamage
          : foundationDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      firstFloorTilt: null == firstFloorTilt
          ? _value.firstFloorTilt
          : firstFloorTilt // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      wallDamage: null == wallDamage
          ? _value.wallDamage
          : wallDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      corrosionOrTermite: null == corrosionOrTermite
          ? _value.corrosionOrTermite
          : corrosionOrTermite // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      roofTile: null == roofTile
          ? _value.roofTile
          : roofTile // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      windowFrame: null == windowFrame
          ? _value.windowFrame
          : windowFrame // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      exteriorWet: null == exteriorWet
          ? _value.exteriorWet
          : exteriorWet // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      exteriorDry: null == exteriorDry
          ? _value.exteriorDry
          : exteriorDry // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      signageAndEquipment: null == signageAndEquipment
          ? _value.signageAndEquipment
          : signageAndEquipment // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      outdoorStairs: null == outdoorStairs
          ? _value.outdoorStairs
          : outdoorStairs // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
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
abstract class _$$InvestigationContentImplCopyWith<$Res>
    implements $InvestigationContentCopyWith<$Res> {
  factory _$$InvestigationContentImplCopyWith(_$InvestigationContentImpl value,
          $Res Function(_$InvestigationContentImpl) then) =
      __$$InvestigationContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int exteriorInspectionScore,
      String? exteriorInspectionRemarks,
      DamageLevel adjacentBuildingRisk,
      DamageLevel unevenSettlement,
      DamageLevel foundationDamage,
      DamageLevel firstFloorTilt,
      DamageLevel wallDamage,
      DamageLevel corrosionOrTermite,
      DamageLevel roofTile,
      DamageLevel windowFrame,
      DamageLevel exteriorWet,
      DamageLevel exteriorDry,
      DamageLevel signageAndEquipment,
      DamageLevel outdoorStairs,
      DamageLevel others,
      String? otherRemarks,
      String overallExteriorScore,
      DamageLevel overallStructuralScore,
      DamageLevel overallFallingObjectScore});
}

/// @nodoc
class __$$InvestigationContentImplCopyWithImpl<$Res>
    extends _$InvestigationContentCopyWithImpl<$Res, _$InvestigationContentImpl>
    implements _$$InvestigationContentImplCopyWith<$Res> {
  __$$InvestigationContentImplCopyWithImpl(_$InvestigationContentImpl _value,
      $Res Function(_$InvestigationContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestigationContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exteriorInspectionScore = null,
    Object? exteriorInspectionRemarks = freezed,
    Object? adjacentBuildingRisk = null,
    Object? unevenSettlement = null,
    Object? foundationDamage = null,
    Object? firstFloorTilt = null,
    Object? wallDamage = null,
    Object? corrosionOrTermite = null,
    Object? roofTile = null,
    Object? windowFrame = null,
    Object? exteriorWet = null,
    Object? exteriorDry = null,
    Object? signageAndEquipment = null,
    Object? outdoorStairs = null,
    Object? others = null,
    Object? otherRemarks = freezed,
    Object? overallExteriorScore = null,
    Object? overallStructuralScore = null,
    Object? overallFallingObjectScore = null,
  }) {
    return _then(_$InvestigationContentImpl(
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
      unevenSettlement: null == unevenSettlement
          ? _value.unevenSettlement
          : unevenSettlement // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      foundationDamage: null == foundationDamage
          ? _value.foundationDamage
          : foundationDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      firstFloorTilt: null == firstFloorTilt
          ? _value.firstFloorTilt
          : firstFloorTilt // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      wallDamage: null == wallDamage
          ? _value.wallDamage
          : wallDamage // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      corrosionOrTermite: null == corrosionOrTermite
          ? _value.corrosionOrTermite
          : corrosionOrTermite // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      roofTile: null == roofTile
          ? _value.roofTile
          : roofTile // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      windowFrame: null == windowFrame
          ? _value.windowFrame
          : windowFrame // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      exteriorWet: null == exteriorWet
          ? _value.exteriorWet
          : exteriorWet // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      exteriorDry: null == exteriorDry
          ? _value.exteriorDry
          : exteriorDry // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      signageAndEquipment: null == signageAndEquipment
          ? _value.signageAndEquipment
          : signageAndEquipment // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      outdoorStairs: null == outdoorStairs
          ? _value.outdoorStairs
          : outdoorStairs // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as DamageLevel,
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
class _$InvestigationContentImpl implements _InvestigationContent {
  const _$InvestigationContentImpl(
      {required this.exteriorInspectionScore,
      this.exteriorInspectionRemarks,
      required this.adjacentBuildingRisk,
      required this.unevenSettlement,
      required this.foundationDamage,
      required this.firstFloorTilt,
      required this.wallDamage,
      required this.corrosionOrTermite,
      required this.roofTile,
      required this.windowFrame,
      required this.exteriorWet,
      required this.exteriorDry,
      required this.signageAndEquipment,
      required this.outdoorStairs,
      required this.others,
      this.otherRemarks,
      required this.overallExteriorScore,
      required this.overallStructuralScore,
      required this.overallFallingObjectScore});

  factory _$InvestigationContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestigationContentImplFromJson(json);

  @override
  final int exteriorInspectionScore;
  @override
  final String? exteriorInspectionRemarks;
  @override
  final DamageLevel adjacentBuildingRisk;
  @override
  final DamageLevel unevenSettlement;
  @override
  final DamageLevel foundationDamage;
  @override
  final DamageLevel firstFloorTilt;
  @override
  final DamageLevel wallDamage;
  @override
  final DamageLevel corrosionOrTermite;
  @override
  final DamageLevel roofTile;
  @override
  final DamageLevel windowFrame;
  @override
  final DamageLevel exteriorWet;
  @override
  final DamageLevel exteriorDry;
  @override
  final DamageLevel signageAndEquipment;
  @override
  final DamageLevel outdoorStairs;
  @override
  final DamageLevel others;
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
    return 'InvestigationContent(exteriorInspectionScore: $exteriorInspectionScore, exteriorInspectionRemarks: $exteriorInspectionRemarks, adjacentBuildingRisk: $adjacentBuildingRisk, unevenSettlement: $unevenSettlement, foundationDamage: $foundationDamage, firstFloorTilt: $firstFloorTilt, wallDamage: $wallDamage, corrosionOrTermite: $corrosionOrTermite, roofTile: $roofTile, windowFrame: $windowFrame, exteriorWet: $exteriorWet, exteriorDry: $exteriorDry, signageAndEquipment: $signageAndEquipment, outdoorStairs: $outdoorStairs, others: $others, otherRemarks: $otherRemarks, overallExteriorScore: $overallExteriorScore, overallStructuralScore: $overallStructuralScore, overallFallingObjectScore: $overallFallingObjectScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestigationContentImpl &&
            (identical(
                    other.exteriorInspectionScore, exteriorInspectionScore) ||
                other.exteriorInspectionScore == exteriorInspectionScore) &&
            (identical(other.exteriorInspectionRemarks,
                    exteriorInspectionRemarks) ||
                other.exteriorInspectionRemarks == exteriorInspectionRemarks) &&
            (identical(other.adjacentBuildingRisk, adjacentBuildingRisk) ||
                other.adjacentBuildingRisk == adjacentBuildingRisk) &&
            (identical(other.unevenSettlement, unevenSettlement) ||
                other.unevenSettlement == unevenSettlement) &&
            (identical(other.foundationDamage, foundationDamage) ||
                other.foundationDamage == foundationDamage) &&
            (identical(other.firstFloorTilt, firstFloorTilt) ||
                other.firstFloorTilt == firstFloorTilt) &&
            (identical(other.wallDamage, wallDamage) ||
                other.wallDamage == wallDamage) &&
            (identical(other.corrosionOrTermite, corrosionOrTermite) ||
                other.corrosionOrTermite == corrosionOrTermite) &&
            (identical(other.roofTile, roofTile) ||
                other.roofTile == roofTile) &&
            (identical(other.windowFrame, windowFrame) ||
                other.windowFrame == windowFrame) &&
            (identical(other.exteriorWet, exteriorWet) ||
                other.exteriorWet == exteriorWet) &&
            (identical(other.exteriorDry, exteriorDry) ||
                other.exteriorDry == exteriorDry) &&
            (identical(other.signageAndEquipment, signageAndEquipment) ||
                other.signageAndEquipment == signageAndEquipment) &&
            (identical(other.outdoorStairs, outdoorStairs) ||
                other.outdoorStairs == outdoorStairs) &&
            (identical(other.others, others) || other.others == others) &&
            (identical(other.otherRemarks, otherRemarks) ||
                other.otherRemarks == otherRemarks) &&
            (identical(other.overallExteriorScore, overallExteriorScore) ||
                other.overallExteriorScore == overallExteriorScore) &&
            (identical(other.overallStructuralScore, overallStructuralScore) ||
                other.overallStructuralScore == overallStructuralScore) &&
            (identical(other.overallFallingObjectScore,
                    overallFallingObjectScore) ||
                other.overallFallingObjectScore == overallFallingObjectScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        exteriorInspectionScore,
        exteriorInspectionRemarks,
        adjacentBuildingRisk,
        unevenSettlement,
        foundationDamage,
        firstFloorTilt,
        wallDamage,
        corrosionOrTermite,
        roofTile,
        windowFrame,
        exteriorWet,
        exteriorDry,
        signageAndEquipment,
        outdoorStairs,
        others,
        otherRemarks,
        overallExteriorScore,
        overallStructuralScore,
        overallFallingObjectScore
      ]);

  /// Create a copy of InvestigationContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestigationContentImplCopyWith<_$InvestigationContentImpl>
      get copyWith =>
          __$$InvestigationContentImplCopyWithImpl<_$InvestigationContentImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestigationContentImplToJson(
      this,
    );
  }
}

abstract class _InvestigationContent implements InvestigationContent {
  const factory _InvestigationContent(
          {required final int exteriorInspectionScore,
          final String? exteriorInspectionRemarks,
          required final DamageLevel adjacentBuildingRisk,
          required final DamageLevel unevenSettlement,
          required final DamageLevel foundationDamage,
          required final DamageLevel firstFloorTilt,
          required final DamageLevel wallDamage,
          required final DamageLevel corrosionOrTermite,
          required final DamageLevel roofTile,
          required final DamageLevel windowFrame,
          required final DamageLevel exteriorWet,
          required final DamageLevel exteriorDry,
          required final DamageLevel signageAndEquipment,
          required final DamageLevel outdoorStairs,
          required final DamageLevel others,
          final String? otherRemarks,
          required final String overallExteriorScore,
          required final DamageLevel overallStructuralScore,
          required final DamageLevel overallFallingObjectScore}) =
      _$InvestigationContentImpl;

  factory _InvestigationContent.fromJson(Map<String, dynamic> json) =
      _$InvestigationContentImpl.fromJson;

  @override
  int get exteriorInspectionScore;
  @override
  String? get exteriorInspectionRemarks;
  @override
  DamageLevel get adjacentBuildingRisk;
  @override
  DamageLevel get unevenSettlement;
  @override
  DamageLevel get foundationDamage;
  @override
  DamageLevel get firstFloorTilt;
  @override
  DamageLevel get wallDamage;
  @override
  DamageLevel get corrosionOrTermite;
  @override
  DamageLevel get roofTile;
  @override
  DamageLevel get windowFrame;
  @override
  DamageLevel get exteriorWet;
  @override
  DamageLevel get exteriorDry;
  @override
  DamageLevel get signageAndEquipment;
  @override
  DamageLevel get outdoorStairs;
  @override
  DamageLevel get others;
  @override
  String? get otherRemarks;
  @override
  String get overallExteriorScore;
  @override
  DamageLevel get overallStructuralScore;
  @override
  DamageLevel get overallFallingObjectScore;

  /// Create a copy of InvestigationContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvestigationContentImplCopyWith<_$InvestigationContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvestigationRecord _$InvestigationRecordFromJson(Map<String, dynamic> json) {
  return _InvestigationRecord.fromJson(json);
}

/// @nodoc
mixin _$InvestigationRecord {
  InvestigationUnit get unit => throw _privateConstructorUsedError;
  BuildingOverview get overview => throw _privateConstructorUsedError;
  InvestigationContent get content => throw _privateConstructorUsedError;
  OverallScore get overallScore => throw _privateConstructorUsedError;

  /// Serializes this InvestigationRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvestigationRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvestigationRecordCopyWith<InvestigationRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestigationRecordCopyWith<$Res> {
  factory $InvestigationRecordCopyWith(
          InvestigationRecord value, $Res Function(InvestigationRecord) then) =
      _$InvestigationRecordCopyWithImpl<$Res, InvestigationRecord>;
  @useResult
  $Res call(
      {InvestigationUnit unit,
      BuildingOverview overview,
      InvestigationContent content,
      OverallScore overallScore});

  $InvestigationUnitCopyWith<$Res> get unit;
  $BuildingOverviewCopyWith<$Res> get overview;
  $InvestigationContentCopyWith<$Res> get content;
}

/// @nodoc
class _$InvestigationRecordCopyWithImpl<$Res, $Val extends InvestigationRecord>
    implements $InvestigationRecordCopyWith<$Res> {
  _$InvestigationRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvestigationRecord
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
              as InvestigationContent,
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as OverallScore,
    ) as $Val);
  }

  /// Create a copy of InvestigationRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvestigationUnitCopyWith<$Res> get unit {
    return $InvestigationUnitCopyWith<$Res>(_value.unit, (value) {
      return _then(_value.copyWith(unit: value) as $Val);
    });
  }

  /// Create a copy of InvestigationRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BuildingOverviewCopyWith<$Res> get overview {
    return $BuildingOverviewCopyWith<$Res>(_value.overview, (value) {
      return _then(_value.copyWith(overview: value) as $Val);
    });
  }

  /// Create a copy of InvestigationRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvestigationContentCopyWith<$Res> get content {
    return $InvestigationContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvestigationRecordImplCopyWith<$Res>
    implements $InvestigationRecordCopyWith<$Res> {
  factory _$$InvestigationRecordImplCopyWith(_$InvestigationRecordImpl value,
          $Res Function(_$InvestigationRecordImpl) then) =
      __$$InvestigationRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InvestigationUnit unit,
      BuildingOverview overview,
      InvestigationContent content,
      OverallScore overallScore});

  @override
  $InvestigationUnitCopyWith<$Res> get unit;
  @override
  $BuildingOverviewCopyWith<$Res> get overview;
  @override
  $InvestigationContentCopyWith<$Res> get content;
}

/// @nodoc
class __$$InvestigationRecordImplCopyWithImpl<$Res>
    extends _$InvestigationRecordCopyWithImpl<$Res, _$InvestigationRecordImpl>
    implements _$$InvestigationRecordImplCopyWith<$Res> {
  __$$InvestigationRecordImplCopyWithImpl(_$InvestigationRecordImpl _value,
      $Res Function(_$InvestigationRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestigationRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? overview = null,
    Object? content = null,
    Object? overallScore = null,
  }) {
    return _then(_$InvestigationRecordImpl(
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
              as InvestigationContent,
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as OverallScore,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestigationRecordImpl implements _InvestigationRecord {
  const _$InvestigationRecordImpl(
      {required this.unit,
      required this.overview,
      required this.content,
      required this.overallScore});

  factory _$InvestigationRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestigationRecordImplFromJson(json);

  @override
  final InvestigationUnit unit;
  @override
  final BuildingOverview overview;
  @override
  final InvestigationContent content;
  @override
  final OverallScore overallScore;

  @override
  String toString() {
    return 'InvestigationRecord(unit: $unit, overview: $overview, content: $content, overallScore: $overallScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestigationRecordImpl &&
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

  /// Create a copy of InvestigationRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestigationRecordImplCopyWith<_$InvestigationRecordImpl> get copyWith =>
      __$$InvestigationRecordImplCopyWithImpl<_$InvestigationRecordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestigationRecordImplToJson(
      this,
    );
  }
}

abstract class _InvestigationRecord implements InvestigationRecord {
  const factory _InvestigationRecord(
      {required final InvestigationUnit unit,
      required final BuildingOverview overview,
      required final InvestigationContent content,
      required final OverallScore overallScore}) = _$InvestigationRecordImpl;

  factory _InvestigationRecord.fromJson(Map<String, dynamic> json) =
      _$InvestigationRecordImpl.fromJson;

  @override
  InvestigationUnit get unit;
  @override
  BuildingOverview get overview;
  @override
  InvestigationContent get content;
  @override
  OverallScore get overallScore;

  /// Create a copy of InvestigationRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvestigationRecordImplCopyWith<_$InvestigationRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
