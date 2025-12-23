import '../../../models/investigator_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void inevestigatorSendRecord(
    {WoodenRecord? woodenRecord,
    SteelFrameRecord? steelFrameRecord,
    RebarRecord? rebarRecord}) async {
  final record;
  if (woodenRecord != null) {
    record = woodenRecord;
  } else if (steelFrameRecord != null) {
    record = steelFrameRecord;
  } else if (rebarRecord != null) {
    record = rebarRecord;
  } else {
    return;
  }
  try {
    final jsonBody = {
      'investigator': record.toJson(),
    };
    print('送信する record:');
    printLong(jsonBody);

    final url = Uri.parse(
      dotenv.env['gas']!,
    );
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(jsonBody),
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

void generalSendRecord(
    {WoodenRecord? woodenRecord,
    SteelFrameRecord? steelFrameRecord,
    RebarRecord? rebarRecord}) async {
  final record;
  if (woodenRecord != null) {
    record = woodenRecord;
  } else if (steelFrameRecord != null) {
    record = steelFrameRecord;
  } else if (rebarRecord != null) {
    record = rebarRecord;
  } else {
    return;
  }
  try {
    final jsonBody = {
      'general': record.toJson(),
    };
    print('送信する record:');
    printLong(jsonBody);

    final url = Uri.parse(
      dotenv.env['gas']!,
    );
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(jsonBody),
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

void printLong(Object obj) {
  final text = const JsonEncoder.withIndent('  ').convert(obj);
  const chunkSize = 800;

  for (var i = 0; i < text.length; i += chunkSize) {
    print(text.substring(
      i,
      i + chunkSize > text.length ? text.length : i + chunkSize,
    ));
  }
}
