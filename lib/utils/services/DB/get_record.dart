import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../../models/investigator_model.dart';

Future<WoodenRecord?> getWoodenRecord(String uuid) async {
  try {
    final url = Uri.https('script.google.com', dotenv.env['httpgas']!,
        {'mode': 'getrecord', 'uuid': uuid});
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);

      final Map<String, dynamic> data =
          jsonResponse['data'] as Map<String, dynamic>;
      final WoodenRecord results = WoodenRecord.fromJson(data);

      return results;
    } else {
      throw Exception('取得失敗: ${response.statusCode} ${response.body}');
    }
  } catch (e) {
    print("エラー:(getWoodenRecord):{$e}");
    return null;
  }
}

Future<SteelFrameRecord?> getSteelFrameRecord(String uuid) async {
  try {
    final url = Uri.https('script.google.com', dotenv.env['httpgas']!,
        {'mode': 'getrecord', 'uuid': uuid});
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);

      final Map<String, dynamic> data =
          jsonResponse['data'] as Map<String, dynamic>;
      final SteelFrameRecord results = SteelFrameRecord.fromJson(data);

      return results;
    } else {
      throw Exception('取得失敗: ${response.statusCode} ${response.body}');
    }
  } catch (e) {
    print("エラー:(getSteelFrameRecord):{$e}");
    return null;
  }
}

Future<RebarRecord?> getRebarRecord(String uuid) async {
  try {
    final url = Uri.https('script.google.com', dotenv.env['httpgas']!,
        {'mode': 'getrecord', 'uuid': uuid});
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);

      final Map<String, dynamic> data =
          jsonResponse['data'] as Map<String, dynamic>;
      final RebarRecord results = RebarRecord.fromJson(data);

      return results;
    } else {
      throw Exception('取得失敗: ${response.statusCode} ${response.body}');
    }
  } catch (e) {
    print("エラー:(getRebarRecord):{$e}");
    return null;
  }
}
