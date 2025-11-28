import 'package:flutter/foundation.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:geocoding/geocoding.dart';
import '../models/location_model.dart';
import 'dart:async';

class LocationViewModel extends ChangeNotifier {
  LocationState? _locationState;
  LatLng? get currentPosition => _locationState?.now;
  double? get heading => _locationState?.heading;
  String? get address => _locationState?.address;

  StreamSubscription<Position>? _positionSubscription;
  StreamSubscription<CompassEvent>? _compassSubscription;

  //現在位置を反映
  void setCurrentPostion(LatLng pos) {
    _locationState = LocationState(now: LatLng(pos.latitude, pos.longitude));
    notifyListeners();
  }

  // 現在位置,住所を取得して反映
  Future<void> updateCurrentPosition() async {
    try {
      Position pos = await _determinePosition();
      _locationState = LocationState(now: LatLng(pos.latitude, pos.longitude));
      Placemark? address =
          await getAddressFromLatLng(LatLng(pos.latitude, pos.longitude));
      print(address);

      if (address != null || address!.street != null) {
        final String replaceAddress = formatAddress(address);

        _locationState = _locationState!.copyWith(address: replaceAddress);
      }
    } catch (e) {
      _locationState =
          LocationState(now: LatLng(35.6586, 139.7454)); // デフォルト東京タワー
      print("エラー(updateCurrentPosition):$e");
    }
    notifyListeners();
  }

  //住所から日本と郵便番号を削除し、適切な文字列を返す関数
  String formatAddress(Placemark placemark) {
    String rawStreet = placemark.street.toString();

    // 「日本、」を削除
    String cleaned = rawStreet.replaceAll(RegExp(r'^日本、'), '');

    // 「〒郵便番号」を削除（日本の郵便番号形式：〒数字3桁-数字4桁）
    cleaned = cleaned.replaceAll(RegExp(r'〒\d{3}-\d{4}\s*'), '');

    // 先頭・末尾の空白や余分なコンマを削除
    cleaned = cleaned.trim().replaceAll(RegExp(r'^,|,$'), '');
    return cleaned;
  }

  //現在位置を取得
  static Future<LatLng?> getCurrentPosition() async {
    try {
      Position pos = await _determinePosition();
      return LatLng(pos.latitude, pos.longitude);
    } catch (e) {
      return null; // デフォルト東京タワー
    }
  }

  // 権限チェック + 位置情報取得
  static Future<Position> _determinePosition() async {
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

  // ストリームで位置更新 // 位置情報ストリーム購読
  void listenPosition({LocationSettings? settings}) {
    final locationSettings = settings ??
        const LocationSettings(
            accuracy: LocationAccuracy.bestForNavigation, distanceFilter: 1);
    //ストリームを一度中止してから再度開始(二重に処理が続くのを防ぐため)
    _positionSubscription?.cancel();
    _positionSubscription =
        Geolocator.getPositionStream(locationSettings: locationSettings)
            .listen((position) {
      if (position == null) return;
      //監視しているリスナーがいなければ処理を中止
      if (!hasListeners) return;
      _locationState =
          (_locationState ?? LocationState(now: LatLng(35.6586, 139.7454)))
              .copyWith(now: LatLng(position.latitude, position.longitude));
      notifyListeners();
    });
  }

  // 方位ストリーム購読
  void listenHeading() {
    final compassStream = FlutterCompass.events;
    if (compassStream == null) return;
    //ストリームを一度中止してから再度開始(二重に処理が続くのを防ぐため)
    _compassSubscription?.cancel();
    _compassSubscription = compassStream.listen((event) {
      if (event.heading == null) return;
      //監視しているリスナーがいなければ処理を中止
      if (!hasListeners) return;
      _locationState ??= LocationState(now: LatLng(35.6586, 139.7454));
      _locationState = _locationState!.copyWith(heading: event.heading);
      notifyListeners();
    });
  }

  //Widget が破棄されるときのリソース解放
  @override
  void dispose() {
    _positionSubscription?.cancel();
    _compassSubscription?.cancel();
    super.dispose();
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
