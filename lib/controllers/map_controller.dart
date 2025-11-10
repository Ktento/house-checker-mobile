import 'package:latlong2/latlong.dart';
import '../models/map_model.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:flutter/material.dart';

class MapControllerMVC {
  final MapModel _model = MapModel();
  final AnimatedMapController animatedMapController;

  MapControllerMVC(this.animatedMapController);
  MapModel get model => _model;

  //現在位置マーカーの更新
  void currentPostionMarkers(LatLng currentpostion) {
    _model.currentLocation = currentpostion;
  }

  void addMarkerAll(List<MarkerData> markers) {
    for (var marker in markers) {
      if (marker.overallscore == "red") {
        redBuildingMarkers(marker.position);
      } else if (marker.overallscore == "yellow") {
        yellowBuildingMarkers(marker.position);
      } else if (marker.overallscore == "green") {
        greenBuildingMarkers(marker.position);
      } else {
        waitingBuildingMarkers(marker.position);
      }
    }
  }

  //危険評価済みのマーカーを追加する関数
  //赤
  void redBuildingMarkers(LatLng position) {
    _model.redBuildingmarkers.add(position);
  }

  //黄色
  void yellowBuildingMarkers(LatLng position) {
    _model.yellowBuildingmarkers.add(position);
  }

  //緑
  void greenBuildingMarkers(LatLng position) {
    _model.greenBuildingmarkers.add(position);
  }

  //調査待ちの建築物の座標を追加する関数
  void waitingBuildingMarkers(LatLng position) {
    _model.waitingBuildingmarkers.add(position);
  }

  //すべてのマーカーをクリアする関数
  void clearMarker() {
    _model.redBuildingmarkers.clear();
    _model.yellowBuildingmarkers.clear();
    _model.greenBuildingmarkers.clear();
    _model.waitingBuildingmarkers.clear();
  }

  // アニメーションで指定位置に移動
  void moveToLocation(LatLng latlng) {
    animatedMapController.animateTo(
      dest: latlng,
      zoom: 19,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
