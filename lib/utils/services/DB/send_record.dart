import '../../../models/investigator_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

//各建築物の調査内容をGASに送信する関数
Future<void> inevestigatorSendRecord(
    {WoodenRecord? woodenRecord, //木造
    SteelFrameRecord? steelFrameRecord, //鉄骨
    RebarRecord? rebarRecord //鉄筋
    }) async {
  final record;
  //各建築物の調査内容をrecordに保持
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
    //調査内容をJson変換し送信する
    final jsonBody = {
      'investigator_post': record.toJson(),
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

//既に存在する調査内容をUUIDを元に編集
//UUIDから更新するGASの調査内容を特定し、関数が受け取る調査内容をすべてGASに反映する。
Future<void> inevestigatorUpdateRecord(
    {WoodenRecord? woodenRecord,
    SteelFrameRecord? steelFrameRecord,
    RebarRecord? rebarRecord,
    required String uuid}) async {
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
      'update_post': {
        'uuid': uuid,
        ...record.toJson(),
      }
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
      throw Exception('更新失敗: ${response.body}');
    } else {
      print("更新成功(inevestigatorUpdateRecord):");
    }
  } catch (e) {
    print("エラー(sendRecord):{$e}");
  }
}

//一般ユーザ用の調査内容送信関数
Future<void> generalSendRecord(
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
    const postUsername = 'house_checker_general';
    final jsonBody = {
      'general_post': {
        'postusername': postUsername,
        ...record.toJson(),
      }
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

//デバック用のprint関数。改行が自動でされる
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
