import 'package:latlong2/latlong.dart';

class MapModel {
  // 地図の中心位置（初期値はロンドン）
  LatLng center = LatLng(51.509364, -0.128928);

  // マーカーのリスト
  List<LatLng> markers = [
    LatLng(51.509364, -0.128928), // 初期マーカー（ロンドン中心）
  ];
}
