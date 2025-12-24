import 'package:flutter/cupertino.dart';

import '../models/dashboard_model.dart';
import '../utils/services/DB/get_dashboarddata.dart';
import '../utils/services/DB/get_tasks.dart';

class DashboardViewModel extends ChangeNotifier {
  DashboardData? _dashboardData;
  DashboardData? get dashboardData => _dashboardData;
  List<Tasks> _tasks = [];
  List<Tasks> get tasks => _tasks;

  DashboardViewModel() {
    setTasks();
    setDashboardData();
  }

  Future<void> setDashboardData() async {
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
    notifyListeners();

    final value = await getDashboardData();
    if (value != null) {
      _dashboardData = value;
      notifyListeners();
    }
  }

  Future<void> setTasks() async {
    final value = await getTasks();
    if (value.isNotEmpty) {
      _tasks = value;
      notifyListeners();
    }
  }
}
