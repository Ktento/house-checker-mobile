import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:latlong2/latlong.dart';
import '../../models/map_model.dart';

Future<List<MarkerData>> getMarkers(LatLng now) async {
  try {
    final url = Uri.https(
        'script.google.com',
        '/macros/s/AKfycbxm62dd1yIWL6WWFN4Hr5J1hzjME79WUFYle5AY91kfsfrlmNYQimCaCWdlXLV_ocb3/exec',
        {
          'mode': 'lat_lng_search',
          'lat': now.latitude.toString(),
          'lng': now.longitude.toString(),
          'range': '3000',
          'extractKeys': 'latitude,longitude,overallscore'
        });
    final response = await http.get(url);

    if (response.statusCode == 200) {
      print('送信成功: ${response.body}');
      final jsonResponse = jsonDecode(response.body);

      List<dynamic> data = jsonResponse['data'];
      final List<MarkerData> results =
          data.map((e) => MarkerData.fromJson(e)).toList();

      return results;
    } else {
      throw Exception('送信失敗: ${response.statusCode} ${response.body}');
    }
  } catch (e) {
    print("データ保存処理のエラー:{$e}");
    return [];
  }
}
