import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
class DashboardData with _$DashboardData {
  const factory DashboardData({
    @Default(0) int totalbuilding, // 総建物数
    @Default(0) int checkcomplete, // 判定完了数
    @Default(0) int dangerbuilding, // 危険建物数
    @Default(0) int checkwaiting, // 判定待ち
    @Default(0.0) double completionRatioTotal, // 全体進捗 %
    @Default(0.0) double dangerRatioCompleted, // Red と Yellow の合計割合 %

    // 職員別判定件数 (キー: 職員名/ID, 値: 件数)
    required Map<String, int> workercount,

    // 判定結果の件数 red yellow greenの件数
    required CheckSituation checksituation,

    // 判定結果の割合
    required CheckSituationRatio checksituationRatio,

    // 日別判定件数 (キー: 日付, 値: 件数)
    required Map<String, DailyCheckCount> dateAnalysis,

    // 地域別分析データ (キー: 県名, 値: RegionAnalysis モデル)
    required Map<String, RegionAnalysis> regionanalysis,
  }) = _DashboardData;

  factory DashboardData.fromJson(Map<String, dynamic> json) =>
      _$DashboardDataFromJson(json);
}

/// 判定結果の件数
@freezed
class CheckSituation with _$CheckSituation {
  const factory CheckSituation({
    @Default(0) int red,
    @Default(0) int yellow,
    @Default(0) int green,
    // JSON側のキーが日本語のため、@JsonKeyでマッピング
    @JsonKey(name: '値なし', defaultValue: 0) required int noValue,
  }) = _CheckSituation;

  factory CheckSituation.fromJson(Map<String, dynamic> json) =>
      _$CheckSituationFromJson(json);
}

/// 判定結果の割合 %
@freezed
class CheckSituationRatio with _$CheckSituationRatio {
  const factory CheckSituationRatio({
    @Default(0.0) double red,
    @Default(0.0) double yellow,
    @Default(0.0) double green,
    @Default(0.0) double noValue,
  }) = _CheckSituationRatio;

  factory CheckSituationRatio.fromJson(Map<String, dynamic> json) =>
      _$CheckSituationRatioFromJson(json);
}

/// 地域別分析データ
@freezed
class RegionAnalysis with _$RegionAnalysis {
  const factory RegionAnalysis({
    @Default(0) int totalbuilding,
    @Default(0) int checkcomplete,
    @Default(0) int dangerbuilding,
    @Default(0) int checkwaiting,
  }) = _RegionAnalysis;

  factory RegionAnalysis.fromJson(Map<String, dynamic> json) =>
      _$RegionAnalysisFromJson(json);
}

@freezed
class DailyCheckCount with _$DailyCheckCount {
  const factory DailyCheckCount({
    @JsonKey(name: "totalbuilding") required int totalBuilding,
    @JsonKey(name: "checkcomplete") required int checkComplete,
  }) = _DailyCheckCount;

  factory DailyCheckCount.fromJson(Map<String, dynamic> json) =>
      _$DailyCheckCountFromJson(json);
}

@freezed
class Tasks with _$Tasks {
  const factory Tasks({
    required String uuid,
    required String postusername,
    required DateTime date,
    required String buildingtype,
    required String address,
    required double latitude,
    required double longitude,
    @Default('') String buildingName,
    required String buildingUse,
    @Default('') String overallScore,
  }) = _Tasks;

  factory Tasks.fromJson(Map<String, dynamic> json) => _$TasksFromJson(json);
}
