import 'package:house_check_mobile/models/dashboard_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

//未判定の調査内容を取得する関数
Future<List<Tasks>> getTasks() async {
  try {
    final url = Uri.https('script.google.com', dotenv.env['httpgas']!, {
      'mode': 'checkwaiting_list',
    });
    final response = await http.get(url);
    // print(response.body);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);

      List<dynamic> data = jsonResponse['data'];
      final List<Tasks> results = data.map((e) => Tasks.fromJson(e)).toList();
      return results;
    } else {
      throw Exception('取得失敗: ${response.statusCode} ${response.body}');
    }
  } catch (e) {
    print("エラー:(getTasks):{$e}");
    return [];
  }
}
//判定済みの調査内容を取得する関数
Future<List<Tasks>> getCompletedTasks() async {
  try {
    final url = Uri.https('script.google.com', dotenv.env['httpgas']!, {
      'mode': 'checkcomplete_list',
    });
    final response = await http.get(url);
    // print(response.body);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);

      List<dynamic> data = jsonResponse['data'];
      final List<Tasks> results = data.map((e) => Tasks.fromJson(e)).toList();

      return results;
    } else {
      throw Exception('取得失敗: ${response.statusCode} ${response.body}');
    }
  } catch (e) {
    print("エラー:(getCompletedTasks):{$e}");
    return [];
  }
}
