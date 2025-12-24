// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardDataImpl _$$DashboardDataImplFromJson(Map<String, dynamic> json) =>
    _$DashboardDataImpl(
      totalbuilding: (json['totalbuilding'] as num?)?.toInt() ?? 0,
      checkcomplete: (json['checkcomplete'] as num?)?.toInt() ?? 0,
      dangerbuilding: (json['dangerbuilding'] as num?)?.toInt() ?? 0,
      checkwaiting: (json['checkwaiting'] as num?)?.toInt() ?? 0,
      completionRatioTotal:
          (json['completionRatioTotal'] as num?)?.toDouble() ?? 0.0,
      dangerRatioCompleted:
          (json['dangerRatioCompleted'] as num?)?.toDouble() ?? 0.0,
      workercount: Map<String, int>.from(json['workercount'] as Map),
      checksituation: CheckSituation.fromJson(
          json['checksituation'] as Map<String, dynamic>),
      checksituationRatio: CheckSituationRatio.fromJson(
          json['checksituationRatio'] as Map<String, dynamic>),
      dateAnalysis: (json['dateAnalysis'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, DailyCheckCount.fromJson(e as Map<String, dynamic>)),
      ),
      regionanalysis: (json['regionanalysis'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, RegionAnalysis.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$DashboardDataImplToJson(_$DashboardDataImpl instance) =>
    <String, dynamic>{
      'totalbuilding': instance.totalbuilding,
      'checkcomplete': instance.checkcomplete,
      'dangerbuilding': instance.dangerbuilding,
      'checkwaiting': instance.checkwaiting,
      'completionRatioTotal': instance.completionRatioTotal,
      'dangerRatioCompleted': instance.dangerRatioCompleted,
      'workercount': instance.workercount,
      'checksituation': instance.checksituation,
      'checksituationRatio': instance.checksituationRatio,
      'dateAnalysis': instance.dateAnalysis,
      'regionanalysis': instance.regionanalysis,
    };

_$CheckSituationImpl _$$CheckSituationImplFromJson(Map<String, dynamic> json) =>
    _$CheckSituationImpl(
      red: (json['red'] as num?)?.toInt() ?? 0,
      yellow: (json['yellow'] as num?)?.toInt() ?? 0,
      green: (json['green'] as num?)?.toInt() ?? 0,
      noValue: (json['値なし'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CheckSituationImplToJson(
        _$CheckSituationImpl instance) =>
    <String, dynamic>{
      'red': instance.red,
      'yellow': instance.yellow,
      'green': instance.green,
      '値なし': instance.noValue,
    };

_$CheckSituationRatioImpl _$$CheckSituationRatioImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckSituationRatioImpl(
      red: (json['red'] as num?)?.toDouble() ?? 0.0,
      yellow: (json['yellow'] as num?)?.toDouble() ?? 0.0,
      green: (json['green'] as num?)?.toDouble() ?? 0.0,
      noValue: (json['noValue'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$CheckSituationRatioImplToJson(
        _$CheckSituationRatioImpl instance) =>
    <String, dynamic>{
      'red': instance.red,
      'yellow': instance.yellow,
      'green': instance.green,
      'noValue': instance.noValue,
    };

_$RegionAnalysisImpl _$$RegionAnalysisImplFromJson(Map<String, dynamic> json) =>
    _$RegionAnalysisImpl(
      totalbuilding: (json['totalbuilding'] as num?)?.toInt() ?? 0,
      checkcomplete: (json['checkcomplete'] as num?)?.toInt() ?? 0,
      dangerbuilding: (json['dangerbuilding'] as num?)?.toInt() ?? 0,
      checkwaiting: (json['checkwaiting'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$RegionAnalysisImplToJson(
        _$RegionAnalysisImpl instance) =>
    <String, dynamic>{
      'totalbuilding': instance.totalbuilding,
      'checkcomplete': instance.checkcomplete,
      'dangerbuilding': instance.dangerbuilding,
      'checkwaiting': instance.checkwaiting,
    };

_$DailyCheckCountImpl _$$DailyCheckCountImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyCheckCountImpl(
      totalBuilding: (json['totalbuilding'] as num).toInt(),
      checkComplete: (json['checkcomplete'] as num).toInt(),
    );

Map<String, dynamic> _$$DailyCheckCountImplToJson(
        _$DailyCheckCountImpl instance) =>
    <String, dynamic>{
      'totalbuilding': instance.totalBuilding,
      'checkcomplete': instance.checkComplete,
    };

_$TasksImpl _$$TasksImplFromJson(Map<String, dynamic> json) => _$TasksImpl(
      uuid: json['uuid'] as String,
      postusername: json['postusername'] as String,
      date: DateTime.parse(json['date'] as String),
      buildingtype: json['buildingtype'] as String,
      address: json['address'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      buildingName: json['buildingName'] as String? ?? '',
      buildingUse: json['buildingUse'] as String,
      overallScore: json['overallScore'] as String? ?? '',
    );

Map<String, dynamic> _$$TasksImplToJson(_$TasksImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'postusername': instance.postusername,
      'date': instance.date.toIso8601String(),
      'buildingtype': instance.buildingtype,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'buildingName': instance.buildingName,
      'buildingUse': instance.buildingUse,
      'overallScore': instance.overallScore,
    };
