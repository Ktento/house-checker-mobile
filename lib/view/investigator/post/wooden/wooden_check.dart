import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DangerSurveyFormPage extends StatefulWidget {
  @override
  _DangerSurveyFormPageState createState() => _DangerSurveyFormPageState();
}

class _DangerSurveyFormPageState extends State<DangerSurveyFormPage> {
  // 任意の表示用データ
  final String investigator = '田中 太郎';
  final DateTime surveyDate = DateTime(2025, 10, 31, 14, 30);
  final String buildingName = '静岡県防災センター';
  final String address = '静岡県静岡市葵区追手町1-1';
  final String usageType = '戸建て専用住宅';
  final Map<String, String> dangerRank = {
    '隣接建築物・地盤': 'A',
    '構造躯体': 'B',
    '落下危険物': 'A',
  };
  final String totalJudgment = '要注意';
  final String comment = '外壁に一部ひび割れを確認。';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('応急危険度 判定調査表'),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSection('調査情報', [
                _buildRow('調査者氏名', investigator),
                _buildRow(
                  '調査日時',
                  '${surveyDate.year}/${surveyDate.month}/${surveyDate.day} '
                      '${surveyDate.hour}:${surveyDate.minute.toString().padLeft(2, '0')}',
                ),
              ]),
              _buildSection('建築物情報', [
                _buildRow('建築物名', buildingName),
                _buildRow('所在地', address),
                _buildRow('用途', usageType),
              ]),
              _buildSection('危険度評価', [
                for (var entry in dangerRank.entries)
                  _buildRow(entry.key, entry.value),
              ]),
              _buildSection('総合判定', [
                _buildRow('判定', totalJudgment),
              ]),
              _buildSection('コメント', [
                _buildRow('備考', comment),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  /// 表示用のセクション
  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: CupertinoColors.activeBlue,
          ),
        ),
        SizedBox(height: 8),
        ...children,
        Divider(),
      ],
    );
  }

  /// 1行表示
  Widget _buildRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          SizedBox(
              width: 140,
              child:
                  Text(label, style: TextStyle(fontWeight: FontWeight.w500))),
          Expanded(
            child: Text(value, style: TextStyle(color: CupertinoColors.label)),
          ),
        ],
      ),
    );
  }
}
