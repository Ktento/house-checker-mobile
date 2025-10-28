import '../models/investigator_post_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void sendRecord(InvestigationRecord record) async {
  try {
    final url = Uri.parse(
        'https://script.google.com/macros/s/AKfycbw9pz9QFY0PqUXGvYuEzISLJ_tyvuXrhKgk2F6NcVXA5Pqd_cWUZnQ8ja6X54-P8q7u/exec');
    // 送信前に JSON を確認
    final jsonBody = jsonEncode(record.toJson());
    print("送信する JSON:\n$jsonBody");
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(record.toJson()),
    );

    if (response.statusCode != 200) {
      throw Exception('送信失敗: ${response.body}');
    }
  } catch (e) {
    print("データ保存処理のエラー:{$e}");
  }
}
