import 'package:latlong2/latlong.dart';

class MapModel {
  LatLng currentLocation = LatLng(35.6586, 139.7454);
  // マーカーのリスト
  //危険度評価　赤・黄色・緑のリスト
  List<LatLng> redBuildingmarkers = [];
  List<LatLng> yellowBuildingmarkers = [];
  List<LatLng> greenBuildingmarkers = [];

  //危険度評価未完了のリスト
  List<LatLng> waitingBuildingmarkers = [];
}

class MarkerData {
  final LatLng position;
  final String overallscore;

  MarkerData({required this.position, required this.overallscore});
  factory MarkerData.fromJson(Map<String, dynamic> json) {
    return MarkerData(
      position: LatLng(
        (json['latitude'] as num).toDouble(),
        (json['longitude'] as num).toDouble(),
      ),
      overallscore: json['overallscore'] ?? '',
    );
  }
}
