import '../models/location_model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_compass/flutter_compass.dart';

import 'package:geocoding/geocoding.dart';

final LocationSettings locationSettings = LocationSettings(
  accuracy: LocationAccuracy.high,
  distanceFilter: 100,
);

class LocationControllerMVC {
  final LocationModel _model = LocationModel();

  LocationModel get model => _model;

  // 現在位置位置を変更
  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  /// 現在位置を取得し、モデルに保存して返す
  Future<LatLng> setCurrentPostion() async {
    try {
      Position pos = await determinePosition();
      _model.now = LatLng(pos.latitude, pos.longitude);
    } catch (e) {
      // 権限拒否などの場合はデフォルト位置を設定
      _model.now = LatLng(35.6586, 139.7454);
    }
    return _model.now;
  }

  void listenPosition(void Function() onUpdate) {
    Geolocator.getPositionStream(locationSettings: locationSettings)
        .listen((Position? position) {
      if (position == null) {
        return;
      }
      _model.now = LatLng(position.latitude, position.longitude);

      onUpdate(); // View側へ通知
    });
  }

  // 向きセンサーの購読
  void listenHeading(void Function() onUpdate) {
    final compassStream = FlutterCompass.events;
    if (compassStream == null) {
      return;
    }

    compassStream.listen((event) {
      _model.heading = event.heading;

      onUpdate(); // View側へ通知
    });
  }

  Future<Placemark?> getAddressFromLatLng(LatLng latLng) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latLng.latitude, latLng.longitude);

      if (placemarks.isNotEmpty) {
        final placemark = placemarks.first;
        // 住所を組み立てる
        return placemark;
      }
      return null;
    } catch (e) {
      print("住所取得エラー：${e}");
      return null;
    }
  }
}
