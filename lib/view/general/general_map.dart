import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../../controllers/map_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class GeneralMap extends StatefulWidget {
  const GeneralMap({super.key});

  @override
  State<GeneralMap> createState() => _GeneralMapState();
}

class _GeneralMapState extends State<GeneralMap> {
  final MapControllerMVC _controller = MapControllerMVC();
  @override
  Widget build(BuildContext context) {
    final model = _controller.model;
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          initialCenter: model.center,
          initialZoom: 17,
          onTap: (tapPosition, latlng) {
            setState(() {
              _controller.addMarker(latlng); // タップでマーカー追加
            });
          },
        ),
        children: [
          TileLayer(
            urlTemplate:
                'https://{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png',
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
          setState(() {
            final tokyoTower = LatLng(35.6586, 139.7454);
            _controller.moveCenter(tokyoTower);
            _controller.addMarker(tokyoTower);
          });
        },
        child: const Icon(Icons.my_location),
      ),
    );
  }
}
