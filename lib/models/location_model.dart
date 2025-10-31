import 'package:latlong2/latlong.dart';

class LocationModel {
  //初期位置東京タワー
  LatLng now = LatLng(35.6586, 139.7454);
  double? heading; // 方位（0-360度、未取得時はnull）
}
