import 'package:flutter/foundation.dart';
import '../models/map_model.dart';
import 'package:latlong2/latlong.dart';

class MapViewModel extends ChangeNotifier {
  MapState _mapState = const MapState();
  List<LatLng> get allMarkers => _mapState.allMarkers;
  List<LatLng> get redBuildingMarkers => _mapState.redBuildingMarkers;
  List<LatLng> get yellowBuildingMarkers => _mapState.yellowBuildingMarkers;
  List<LatLng> get greenBuildingMarkers => _mapState.greenBuildingMarkers;
  List<LatLng> get waitingRedBuildingMarkers =>
      _mapState.waitingRedBuildingMarkers;
  List<LatLng> get waitingYellowBuildingMarkers =>
      _mapState.waitingYellowBuildingMarkers;
  List<LatLng> get waitingGreenBuildingMarkers =>
      _mapState.waitingGreenBuildingMarkers;
  List<LatLng> get otherMarkers => _mapState.otherMarkers;

  //MarkerDataの配列をすべてマーカーに追加
  void addMarkerAll(List<MarkerData> markers) {
    //ListからMarkerDataを取り出し
    for (var marker in markers) {
      _mapState = _mapState
          .copyWith(allMarkers: [..._mapState.allMarkers, marker.position]);
      switch (marker.overallScore) {
        case "red":
          _mapState = _mapState.copyWith(redBuildingMarkers: [
            ..._mapState.redBuildingMarkers,
            marker.position
          ]);
          break;
        case "yellow":
          _mapState = _mapState.copyWith(yellowBuildingMarkers: [
            ..._mapState.yellowBuildingMarkers,
            marker.position
          ]);
          break;
        case "green":
          _mapState = _mapState.copyWith(greenBuildingMarkers: [
            ..._mapState.greenBuildingMarkers,
            marker.position
          ]);
          break;
        case "uRed":
          _mapState = _mapState.copyWith(waitingRedBuildingMarkers: [
            ..._mapState.waitingRedBuildingMarkers,
            marker.position
          ]);
          break;
        case "uYellow":
          _mapState = _mapState.copyWith(waitingYellowBuildingMarkers: [
            ..._mapState.waitingYellowBuildingMarkers,
            marker.position
          ]);
          break;
        case "uGreen":
          _mapState = _mapState.copyWith(waitingGreenBuildingMarkers: [
            ..._mapState.waitingGreenBuildingMarkers,
            marker.position
          ]);
          break;
        default:
          _mapState = _mapState.copyWith(
              otherMarkers: [..._mapState.otherMarkers, marker.position]);
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
      waitingRedBuildingMarkers: [],
      waitingYellowBuildingMarkers: [],
      waitingGreenBuildingMarkers: [],
      otherMarkers: [],
    );

    notifyListeners();
  }
}
