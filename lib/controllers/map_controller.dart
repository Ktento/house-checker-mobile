import 'package:latlong2/latlong.dart';
import '../models/map_model.dart';

class MapControllerMVC {
  final MapModel _model = MapModel();

  MapModel get model => _model;

  // 中心位置を変更
  void moveCenter(LatLng newCenter) {
    _model.center = newCenter;
  }

  // マーカーを追加
  void addMarker(LatLng position) {
    _model.markers.add(position);
  }
}
