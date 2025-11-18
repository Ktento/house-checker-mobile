import 'package:flutter/foundation.dart';
import 'package:house_check_mobile/view/wigets/card/total.dart';
import '../models/map_model.dart';
import 'package:latlong2/latlong.dart';

class MapViewModel extends ChangeNotifier {
  MapState _mapState = const MapState();

  List<LatLng> get redBuildingMarkers => _mapState.redBuildingMarkers;
  List<LatLng> get yellowBuildingMarkers => _mapState.yellowBuildingMarkers;
  List<LatLng> get greenBuildingMarkers => _mapState.greenBuildingMarkers;
  List<LatLng> get waitingBuildingMarkers => _mapState.waitingBuildingMarkers;

  //MarkerDataの配列をすべてマーカーに追加
  void addMarkerAll(List<MarkerData> markers) {
    //ListからMarkerDataを取り出し
    for (var marker in markers) {
      //赤の場合
      if (marker.overallScore == "red") {
        _mapState = _mapState.copyWith(redBuildingMarkers: [
          ..._mapState.redBuildingMarkers,
          marker.position
        ]);
        //黄色の場合
      } else if (marker.overallScore == "yellow") {
        _mapState = _mapState.copyWith(yellowBuildingMarkers: [
          ..._mapState.yellowBuildingMarkers,
          marker.position
        ]);
        //緑の場合
      } else if (marker.overallScore == "green") {
        _mapState = _mapState.copyWith(greenBuildingMarkers: [
          ..._mapState.greenBuildingMarkers,
          marker.position
        ]);
        //それ以外(未完了の場合)
      } else {
        _mapState = _mapState.copyWith(waitingBuildingMarkers: [
          ..._mapState.waitingBuildingMarkers,
          marker.position
        ]);
      }
    }

    notifyListeners();
  }

  //すべてのマーカーをクリアする関数
  void clearMarker() {
    _mapState = _mapState.copyWith(
      redBuildingMarkers: [],
      yellowBuildingMarkers: [],
      greenBuildingMarkers: [],
      waitingBuildingMarkers: [],
    );

    notifyListeners();
  }
}
