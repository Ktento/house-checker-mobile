import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:latlong2/latlong.dart';
import '../../../models/map_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

//緯度経度を受け取りその周辺の調査済み建築物を取得
Future<List<MarkerData>> getMarkers(LatLng now) async {
  try {
    final url = Uri.https('script.google.com', dotenv.env['httpgas']!, {
      'mode': 'lat_lng_search',
      'lat': now.latitude.toString(),
      'lng': now.longitude.toString(),
      'range': '3000', //半径3000m以内のデータを取得
      'extractKeys': 'latitude,longitude,overallScore' //緯度経度、総合評価の情報を取得
    });
    final response = await http.get(url);
    print(response.body);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      List<dynamic> data = jsonResponse['data'];
      //レスポンスをMarkerData型に変換
      final List<MarkerData> results =
          data.map((e) => MarkerData.fromJson(e)).toList();
      print(results);
      return results;
    } else {
      throw Exception('送信失敗: ${response.statusCode} ${response.body}');
    }
  } catch (e) {
    print("エラー:(getMarkers):{$e}");
    return [];
  }
}
