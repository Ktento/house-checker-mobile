import 'package:latlong2/latlong.dart';

class MapModel {
  // 地図の中心位置
  LatLng center = LatLng(35.6586, 139.7454);

  // マーカーのリスト
  List<LatLng> markers = [
    LatLng(35.6586, 139.7454), // 初期マーカー
  ];
}
