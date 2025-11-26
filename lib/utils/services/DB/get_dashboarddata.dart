import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:latlong2/latlong.dart';
import '../../../models/map_model.dart';
import '../../../models/dashboard_model.dart';
import 'dart:convert';

Future<DashboardData?> getDashboardData() async {
  try {
    final url = Uri.https(
        'script.google.com',
        '/macros/s/AKfycbxm62dd1yIWL6WWFN4Hr5J1hzjME79WUFYle5AY91kfsfrlmNYQimCaCWdlXLV_ocb3/exec',
        {
          'mode': 'Analysis/total',
        });
    final response = await http.get(url);

    if (response.statusCode == 200) {
      print('取得成功(getDashboardData): ${response.body}');
      final jsonResponse = jsonDecode(response.body);
      final Map<String, dynamic> dataJson =
          jsonResponse['data'] as Map<String, dynamic>;
      return DashboardData.fromJson(dataJson);
    } else {
      throw Exception(
          '取得失敗(getDashboardData): ${response.statusCode} ${response.body}');
    }
  } catch (e) {
    print("エラー(getDashboardData):{$e}");
    return null;
  }
}
