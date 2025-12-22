import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:flutter/cupertino.dart';
import '../../../utils/services/DB/get_nearbuilding.dart';
import '../../../view_model/location_view_model.dart';
import 'package:provider/provider.dart';
import '../../../view_model/map_view_model.dart';

class GeneralMap extends StatefulWidget {
  const GeneralMap({super.key});

  @override
  State<GeneralMap> createState() => _GeneralMapState();
}

class _GeneralMapState extends State<GeneralMap> with TickerProviderStateMixin {
  late final AnimatedMapController _animatedMapController;
  late LatLng currentPosition = LatLng(35.6586, 139.7454);
  bool markerbutton = false;

  // アニメーションで指定位置に移動
  void moveToLocation(LatLng latlng) {
    _animatedMapController.animateTo(
      dest: latlng,
      zoom: 19,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    super.initState();
    _animatedMapController = AnimatedMapController(vsync: this);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final locationVM = context.read<LocationViewModel>();

      await locationVM.updateCurrentPosition();
      if (locationVM.currentPosition != null) {
        moveToLocation(locationVM.currentPosition!);
      }
      locationVM.listenPosition();
      locationVM.listenHeading();
    });
  }

  @override
  void dispose() {
    _animatedMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final locationViewModel = context.watch<LocationViewModel>();
    final mapViewModel = context.watch<MapViewModel>();

    return CupertinoPageScaffold(
      child: SafeArea(
        child: Stack(
          children: [
            FlutterMap(
              mapController: _animatedMapController.mapController,
              options: MapOptions(
                initialCenter:
                    locationViewModel.currentPosition ?? LatLng(0, 0),
                initialZoom: 19,
              ),
              children: [
                TileLayer(
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.jp/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c'],
                  userAgentPackageName: 'com.example.app',
                ),
                if (markerbutton) ...[
                  // 危険度評価　赤のマーカー
                  MarkerLayer(
                    markers: mapViewModel.redBuildingMarkers.map((latlng) {
                      return Marker(
                        point: latlng,
                        width: 30,
                        height: 30,
                        child: GestureDetector(
                          onTap: () async {
                            final googleMapsUrl = Uri.parse(
                                'https://www.google.com/maps/search/?api=1&query=${latlng.latitude},${latlng.longitude}');
                            if (await canLaunchUrl(googleMapsUrl)) {
                              await launchUrl(googleMapsUrl,
                                  mode: LaunchMode.externalApplication);
                            } else {
                              print('Could not launch Google Maps');
                            }

                            print('タップされました: $latlng');
                          },
                          child: const Icon(
                            CupertinoIcons.circle_fill,
                            color: CupertinoColors.systemGreen,
                            size: 30,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  // 危険度評価　黄色のマーカー
                  MarkerLayer(
                    markers: mapViewModel.yellowBuildingMarkers.map((latlng) {
                      return Marker(
                        point: latlng,
                        width: 30,
                        height: 30,
                        child: GestureDetector(
                          onTap: () async {
                            final googleMapsUrl = Uri.parse(
                                'https://www.google.com/maps/search/?api=1&query=${latlng.latitude},${latlng.longitude}');
                            if (await canLaunchUrl(googleMapsUrl)) {
                              await launchUrl(googleMapsUrl,
                                  mode: LaunchMode.platformDefault);
                            } else {
                              print('Could not launch Google Maps');
                            }

                            print('タップされました: $latlng');
                          },
                          child: const Icon(
                            CupertinoIcons.circle_fill,
                            color: CupertinoColors.systemGreen,
                            size: 30,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  // 危険度評価　緑のマーカー
                  MarkerLayer(
                    markers: mapViewModel.greenBuildingMarkers.map((latlng) {
                      return Marker(
                        point: latlng,
                        width: 30,
                        height: 30,
                        child: GestureDetector(
                          onTap: () async {
                            final googleMapsUrl = Uri.parse(
                                'https://www.google.com/maps/search/?api=1&query=${latlng.latitude},${latlng.longitude}');
                            if (await canLaunchUrl(googleMapsUrl)) {
                              await launchUrl(googleMapsUrl,
                                  mode: LaunchMode.externalApplication);
                            } else {
                              print('Could not launch Google Maps');
                            }

                            print('タップされました: $latlng');
                          },
                          child: const Icon(
                            CupertinoIcons.circle_fill,
                            color: CupertinoColors.systemGreen,
                            size: 30,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  // 判定待ちのマーカー
                  MarkerLayer(
                    markers: mapViewModel.waitingBuildingMarkers.map((latlng) {
                      return Marker(
                        point: latlng,
                        width: 30,
                        height: 30,
                        child: GestureDetector(
                          onTap: () async {
                            final googleMapsUrl = Uri.parse(
                                'https://www.google.com/maps/search/?api=1&query=${latlng.latitude},${latlng.longitude}');
                            if (await canLaunchUrl(googleMapsUrl)) {
                              await launchUrl(googleMapsUrl,
                                  mode: LaunchMode.externalApplication);
                            } else {
                              print('Could not launch Google Maps');
                            }

                            print('タップされました: $latlng');
                          },
                          child: const Icon(
                            CupertinoIcons.circle_fill,
                            color: CupertinoColors.systemGreen,
                            size: 30,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
                //現在位置マーカー
                MarkerLayer(
                  markers: [
                    Marker(
                      point: locationViewModel.currentPosition ??
                          LatLng(35.6586, 139.7454),
                      width: 40,
                      height: 40,
                      child: Transform.rotate(
                        angle: (locationViewModel.heading ?? 0) *
                            (3.14159265 / 180),
                        child: const Icon(
                          CupertinoIcons.location_north, // 矢印アイコン
                          color: CupertinoColors.activeBlue,
                          size: 40,
                        ),
                      ),
                    ),
                  ],
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
            Positioned(
                bottom: 20,
                left: 20,
                child: Column(
                  children: [
                    CupertinoButton(
                        padding: EdgeInsets.zero,
                        borderRadius: BorderRadius.circular(28),
                        color: CupertinoColors.systemBlue,
                        child: const Icon(
                          CupertinoIcons.flag_circle,
                          color: CupertinoColors.white,
                          size: 26,
                        ),
                        onPressed: () async {
                          setState(() {
                            markerbutton = !markerbutton;
                          });

                          if (locationViewModel.currentPosition == null ||
                              !markerbutton) return;
                          final points = await getMarkers(
                              locationViewModel.currentPosition!);

                          mapViewModel.clearMarker();
                          mapViewModel.addMarkerAll(points);
                        }),
                    SizedBox(height: 20),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      borderRadius: BorderRadius.circular(28),
                      color: CupertinoColors.systemBlue,
                      child: const Icon(
                        CupertinoIcons.location_solid,
                        color: CupertinoColors.white,
                        size: 26,
                      ),
                      onPressed: () {
                        if (locationViewModel.currentPosition != null) {
                          moveToLocation(locationViewModel.currentPosition!);
                        }
                      },
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
