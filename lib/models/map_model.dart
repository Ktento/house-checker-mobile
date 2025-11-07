import 'package:latlong2/latlong.dart';

class MapModel {
  LatLng currentLocation = LatLng(35.6586, 139.7454);
  // マーカーのリスト
  List<LatLng> markers = [
    LatLng(35.6586, 139.7454), // 初期マーカー東京タワー
  ];
}
