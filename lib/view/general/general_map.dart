import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../../controllers/map_controller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:geolocator/geolocator.dart';
import '../../controllers/loacation_controller.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';

class GeneralMap extends StatefulWidget {
  const GeneralMap({super.key});

  @override
  State<GeneralMap> createState() => _GeneralMapState();
}

class _GeneralMapState extends State<GeneralMap> with TickerProviderStateMixin {
  final LocationControllerMVC _locationController = LocationControllerMVC();
  late final MapControllerMVC _controller;
  late final AnimatedMapController _animatedMapController;

  LatLng? currentLocation; // 現在位置（まだ取得できていない場合は null）

  @override
  void initState() {
    super.initState();
    _animatedMapController = AnimatedMapController(
      vsync: this,
    );
    _controller = MapControllerMVC(_animatedMapController);
    //現在位置を取得し初期位置に設定
    _locationController.setCurrentPostion().then((latlng) {
      setState(() {
        currentLocation = latlng;
        _controller.currentPostionMarkers(latlng);
      });
    });
  }

  @override
  void dispose() {
    _animatedMapController.dispose();
    super.dispose();
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
        mapController: _animatedMapController.mapController,
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
                child: Transform.rotate(
                  angle: (_locationController.model.heading ?? 0) *
                      (3.14159265 / 180),
                  child: Icon(Icons.navigation, color: Colors.blue, size: 40),
                ),
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
            _controller.moveToLocation(currentLocation!);
          }
        },
        child: const Icon(Icons.my_location),
      ),
    );
  }
}
