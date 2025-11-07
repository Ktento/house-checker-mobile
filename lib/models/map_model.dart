import 'package:latlong2/latlong.dart';

class MapModel {
  LatLng currentLocation = LatLng(35.6586, 139.7454);
  // マーカーのリスト
  List<LatLng> EndBuildingmarkers = [];
  List<LatLng> RiskBuildingmarkers = [];
  List<LatLng> WaitingBuildingmarkers = [];
}

class MarkerData {
  final LatLng position;
  final String overallscore;

  MarkerData({required this.position, required this.overallscore});
}
