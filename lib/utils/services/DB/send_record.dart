import '../../../models/investigator_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void sendRecord(InvestigationRecord record) async {
  try {
    final url = Uri.parse(
      dotenv.env['gas']!,
    );
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(record.toJson()),
    );

    if (response.statusCode != 200 || response.statusCode != 302) {
      throw Exception('送信失敗: ${response.body}');
    } else {
      print("送信成功(sendRecord):");
    }
  } catch (e) {
    print("エラー(sendRecord):{$e}");
  }
}
