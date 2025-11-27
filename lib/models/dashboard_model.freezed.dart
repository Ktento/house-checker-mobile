// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DashboardData _$DashboardDataFromJson(Map<String, dynamic> json) {
  return _DashboardData.fromJson(json);
}

/// @nodoc
mixin _$DashboardData {
  int get totalbuilding => throw _privateConstructorUsedError; // 総建物数
  int get checkcomplete => throw _privateConstructorUsedError; // 判定完了数
  int get dangerbuilding => throw _privateConstructorUsedError; // 危険建物数
  int get checkwaiting => throw _privateConstructorUsedError; // 判定待ち
  double get completionRatioTotal =>
      throw _privateConstructorUsedError; // 全体進捗 %
  double get dangerRatioCompleted =>
      throw _privateConstructorUsedError; // Red と Yellow の合計割合 %
// 職員別判定件数 (キー: 職員名/ID, 値: 件数)
  Map<String, int> get workercount =>
      throw _privateConstructorUsedError; // 判定結果の件数 red yellow greenの件数
  CheckSituation get checksituation =>
      throw _privateConstructorUsedError; // 判定結果の割合
  CheckSituationRatio get checksituationRatio =>
      throw _privateConstructorUsedError; // 日別判定件数 (キー: 日付, 値: 件数)
  @JsonKey(name: "dateAnalysis")
  Map<String, DailyCheckCount> get dateAnalysis =>
      throw _privateConstructorUsedError; // 地域別分析データ (キー: 県名, 値: RegionAnalysis モデル)
  Map<String, RegionAnalysis> get regionanalysis =>
      throw _privateConstructorUsedError;

  /// Serializes this DashboardData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardDataCopyWith<DashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardDataCopyWith<$Res> {
  factory $DashboardDataCopyWith(
          DashboardData value, $Res Function(DashboardData) then) =
      _$DashboardDataCopyWithImpl<$Res, DashboardData>;
  @useResult
  $Res call(
      {int totalbuilding,
      int checkcomplete,
      int dangerbuilding,
      int checkwaiting,
      double completionRatioTotal,
      double dangerRatioCompleted,
      Map<String, int> workercount,
      CheckSituation checksituation,
      CheckSituationRatio checksituationRatio,
      @JsonKey(name: "dateAnalysis") Map<String, DailyCheckCount> dateAnalysis,
      Map<String, RegionAnalysis> regionanalysis});

  $CheckSituationCopyWith<$Res> get checksituation;
  $CheckSituationRatioCopyWith<$Res> get checksituationRatio;
}

/// @nodoc
class _$DashboardDataCopyWithImpl<$Res, $Val extends DashboardData>
    implements $DashboardDataCopyWith<$Res> {
  _$DashboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalbuilding = null,
    Object? checkcomplete = null,
    Object? dangerbuilding = null,
    Object? checkwaiting = null,
    Object? completionRatioTotal = null,
    Object? dangerRatioCompleted = null,
    Object? workercount = null,
    Object? checksituation = null,
    Object? checksituationRatio = null,
    Object? dateAnalysis = null,
    Object? regionanalysis = null,
  }) {
    return _then(_value.copyWith(
      totalbuilding: null == totalbuilding
          ? _value.totalbuilding
          : totalbuilding // ignore: cast_nullable_to_non_nullable
              as int,
      checkcomplete: null == checkcomplete
          ? _value.checkcomplete
          : checkcomplete // ignore: cast_nullable_to_non_nullable
              as int,
      dangerbuilding: null == dangerbuilding
          ? _value.dangerbuilding
          : dangerbuilding // ignore: cast_nullable_to_non_nullable
              as int,
      checkwaiting: null == checkwaiting
          ? _value.checkwaiting
          : checkwaiting // ignore: cast_nullable_to_non_nullable
              as int,
      completionRatioTotal: null == completionRatioTotal
          ? _value.completionRatioTotal
          : completionRatioTotal // ignore: cast_nullable_to_non_nullable
              as double,
      dangerRatioCompleted: null == dangerRatioCompleted
          ? _value.dangerRatioCompleted
          : dangerRatioCompleted // ignore: cast_nullable_to_non_nullable
              as double,
      workercount: null == workercount
          ? _value.workercount
          : workercount // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      checksituation: null == checksituation
          ? _value.checksituation
          : checksituation // ignore: cast_nullable_to_non_nullable
              as CheckSituation,
      checksituationRatio: null == checksituationRatio
          ? _value.checksituationRatio
          : checksituationRatio // ignore: cast_nullable_to_non_nullable
              as CheckSituationRatio,
      dateAnalysis: null == dateAnalysis
          ? _value.dateAnalysis
          : dateAnalysis // ignore: cast_nullable_to_non_nullable
              as Map<String, DailyCheckCount>,
      regionanalysis: null == regionanalysis
          ? _value.regionanalysis
          : regionanalysis // ignore: cast_nullable_to_non_nullable
              as Map<String, RegionAnalysis>,
    ) as $Val);
  }

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckSituationCopyWith<$Res> get checksituation {
    return $CheckSituationCopyWith<$Res>(_value.checksituation, (value) {
      return _then(_value.copyWith(checksituation: value) as $Val);
    });
  }

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckSituationRatioCopyWith<$Res> get checksituationRatio {
    return $CheckSituationRatioCopyWith<$Res>(_value.checksituationRatio,
        (value) {
      return _then(_value.copyWith(checksituationRatio: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardDataImplCopyWith<$Res>
    implements $DashboardDataCopyWith<$Res> {
  factory _$$DashboardDataImplCopyWith(
          _$DashboardDataImpl value, $Res Function(_$DashboardDataImpl) then) =
      __$$DashboardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalbuilding,
      int checkcomplete,
      int dangerbuilding,
      int checkwaiting,
      double completionRatioTotal,
      double dangerRatioCompleted,
      Map<String, int> workercount,
      CheckSituation checksituation,
      CheckSituationRatio checksituationRatio,
      @JsonKey(name: "dateAnalysis") Map<String, DailyCheckCount> dateAnalysis,
      Map<String, RegionAnalysis> regionanalysis});

  @override
  $CheckSituationCopyWith<$Res> get checksituation;
  @override
  $CheckSituationRatioCopyWith<$Res> get checksituationRatio;
}

/// @nodoc
class __$$DashboardDataImplCopyWithImpl<$Res>
    extends _$DashboardDataCopyWithImpl<$Res, _$DashboardDataImpl>
    implements _$$DashboardDataImplCopyWith<$Res> {
  __$$DashboardDataImplCopyWithImpl(
      _$DashboardDataImpl _value, $Res Function(_$DashboardDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalbuilding = null,
    Object? checkcomplete = null,
    Object? dangerbuilding = null,
    Object? checkwaiting = null,
    Object? completionRatioTotal = null,
    Object? dangerRatioCompleted = null,
    Object? workercount = null,
    Object? checksituation = null,
    Object? checksituationRatio = null,
    Object? dateAnalysis = null,
    Object? regionanalysis = null,
  }) {
    return _then(_$DashboardDataImpl(
      totalbuilding: null == totalbuilding
          ? _value.totalbuilding
          : totalbuilding // ignore: cast_nullable_to_non_nullable
              as int,
      checkcomplete: null == checkcomplete
          ? _value.checkcomplete
          : checkcomplete // ignore: cast_nullable_to_non_nullable
              as int,
      dangerbuilding: null == dangerbuilding
          ? _value.dangerbuilding
          : dangerbuilding // ignore: cast_nullable_to_non_nullable
              as int,
      checkwaiting: null == checkwaiting
          ? _value.checkwaiting
          : checkwaiting // ignore: cast_nullable_to_non_nullable
              as int,
      completionRatioTotal: null == completionRatioTotal
          ? _value.completionRatioTotal
          : completionRatioTotal // ignore: cast_nullable_to_non_nullable
              as double,
      dangerRatioCompleted: null == dangerRatioCompleted
          ? _value.dangerRatioCompleted
          : dangerRatioCompleted // ignore: cast_nullable_to_non_nullable
              as double,
      workercount: null == workercount
          ? _value._workercount
          : workercount // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      checksituation: null == checksituation
          ? _value.checksituation
          : checksituation // ignore: cast_nullable_to_non_nullable
              as CheckSituation,
      checksituationRatio: null == checksituationRatio
          ? _value.checksituationRatio
          : checksituationRatio // ignore: cast_nullable_to_non_nullable
              as CheckSituationRatio,
      dateAnalysis: null == dateAnalysis
          ? _value._dateAnalysis
          : dateAnalysis // ignore: cast_nullable_to_non_nullable
              as Map<String, DailyCheckCount>,
      regionanalysis: null == regionanalysis
          ? _value._regionanalysis
          : regionanalysis // ignore: cast_nullable_to_non_nullable
              as Map<String, RegionAnalysis>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardDataImpl
    with DiagnosticableTreeMixin
    implements _DashboardData {
  const _$DashboardDataImpl(
      {this.totalbuilding = 0,
      this.checkcomplete = 0,
      this.dangerbuilding = 0,
      this.checkwaiting = 0,
      this.completionRatioTotal = 10.0,
      this.dangerRatioCompleted = 8.0,
      required final Map<String, int> workercount,
      required this.checksituation,
      required this.checksituationRatio,
      @JsonKey(name: "dateAnalysis")
      required final Map<String, DailyCheckCount> dateAnalysis,
      required final Map<String, RegionAnalysis> regionanalysis})
      : _workercount = workercount,
        _dateAnalysis = dateAnalysis,
        _regionanalysis = regionanalysis;

  factory _$DashboardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardDataImplFromJson(json);

  @override
  @JsonKey()
  final int totalbuilding;
// 総建物数
  @override
  @JsonKey()
  final int checkcomplete;
// 判定完了数
  @override
  @JsonKey()
  final int dangerbuilding;
// 危険建物数
  @override
  @JsonKey()
  final int checkwaiting;
// 判定待ち
  @override
  @JsonKey()
  final double completionRatioTotal;
// 全体進捗 %
  @override
  @JsonKey()
  final double dangerRatioCompleted;
// Red と Yellow の合計割合 %
// 職員別判定件数 (キー: 職員名/ID, 値: 件数)
  final Map<String, int> _workercount;
// Red と Yellow の合計割合 %
// 職員別判定件数 (キー: 職員名/ID, 値: 件数)
  @override
  Map<String, int> get workercount {
    if (_workercount is EqualUnmodifiableMapView) return _workercount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_workercount);
  }

// 判定結果の件数 red yellow greenの件数
  @override
  final CheckSituation checksituation;
// 判定結果の割合
  @override
  final CheckSituationRatio checksituationRatio;
// 日別判定件数 (キー: 日付, 値: 件数)
  final Map<String, DailyCheckCount> _dateAnalysis;
// 日別判定件数 (キー: 日付, 値: 件数)
  @override
  @JsonKey(name: "dateAnalysis")
  Map<String, DailyCheckCount> get dateAnalysis {
    if (_dateAnalysis is EqualUnmodifiableMapView) return _dateAnalysis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dateAnalysis);
  }

// 地域別分析データ (キー: 県名, 値: RegionAnalysis モデル)
  final Map<String, RegionAnalysis> _regionanalysis;
// 地域別分析データ (キー: 県名, 値: RegionAnalysis モデル)
  @override
  Map<String, RegionAnalysis> get regionanalysis {
    if (_regionanalysis is EqualUnmodifiableMapView) return _regionanalysis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_regionanalysis);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardData(totalbuilding: $totalbuilding, checkcomplete: $checkcomplete, dangerbuilding: $dangerbuilding, checkwaiting: $checkwaiting, completionRatioTotal: $completionRatioTotal, dangerRatioCompleted: $dangerRatioCompleted, workercount: $workercount, checksituation: $checksituation, checksituationRatio: $checksituationRatio, dateAnalysis: $dateAnalysis, regionanalysis: $regionanalysis)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardData'))
      ..add(DiagnosticsProperty('totalbuilding', totalbuilding))
      ..add(DiagnosticsProperty('checkcomplete', checkcomplete))
      ..add(DiagnosticsProperty('dangerbuilding', dangerbuilding))
      ..add(DiagnosticsProperty('checkwaiting', checkwaiting))
      ..add(DiagnosticsProperty('completionRatioTotal', completionRatioTotal))
      ..add(DiagnosticsProperty('dangerRatioCompleted', dangerRatioCompleted))
      ..add(DiagnosticsProperty('workercount', workercount))
      ..add(DiagnosticsProperty('checksituation', checksituation))
      ..add(DiagnosticsProperty('checksituationRatio', checksituationRatio))
      ..add(DiagnosticsProperty('dateAnalysis', dateAnalysis))
      ..add(DiagnosticsProperty('regionanalysis', regionanalysis));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardDataImpl &&
            (identical(other.totalbuilding, totalbuilding) ||
                other.totalbuilding == totalbuilding) &&
            (identical(other.checkcomplete, checkcomplete) ||
                other.checkcomplete == checkcomplete) &&
            (identical(other.dangerbuilding, dangerbuilding) ||
                other.dangerbuilding == dangerbuilding) &&
            (identical(other.checkwaiting, checkwaiting) ||
                other.checkwaiting == checkwaiting) &&
            (identical(other.completionRatioTotal, completionRatioTotal) ||
                other.completionRatioTotal == completionRatioTotal) &&
            (identical(other.dangerRatioCompleted, dangerRatioCompleted) ||
                other.dangerRatioCompleted == dangerRatioCompleted) &&
            const DeepCollectionEquality()
                .equals(other._workercount, _workercount) &&
            (identical(other.checksituation, checksituation) ||
                other.checksituation == checksituation) &&
            (identical(other.checksituationRatio, checksituationRatio) ||
                other.checksituationRatio == checksituationRatio) &&
            const DeepCollectionEquality()
                .equals(other._dateAnalysis, _dateAnalysis) &&
            const DeepCollectionEquality()
                .equals(other._regionanalysis, _regionanalysis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalbuilding,
      checkcomplete,
      dangerbuilding,
      checkwaiting,
      completionRatioTotal,
      dangerRatioCompleted,
      const DeepCollectionEquality().hash(_workercount),
      checksituation,
      checksituationRatio,
      const DeepCollectionEquality().hash(_dateAnalysis),
      const DeepCollectionEquality().hash(_regionanalysis));

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      __$$DashboardDataImplCopyWithImpl<_$DashboardDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardDataImplToJson(
      this,
    );
  }
}

abstract class _DashboardData implements DashboardData {
  const factory _DashboardData(
          {final int totalbuilding,
          final int checkcomplete,
          final int dangerbuilding,
          final int checkwaiting,
          final double completionRatioTotal,
          final double dangerRatioCompleted,
          required final Map<String, int> workercount,
          required final CheckSituation checksituation,
          required final CheckSituationRatio checksituationRatio,
          @JsonKey(name: "dateAnalysis")
          required final Map<String, DailyCheckCount> dateAnalysis,
          required final Map<String, RegionAnalysis> regionanalysis}) =
      _$DashboardDataImpl;

  factory _DashboardData.fromJson(Map<String, dynamic> json) =
      _$DashboardDataImpl.fromJson;

  @override
  int get totalbuilding; // 総建物数
  @override
  int get checkcomplete; // 判定完了数
  @override
  int get dangerbuilding; // 危険建物数
  @override
  int get checkwaiting; // 判定待ち
  @override
  double get completionRatioTotal; // 全体進捗 %
  @override
  double get dangerRatioCompleted; // Red と Yellow の合計割合 %
// 職員別判定件数 (キー: 職員名/ID, 値: 件数)
  @override
  Map<String, int> get workercount; // 判定結果の件数 red yellow greenの件数
  @override
  CheckSituation get checksituation; // 判定結果の割合
  @override
  CheckSituationRatio get checksituationRatio; // 日別判定件数 (キー: 日付, 値: 件数)
  @override
  @JsonKey(name: "dateAnalysis")
  Map<String, DailyCheckCount>
      get dateAnalysis; // 地域別分析データ (キー: 県名, 値: RegionAnalysis モデル)
  @override
  Map<String, RegionAnalysis> get regionanalysis;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckSituation _$CheckSituationFromJson(Map<String, dynamic> json) {
  return _CheckSituation.fromJson(json);
}

/// @nodoc
mixin _$CheckSituation {
  int get red => throw _privateConstructorUsedError;
  int get yellow => throw _privateConstructorUsedError;
  int get green =>
      throw _privateConstructorUsedError; // JSON側のキーが日本語のため、@JsonKeyでマッピング
  @JsonKey(name: '値なし', defaultValue: 0)
  int get noValue => throw _privateConstructorUsedError;

  /// Serializes this CheckSituation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckSituation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckSituationCopyWith<CheckSituation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSituationCopyWith<$Res> {
  factory $CheckSituationCopyWith(
          CheckSituation value, $Res Function(CheckSituation) then) =
      _$CheckSituationCopyWithImpl<$Res, CheckSituation>;
  @useResult
  $Res call(
      {int red,
      int yellow,
      int green,
      @JsonKey(name: '値なし', defaultValue: 0) int noValue});
}

/// @nodoc
class _$CheckSituationCopyWithImpl<$Res, $Val extends CheckSituation>
    implements $CheckSituationCopyWith<$Res> {
  _$CheckSituationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckSituation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? red = null,
    Object? yellow = null,
    Object? green = null,
    Object? noValue = null,
  }) {
    return _then(_value.copyWith(
      red: null == red
          ? _value.red
          : red // ignore: cast_nullable_to_non_nullable
              as int,
      yellow: null == yellow
          ? _value.yellow
          : yellow // ignore: cast_nullable_to_non_nullable
              as int,
      green: null == green
          ? _value.green
          : green // ignore: cast_nullable_to_non_nullable
              as int,
      noValue: null == noValue
          ? _value.noValue
          : noValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckSituationImplCopyWith<$Res>
    implements $CheckSituationCopyWith<$Res> {
  factory _$$CheckSituationImplCopyWith(_$CheckSituationImpl value,
          $Res Function(_$CheckSituationImpl) then) =
      __$$CheckSituationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int red,
      int yellow,
      int green,
      @JsonKey(name: '値なし', defaultValue: 0) int noValue});
}

/// @nodoc
class __$$CheckSituationImplCopyWithImpl<$Res>
    extends _$CheckSituationCopyWithImpl<$Res, _$CheckSituationImpl>
    implements _$$CheckSituationImplCopyWith<$Res> {
  __$$CheckSituationImplCopyWithImpl(
      _$CheckSituationImpl _value, $Res Function(_$CheckSituationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckSituation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? red = null,
    Object? yellow = null,
    Object? green = null,
    Object? noValue = null,
  }) {
    return _then(_$CheckSituationImpl(
      red: null == red
          ? _value.red
          : red // ignore: cast_nullable_to_non_nullable
              as int,
      yellow: null == yellow
          ? _value.yellow
          : yellow // ignore: cast_nullable_to_non_nullable
              as int,
      green: null == green
          ? _value.green
          : green // ignore: cast_nullable_to_non_nullable
              as int,
      noValue: null == noValue
          ? _value.noValue
          : noValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckSituationImpl
    with DiagnosticableTreeMixin
    implements _CheckSituation {
  const _$CheckSituationImpl(
      {this.red = 0,
      this.yellow = 0,
      this.green = 0,
      @JsonKey(name: '値なし', defaultValue: 0) required this.noValue});

  factory _$CheckSituationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckSituationImplFromJson(json);

  @override
  @JsonKey()
  final int red;
  @override
  @JsonKey()
  final int yellow;
  @override
  @JsonKey()
  final int green;
// JSON側のキーが日本語のため、@JsonKeyでマッピング
  @override
  @JsonKey(name: '値なし', defaultValue: 0)
  final int noValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckSituation(red: $red, yellow: $yellow, green: $green, noValue: $noValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckSituation'))
      ..add(DiagnosticsProperty('red', red))
      ..add(DiagnosticsProperty('yellow', yellow))
      ..add(DiagnosticsProperty('green', green))
      ..add(DiagnosticsProperty('noValue', noValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckSituationImpl &&
            (identical(other.red, red) || other.red == red) &&
            (identical(other.yellow, yellow) || other.yellow == yellow) &&
            (identical(other.green, green) || other.green == green) &&
            (identical(other.noValue, noValue) || other.noValue == noValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, red, yellow, green, noValue);

  /// Create a copy of CheckSituation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckSituationImplCopyWith<_$CheckSituationImpl> get copyWith =>
      __$$CheckSituationImplCopyWithImpl<_$CheckSituationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckSituationImplToJson(
      this,
    );
  }
}

abstract class _CheckSituation implements CheckSituation {
  const factory _CheckSituation(
          {final int red,
          final int yellow,
          final int green,
          @JsonKey(name: '値なし', defaultValue: 0) required final int noValue}) =
      _$CheckSituationImpl;

  factory _CheckSituation.fromJson(Map<String, dynamic> json) =
      _$CheckSituationImpl.fromJson;

  @override
  int get red;
  @override
  int get yellow;
  @override
  int get green; // JSON側のキーが日本語のため、@JsonKeyでマッピング
  @override
  @JsonKey(name: '値なし', defaultValue: 0)
  int get noValue;

  /// Create a copy of CheckSituation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckSituationImplCopyWith<_$CheckSituationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckSituationRatio _$CheckSituationRatioFromJson(Map<String, dynamic> json) {
  return _CheckSituationRatio.fromJson(json);
}

/// @nodoc
mixin _$CheckSituationRatio {
  double get red => throw _privateConstructorUsedError;
  double get yellow => throw _privateConstructorUsedError;
  double get green => throw _privateConstructorUsedError;
  double get noValue => throw _privateConstructorUsedError;

  /// Serializes this CheckSituationRatio to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckSituationRatio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckSituationRatioCopyWith<CheckSituationRatio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSituationRatioCopyWith<$Res> {
  factory $CheckSituationRatioCopyWith(
          CheckSituationRatio value, $Res Function(CheckSituationRatio) then) =
      _$CheckSituationRatioCopyWithImpl<$Res, CheckSituationRatio>;
  @useResult
  $Res call({double red, double yellow, double green, double noValue});
}

/// @nodoc
class _$CheckSituationRatioCopyWithImpl<$Res, $Val extends CheckSituationRatio>
    implements $CheckSituationRatioCopyWith<$Res> {
  _$CheckSituationRatioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckSituationRatio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? red = null,
    Object? yellow = null,
    Object? green = null,
    Object? noValue = null,
  }) {
    return _then(_value.copyWith(
      red: null == red
          ? _value.red
          : red // ignore: cast_nullable_to_non_nullable
              as double,
      yellow: null == yellow
          ? _value.yellow
          : yellow // ignore: cast_nullable_to_non_nullable
              as double,
      green: null == green
          ? _value.green
          : green // ignore: cast_nullable_to_non_nullable
              as double,
      noValue: null == noValue
          ? _value.noValue
          : noValue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckSituationRatioImplCopyWith<$Res>
    implements $CheckSituationRatioCopyWith<$Res> {
  factory _$$CheckSituationRatioImplCopyWith(_$CheckSituationRatioImpl value,
          $Res Function(_$CheckSituationRatioImpl) then) =
      __$$CheckSituationRatioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double red, double yellow, double green, double noValue});
}

/// @nodoc
class __$$CheckSituationRatioImplCopyWithImpl<$Res>
    extends _$CheckSituationRatioCopyWithImpl<$Res, _$CheckSituationRatioImpl>
    implements _$$CheckSituationRatioImplCopyWith<$Res> {
  __$$CheckSituationRatioImplCopyWithImpl(_$CheckSituationRatioImpl _value,
      $Res Function(_$CheckSituationRatioImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckSituationRatio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? red = null,
    Object? yellow = null,
    Object? green = null,
    Object? noValue = null,
  }) {
    return _then(_$CheckSituationRatioImpl(
      red: null == red
          ? _value.red
          : red // ignore: cast_nullable_to_non_nullable
              as double,
      yellow: null == yellow
          ? _value.yellow
          : yellow // ignore: cast_nullable_to_non_nullable
              as double,
      green: null == green
          ? _value.green
          : green // ignore: cast_nullable_to_non_nullable
              as double,
      noValue: null == noValue
          ? _value.noValue
          : noValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckSituationRatioImpl
    with DiagnosticableTreeMixin
    implements _CheckSituationRatio {
  const _$CheckSituationRatioImpl(
      {this.red = 0.0,
      this.yellow = 0.0,
      this.green = 0.0,
      this.noValue = 0.0});

  factory _$CheckSituationRatioImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckSituationRatioImplFromJson(json);

  @override
  @JsonKey()
  final double red;
  @override
  @JsonKey()
  final double yellow;
  @override
  @JsonKey()
  final double green;
  @override
  @JsonKey()
  final double noValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckSituationRatio(red: $red, yellow: $yellow, green: $green, noValue: $noValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckSituationRatio'))
      ..add(DiagnosticsProperty('red', red))
      ..add(DiagnosticsProperty('yellow', yellow))
      ..add(DiagnosticsProperty('green', green))
      ..add(DiagnosticsProperty('noValue', noValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckSituationRatioImpl &&
            (identical(other.red, red) || other.red == red) &&
            (identical(other.yellow, yellow) || other.yellow == yellow) &&
            (identical(other.green, green) || other.green == green) &&
            (identical(other.noValue, noValue) || other.noValue == noValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, red, yellow, green, noValue);

  /// Create a copy of CheckSituationRatio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckSituationRatioImplCopyWith<_$CheckSituationRatioImpl> get copyWith =>
      __$$CheckSituationRatioImplCopyWithImpl<_$CheckSituationRatioImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckSituationRatioImplToJson(
      this,
    );
  }
}

abstract class _CheckSituationRatio implements CheckSituationRatio {
  const factory _CheckSituationRatio(
      {final double red,
      final double yellow,
      final double green,
      final double noValue}) = _$CheckSituationRatioImpl;

  factory _CheckSituationRatio.fromJson(Map<String, dynamic> json) =
      _$CheckSituationRatioImpl.fromJson;

  @override
  double get red;
  @override
  double get yellow;
  @override
  double get green;
  @override
  double get noValue;

  /// Create a copy of CheckSituationRatio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckSituationRatioImplCopyWith<_$CheckSituationRatioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegionAnalysis _$RegionAnalysisFromJson(Map<String, dynamic> json) {
  return _RegionAnalysis.fromJson(json);
}

/// @nodoc
mixin _$RegionAnalysis {
  int get totalbuilding => throw _privateConstructorUsedError;
  int get checkcomplete => throw _privateConstructorUsedError;
  int get dangerbuilding => throw _privateConstructorUsedError;
  int get checkwaiting => throw _privateConstructorUsedError;

  /// Serializes this RegionAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegionAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegionAnalysisCopyWith<RegionAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionAnalysisCopyWith<$Res> {
  factory $RegionAnalysisCopyWith(
          RegionAnalysis value, $Res Function(RegionAnalysis) then) =
      _$RegionAnalysisCopyWithImpl<$Res, RegionAnalysis>;
  @useResult
  $Res call(
      {int totalbuilding,
      int checkcomplete,
      int dangerbuilding,
      int checkwaiting});
}

/// @nodoc
class _$RegionAnalysisCopyWithImpl<$Res, $Val extends RegionAnalysis>
    implements $RegionAnalysisCopyWith<$Res> {
  _$RegionAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegionAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalbuilding = null,
    Object? checkcomplete = null,
    Object? dangerbuilding = null,
    Object? checkwaiting = null,
  }) {
    return _then(_value.copyWith(
      totalbuilding: null == totalbuilding
          ? _value.totalbuilding
          : totalbuilding // ignore: cast_nullable_to_non_nullable
              as int,
      checkcomplete: null == checkcomplete
          ? _value.checkcomplete
          : checkcomplete // ignore: cast_nullable_to_non_nullable
              as int,
      dangerbuilding: null == dangerbuilding
          ? _value.dangerbuilding
          : dangerbuilding // ignore: cast_nullable_to_non_nullable
              as int,
      checkwaiting: null == checkwaiting
          ? _value.checkwaiting
          : checkwaiting // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionAnalysisImplCopyWith<$Res>
    implements $RegionAnalysisCopyWith<$Res> {
  factory _$$RegionAnalysisImplCopyWith(_$RegionAnalysisImpl value,
          $Res Function(_$RegionAnalysisImpl) then) =
      __$$RegionAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalbuilding,
      int checkcomplete,
      int dangerbuilding,
      int checkwaiting});
}

/// @nodoc
class __$$RegionAnalysisImplCopyWithImpl<$Res>
    extends _$RegionAnalysisCopyWithImpl<$Res, _$RegionAnalysisImpl>
    implements _$$RegionAnalysisImplCopyWith<$Res> {
  __$$RegionAnalysisImplCopyWithImpl(
      _$RegionAnalysisImpl _value, $Res Function(_$RegionAnalysisImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegionAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalbuilding = null,
    Object? checkcomplete = null,
    Object? dangerbuilding = null,
    Object? checkwaiting = null,
  }) {
    return _then(_$RegionAnalysisImpl(
      totalbuilding: null == totalbuilding
          ? _value.totalbuilding
          : totalbuilding // ignore: cast_nullable_to_non_nullable
              as int,
      checkcomplete: null == checkcomplete
          ? _value.checkcomplete
          : checkcomplete // ignore: cast_nullable_to_non_nullable
              as int,
      dangerbuilding: null == dangerbuilding
          ? _value.dangerbuilding
          : dangerbuilding // ignore: cast_nullable_to_non_nullable
              as int,
      checkwaiting: null == checkwaiting
          ? _value.checkwaiting
          : checkwaiting // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionAnalysisImpl
    with DiagnosticableTreeMixin
    implements _RegionAnalysis {
  const _$RegionAnalysisImpl(
      {this.totalbuilding = 0,
      this.checkcomplete = 0,
      this.dangerbuilding = 0,
      this.checkwaiting = 0});

  factory _$RegionAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionAnalysisImplFromJson(json);

  @override
  @JsonKey()
  final int totalbuilding;
  @override
  @JsonKey()
  final int checkcomplete;
  @override
  @JsonKey()
  final int dangerbuilding;
  @override
  @JsonKey()
  final int checkwaiting;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegionAnalysis(totalbuilding: $totalbuilding, checkcomplete: $checkcomplete, dangerbuilding: $dangerbuilding, checkwaiting: $checkwaiting)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegionAnalysis'))
      ..add(DiagnosticsProperty('totalbuilding', totalbuilding))
      ..add(DiagnosticsProperty('checkcomplete', checkcomplete))
      ..add(DiagnosticsProperty('dangerbuilding', dangerbuilding))
      ..add(DiagnosticsProperty('checkwaiting', checkwaiting));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionAnalysisImpl &&
            (identical(other.totalbuilding, totalbuilding) ||
                other.totalbuilding == totalbuilding) &&
            (identical(other.checkcomplete, checkcomplete) ||
                other.checkcomplete == checkcomplete) &&
            (identical(other.dangerbuilding, dangerbuilding) ||
                other.dangerbuilding == dangerbuilding) &&
            (identical(other.checkwaiting, checkwaiting) ||
                other.checkwaiting == checkwaiting));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalbuilding, checkcomplete, dangerbuilding, checkwaiting);

  /// Create a copy of RegionAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionAnalysisImplCopyWith<_$RegionAnalysisImpl> get copyWith =>
      __$$RegionAnalysisImplCopyWithImpl<_$RegionAnalysisImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionAnalysisImplToJson(
      this,
    );
  }
}

abstract class _RegionAnalysis implements RegionAnalysis {
  const factory _RegionAnalysis(
      {final int totalbuilding,
      final int checkcomplete,
      final int dangerbuilding,
      final int checkwaiting}) = _$RegionAnalysisImpl;

  factory _RegionAnalysis.fromJson(Map<String, dynamic> json) =
      _$RegionAnalysisImpl.fromJson;

  @override
  int get totalbuilding;
  @override
  int get checkcomplete;
  @override
  int get dangerbuilding;
  @override
  int get checkwaiting;

  /// Create a copy of RegionAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegionAnalysisImplCopyWith<_$RegionAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyCheckCount _$DailyCheckCountFromJson(Map<String, dynamic> json) {
  return _DailyCheckCount.fromJson(json);
}

/// @nodoc
mixin _$DailyCheckCount {
  @JsonKey(name: "totalbuilding")
  int get totalBuilding => throw _privateConstructorUsedError;
  @JsonKey(name: "checkcomplete")
  int get checkComplete => throw _privateConstructorUsedError;

  /// Serializes this DailyCheckCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyCheckCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyCheckCountCopyWith<DailyCheckCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCheckCountCopyWith<$Res> {
  factory $DailyCheckCountCopyWith(
          DailyCheckCount value, $Res Function(DailyCheckCount) then) =
      _$DailyCheckCountCopyWithImpl<$Res, DailyCheckCount>;
  @useResult
  $Res call(
      {@JsonKey(name: "totalbuilding") int totalBuilding,
      @JsonKey(name: "checkcomplete") int checkComplete});
}

/// @nodoc
class _$DailyCheckCountCopyWithImpl<$Res, $Val extends DailyCheckCount>
    implements $DailyCheckCountCopyWith<$Res> {
  _$DailyCheckCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyCheckCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBuilding = null,
    Object? checkComplete = null,
  }) {
    return _then(_value.copyWith(
      totalBuilding: null == totalBuilding
          ? _value.totalBuilding
          : totalBuilding // ignore: cast_nullable_to_non_nullable
              as int,
      checkComplete: null == checkComplete
          ? _value.checkComplete
          : checkComplete // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyCheckCountImplCopyWith<$Res>
    implements $DailyCheckCountCopyWith<$Res> {
  factory _$$DailyCheckCountImplCopyWith(_$DailyCheckCountImpl value,
          $Res Function(_$DailyCheckCountImpl) then) =
      __$$DailyCheckCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "totalbuilding") int totalBuilding,
      @JsonKey(name: "checkcomplete") int checkComplete});
}

/// @nodoc
class __$$DailyCheckCountImplCopyWithImpl<$Res>
    extends _$DailyCheckCountCopyWithImpl<$Res, _$DailyCheckCountImpl>
    implements _$$DailyCheckCountImplCopyWith<$Res> {
  __$$DailyCheckCountImplCopyWithImpl(
      _$DailyCheckCountImpl _value, $Res Function(_$DailyCheckCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyCheckCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBuilding = null,
    Object? checkComplete = null,
  }) {
    return _then(_$DailyCheckCountImpl(
      totalBuilding: null == totalBuilding
          ? _value.totalBuilding
          : totalBuilding // ignore: cast_nullable_to_non_nullable
              as int,
      checkComplete: null == checkComplete
          ? _value.checkComplete
          : checkComplete // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyCheckCountImpl
    with DiagnosticableTreeMixin
    implements _DailyCheckCount {
  const _$DailyCheckCountImpl(
      {@JsonKey(name: "totalbuilding") required this.totalBuilding,
      @JsonKey(name: "checkcomplete") required this.checkComplete});

  factory _$DailyCheckCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyCheckCountImplFromJson(json);

  @override
  @JsonKey(name: "totalbuilding")
  final int totalBuilding;
  @override
  @JsonKey(name: "checkcomplete")
  final int checkComplete;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyCheckCount(totalBuilding: $totalBuilding, checkComplete: $checkComplete)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DailyCheckCount'))
      ..add(DiagnosticsProperty('totalBuilding', totalBuilding))
      ..add(DiagnosticsProperty('checkComplete', checkComplete));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyCheckCountImpl &&
            (identical(other.totalBuilding, totalBuilding) ||
                other.totalBuilding == totalBuilding) &&
            (identical(other.checkComplete, checkComplete) ||
                other.checkComplete == checkComplete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalBuilding, checkComplete);

  /// Create a copy of DailyCheckCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyCheckCountImplCopyWith<_$DailyCheckCountImpl> get copyWith =>
      __$$DailyCheckCountImplCopyWithImpl<_$DailyCheckCountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyCheckCountImplToJson(
      this,
    );
  }
}

abstract class _DailyCheckCount implements DailyCheckCount {
  const factory _DailyCheckCount(
          {@JsonKey(name: "totalbuilding") required final int totalBuilding,
          @JsonKey(name: "checkcomplete") required final int checkComplete}) =
      _$DailyCheckCountImpl;

  factory _DailyCheckCount.fromJson(Map<String, dynamic> json) =
      _$DailyCheckCountImpl.fromJson;

  @override
  @JsonKey(name: "totalbuilding")
  int get totalBuilding;
  @override
  @JsonKey(name: "checkcomplete")
  int get checkComplete;

  /// Create a copy of DailyCheckCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyCheckCountImplCopyWith<_$DailyCheckCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
