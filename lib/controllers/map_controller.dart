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
    _model.markers[0] = currentpostion;
  }

  // マーカーを追加
  void addMarker(LatLng position) {
    _model.markers.add(position);
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
