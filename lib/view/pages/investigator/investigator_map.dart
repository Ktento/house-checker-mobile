import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../../../controllers/map_controller.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../controllers/loacation_controller.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:flutter/cupertino.dart';
import '../../../utils/services/nearbuilding.dart';

class InvestigatorMap extends StatefulWidget {
  const InvestigatorMap({super.key});

  @override
  State<InvestigatorMap> createState() => _InvestigatorMapState();
}

class _InvestigatorMapState extends State<InvestigatorMap>
    with TickerProviderStateMixin {
  final LocationControllerMVC _locationController = LocationControllerMVC();
  late final MapControllerMVC _controller;
  late final AnimatedMapController _animatedMapController;

  LatLng? currentLocation; // 現在位置（まだ取得できていない場合は null）

  @override
  void initState() {
    if (!mounted) return;
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
    // 向きセンサーの購読を追加
    _locationController.listenHeading(() {
      if (mounted) setState(() {});
    });

    // 位置情報の購読を追加
    _locationController.listenPosition(() {
      if (mounted) setState(() {}); // 位置が変わるたびに再描画
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
      return const CupertinoPageScaffold(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('読み込み中...'),
              CupertinoActivityIndicator(),
            ],
          ),
        ),
      );
    }
    return CupertinoPageScaffold(
        child: SafeArea(
            child: Stack(
      children: [
        FlutterMap(
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
              markers: [
                Marker(
                  point: model.currentLocation,
                  width: 40,
                  height: 40,
                  child: Transform.rotate(
                    angle: (_locationController.model.heading ?? 0) *
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

            // 危険度評価　赤のマーカー
            MarkerLayer(
              markers: model.redBuildingmarkers.map((latlng) {
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
                      color: CupertinoColors.systemRed,
                      size: 30,
                    ),
                  ),
                );
              }).toList(),
            ),
            // 危険度評価　黄色のマーカー
            MarkerLayer(
              markers: model.yellowBuildingmarkers.map((latlng) {
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
                      color: CupertinoColors.systemYellow,
                      size: 30,
                    ),
                  ),
                );
              }).toList(),
            ),
            // 危険度評価　緑のマーカー
            MarkerLayer(
              markers: model.greenBuildingmarkers.map((latlng) {
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
              markers: model.waitingBuildingmarkers.map((latlng) {
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
                      CupertinoIcons.clock_fill,
                      color: CupertinoColors.systemGrey,
                      size: 30,
                    ),
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
                      if (currentLocation == null) return;
                      final points = await getMarkers(currentLocation!);
                      _controller.clearMarker();
                      _controller.addMarkerAll(points);
                      setState(() {}); //画面更新
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
                    if (currentLocation != null) {
                      _controller.moveToLocation(currentLocation!);
                    }
                  },
                ),
              ],
            )),
      ],
    )));
  }
}
