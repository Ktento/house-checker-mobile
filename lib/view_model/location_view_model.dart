import 'package:flutter/foundation.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:geocoding/geocoding.dart';

class LocationViewModel extends ChangeNotifier {
  LatLng _currentPosition = LatLng(35.6586, 139.7454);
  double? _heading;

  LatLng get currentPosition => _currentPosition;
  double? get heading => _heading;

  // 現在位置を取得
  Future<void> updateCurrentPosition() async {
    try {
      Position pos = await _determinePosition();
      _currentPosition = LatLng(pos.latitude, pos.longitude);
    } catch (e) {
      _currentPosition = LatLng(35.6586, 139.7454); // デフォルト東京タワー
    }
    notifyListeners();
  }

  // 権限チェック + 位置情報取得
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied.');
    }

    return await Geolocator.getCurrentPosition();
  }

  // ストリームで位置更新
  void listenPosition({LocationSettings? settings}) {
    final locationSettings = settings ??
        const LocationSettings(
            accuracy: LocationAccuracy.high, distanceFilter: 100);

    Geolocator.getPositionStream(locationSettings: locationSettings)
        .listen((position) {
      if (position == null) return;
      _currentPosition = LatLng(position.latitude, position.longitude);
      notifyListeners();
    });
  }

  // ストリームで方位更新
  void listenHeading() {
    final compassStream = FlutterCompass.events;
    if (compassStream == null) return;

    compassStream.listen((event) {
      _heading = event.heading;
      notifyListeners();
    });
  }

  // 緯度経度から住所取得
  Future<Placemark?> getAddressFromLatLng(LatLng latLng) async {
    try {
      final placemarks =
          await placemarkFromCoordinates(latLng.latitude, latLng.longitude);
      if (placemarks.isNotEmpty) return placemarks.first;
      return null;
    } catch (e) {
      debugPrint('住所取得エラー: $e');
      return null;
    }
  }
}
