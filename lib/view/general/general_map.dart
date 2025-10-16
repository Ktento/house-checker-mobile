import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../../controllers/map_controller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:geolocator/geolocator.dart';
import '../../controllers/loacation_controller.dart';

class GeneralMap extends StatefulWidget {
  const GeneralMap({super.key});

  @override
  State<GeneralMap> createState() => _GeneralMapState();
}

class _GeneralMapState extends State<GeneralMap> {
  final MapControllerMVC _controller = MapControllerMVC();
  final LocationControllerMVC _locationController = LocationControllerMVC();
  LatLng? currentLocation; // 現在位置（まだ取得できていない場合は null）

  @override
  void initState() {
    super.initState();
    _setInitialLocation();
  }

  Future<void> _setInitialLocation() async {
    try {
      Position pos = await _locationController.determinePosition();
      LatLng latlng = LatLng(pos.latitude, pos.longitude);
      setState(() {
        currentLocation = latlng;
        _controller.moveCenter(latlng);
        _controller.addMarker(latlng);
      });
    } catch (e) {
      print('位置情報取得失敗: $e');
      // 権限拒否時はデフォルト位置を使用
      LatLng defaultPos = LatLng(35.6586, 139.7454);
      setState(() {
        currentLocation = defaultPos;
        _controller.moveCenter(defaultPos);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final model = _controller.model;
    // 位置情報がまだ取得できていない場合はロード中表示
    if (currentLocation == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          initialCenter: currentLocation!,
          initialZoom: 19,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.jp/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: model.markers.map((latlng) {
              return Marker(
                point: latlng,
                width: 40,
                height: 40,
                child:
                    const Icon(Icons.location_pin, color: Colors.red, size: 35),
              );
            }).toList(),
          ),
          RichAttributionWidget(
            attributions: [
              TextSourceAttribution(
                'OpenStreetMap contributors',
                onTap: () => launchUrl(
                  Uri.parse('https://openstreetmap.org/copyright'),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (currentLocation != null) {
            _controller.moveCenter(currentLocation!);
            setState(() {}); // 画面を更新して中心位置を反映
          }
        },
      ),
    );
  }
}
