import 'package:flutter/cupertino.dart';

import '../models/dashboard_model.dart';
import '../utils/services/DB/get_dashboarddata.dart';

class DashboardViewModel extends ChangeNotifier {
  DashboardData? _dashboardData;
  DashboardData? get dashboardData => _dashboardData;

  DashboardViewModel() {
    setDashboardData();
  }

  Future<void> setDashboardData() async {
    _dashboardData = DashboardData(
      workercount: {},
      checksituation: const CheckSituation(noValue: 0),
      checksituationRatio: const CheckSituationRatio(),
      dateAnalysis: {
        "データなし": DailyCheckCount(totalBuilding: 20, checkComplete: 3),
      },
      regionanalysis: {},
    );
    notifyListeners();

    final value = await getDashboardData();

    _dashboardData = value;
    notifyListeners();
  }
}
