import 'package:flutter/cupertino.dart';
import '../../models/investigator_model.dart';

/// 表示用のセクション
Widget buildSection(BuildContext context, String title, List<Widget> children) {
  final separatorColor = CupertinoColors.separator.resolveFrom(context);

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
      Container(height: 2, color: separatorColor),
    ],
  );
}

Widget buildRow(BuildContext context, String label, String value,
    {double labelWidth = 140}) {
  switch (value) {
    case 'red':
      value = '赤';
      break;
    case 'yellow':
      value = '黄';
      break;
    case 'green':
      value = '緑';
      break;
    case 'uRed':
      value = '赤(仮評価)';
      break;
    case 'uYellow':
      value = '黄(仮評価)';
      break;
    case 'uGreen':
      value = '緑(仮評価)';
      break;

    default:
  }
  final separatorColor =
      CupertinoColors.separator.resolveFrom(context).withOpacity(0.3);
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          children: [
            SizedBox(
                width: labelWidth,
                child:
                    Text(label, style: TextStyle(fontWeight: FontWeight.w500))),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text(
                  value,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                    color: CupertinoColors.label,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(height: 1, color: separatorColor),
    ],
  );
}

Widget buildSurvey2Table(
    BuildContext context, List<Map<String, dynamic>> data) {
  return Table(
    border: TableBorder.all(color: CupertinoColors.separator), // 枠線
    columnWidths: const {
      0: FlexColumnWidth(2), // 1列目の幅
      1: FlexColumnWidth(1), // 2列目の幅
      2: FlexColumnWidth(1), // 3列目の幅
      3: FlexColumnWidth(1), // 4列目の幅
    },
    children: [
      TableRow(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
          ),
          Padding(padding: EdgeInsets.all(8), child: Text('Aランク')),
          Padding(padding: EdgeInsets.all(8), child: Text('Bランク')),
          Padding(padding: EdgeInsets.all(8), child: Text('Cランク')),
        ],
      ),
      ...data.map((item) {
        return TableRow(
          children: [
            Padding(padding: EdgeInsets.all(8), child: Text(item['title'])),
            TableCell(
                verticalAlignment: TableCellVerticalAlignment.fill,
                child: Container(
                    color: (item['record'] == DamageLevel.A)
                        ? CupertinoColors.systemBlue.withOpacity(0.3)
                        : CupertinoColors.transparent,
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(item['options'][0])))),
            TableCell(
                verticalAlignment: TableCellVerticalAlignment.fill,
                child: Container(
                    color: (item['record'] == DamageLevel.B)
                        ? CupertinoColors.systemYellow.withOpacity(0.3)
                        : CupertinoColors.transparent,
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(item['options'][1])))),
            TableCell(
                verticalAlignment: TableCellVerticalAlignment.fill,
                child: Container(
                    color: (item['record'] == DamageLevel.C)
                        ? CupertinoColors.systemRed.withOpacity(0.3)
                        : CupertinoColors.transparent,
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(item['options'][2])))),
          ],
        );
      }).toList(),
    ],
  );
}

Widget buildSurvey1Table(
    BuildContext context, List<String> options, int select) {
  return Table(
    border: TableBorder.all(color: CupertinoColors.separator), // 枠線
    columnWidths: const {
      0: FlexColumnWidth(1), // 1列目の幅
      1: FlexColumnWidth(1), // 2列目の幅
    },
    children: [
      TableRow(children: [
        TableCell(
            child: Container(
                color: (select == 1)
                    ? CupertinoColors.systemBlue.withOpacity(0.3)
                    : CupertinoColors.transparent,
                child: Padding(
                    padding: EdgeInsets.all(5), child: Text(options[0])))),
        TableCell(
            child: Container(
                color: (select == 2)
                    ? CupertinoColors.systemBlue.withOpacity(0.3)
                    : CupertinoColors.transparent,
                child: Padding(
                    padding: EdgeInsets.all(5), child: Text(options[1])))),
      ]),
      TableRow(
        children: [
          TableCell(
              child: Container(
                  color: (select == 3)
                      ? CupertinoColors.systemBlue.withOpacity(0.3)
                      : CupertinoColors.transparent,
                  child: Padding(
                      padding: EdgeInsets.all(5), child: Text(options[2])))),
          TableCell(
              child: Container(
                  color: (select == 4)
                      ? CupertinoColors.systemBlue.withOpacity(0.3)
                      : CupertinoColors.transparent,
                  child: Padding(
                      padding: EdgeInsets.all(5), child: Text(options[3])))),
        ],
      ),
    ],
  );
}
