import 'package:flutter/cupertino.dart';

import '../models/dashboard_model.dart';
import '../utils/services/DB/get_dashboarddata.dart';
import '../utils/services/DB/get_tasks.dart';

class DashboardViewModel extends ChangeNotifier {
  //使用するデータの定義
  DashboardData? _dashboardData;
  DashboardData? get dashboardData => _dashboardData;
  List<Tasks> _tasks = [];
  List<Tasks> get tasks => _tasks;
  List<Tasks> _completedTasks = [];
  List<Tasks> get completedtasks => _completedTasks;

  //コンストラクタ（初期化処理）
  DashboardViewModel() {
    setTasks();
    setCompletedTasks();
    setDashboardData();
  }

  //集計画面の表示に必要なデータを取得
  Future<void> setDashboardData() async {
    //取得できるまでのデータ表示
    _dashboardData = DashboardData(
      workercount: {},
      checksituation: const CheckSituation(noValue: 0),
      checksituationRatio:
          const CheckSituationRatio(red: 0, yellow: 0, green: 0, noValue: 0),
      dateAnalysis: {
        "データなし": DailyCheckCount(totalBuilding: 20, checkComplete: 3),
      },
      regionanalysis: {},
    );
    //画面更新
    notifyListeners();

    final value = await getDashboardData();
    if (value != null) {
      _dashboardData = value;
      //画面更新
      notifyListeners();
    }
  }

  //未判定リストのデータを取得
  Future<void> setTasks() async {
    final value = await getTasks();
    if (value.isNotEmpty) {
      _tasks = value;
      //画面更新
      notifyListeners();
    }
  }

  //完了済みの調査内容を取得
  Future<void> setCompletedTasks() async {
    final value = await getCompletedTasks();
    if (value.isNotEmpty) {
      _completedTasks = value;
      notifyListeners();
    }
  }
}
