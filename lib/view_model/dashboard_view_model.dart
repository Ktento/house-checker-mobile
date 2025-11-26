import 'package:flutter/cupertino.dart';
import '../models/dashboard_model.dart';
import '../utils/services/DB/get_dashboarddata.dart';

class DashboardViewModel extends ChangeNotifier {
  DashboardData? _dashboardData;
  DashboardData? get dashboardData => _dashboardData;

  Future<void> setDashboardData() async {
    DashboardData? _data = await getDashboardData();
    if (_data != null) {
      _dashboardData = _data;
      notifyListeners();
    }
  }
}
