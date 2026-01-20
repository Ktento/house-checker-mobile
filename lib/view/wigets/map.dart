import 'package:flutter/cupertino.dart';
import 'package:latlong2/latlong.dart';
import '../../models/location_model.dart';
import '../../../../../view_model/location_view_model.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocoding/geocoding.dart';

class MapSelectionWidget extends StatefulWidget {
  final LatLng initialPosition;
  final Function(LatLng) onPositionSelected;

  const MapSelectionWidget({
    Key? key,
    required this.initialPosition,
    required this.onPositionSelected,
  }) : super(key: key);

  @override
  State<MapSelectionWidget> createState() => _MapSelectionWidgetState();
}

class _MapSelectionWidgetState extends State<MapSelectionWidget> {
  LatLng? selectedPosition;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: widget.initialPosition,
        initialZoom: 19,
        onTap: (tapPosition, latlng) {
          setState(() {
            selectedPosition = latlng;
          });
          widget.onPositionSelected(latlng);
        },
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
              point: widget.initialPosition,
              width: 40,
              height: 40,
              child: const Icon(
                CupertinoIcons.location_north_fill,
                color: CupertinoColors.activeBlue,
                size: 40,
              ),
            ),
            if (selectedPosition != null)
              Marker(
                point: selectedPosition!,
                width: 40,
                height: 40,
                child: const Icon(
                  CupertinoIcons.circle_fill,
                  color: CupertinoColors.systemGreen,
                  size: 30,
                ),
              ),
          ],
        ),
      ],
    );
  }
}

//マップから住所を選択できるモーダル
Future<SelectedLocation?> showMapModal(
    BuildContext context, LocationViewModel location) async {
  //結果を格納する変数を定義
  SelectedLocation? result = await showCupertinoModalPopup<SelectedLocation?>(
    context: context,
    builder: (BuildContext context) {
      //一時的に結果を保持する変数を定義
      String? tempSelectedAddress;
      LatLng? tempSelectedLatLng;
      return Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.8,
        ),
        decoration: const BoxDecoration(
          color: CupertinoColors.systemBackground,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          children: [
            // ヘッダー部分
            SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // キャンセルボタン
                  CupertinoButton(
                    child: const Text('キャンセル'),
                    onPressed: () {
                      // キャンセル時は何も返さずに閉じる (null)
                      Navigator.pop(context, null);
                    },
                  ),
                  const Text(
                    '場所を選択',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  //決定ボタン
                  CupertinoButton(
                    child: const Text('決定',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    onPressed: () {
                      // 決定時に選択された住所を返して閉じる
                      if (tempSelectedAddress != null &&
                          tempSelectedLatLng != null) {
                        Navigator.pop(
                          context,
                          SelectedLocation(
                            address: tempSelectedAddress!,
                            latLng: tempSelectedLatLng!,
                          ),
                        );
                      } else {
                        // 住所が選択されていない場合は閉じない
                        Navigator.pop(context, null);
                      }
                    },
                  ),
                ],
              ),
            ),
            // マップ本体
            Expanded(
              child: MapSelectionWidget(
                initialPosition:
                    location.currentPosition ?? const LatLng(35.6586, 139.7454),
                onPositionSelected: (latlng) async {
                  Placemark? addressPlacemark =
                      await location.getAddressFromLatLng(latlng);
                  if (addressPlacemark != null) {
                    // 一時変数に保存
                    tempSelectedAddress =
                        location.formatAddress(addressPlacemark);
                    tempSelectedLatLng = latlng;
                  }
                },
              ),
            ),
          ],
        ),
      );
    },
  );

  // 最終的に受け取った結果を返す
  return result;
}
