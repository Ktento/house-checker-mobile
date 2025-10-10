import 'package:flutter/material.dart';
import 'investigator_info.dart';
import 'investigator_map.dart';
import 'investigator_post.dart';
import 'investigator_total.dart';

class Investigator_HomePage extends StatefulWidget {
  const Investigator_HomePage({super.key});

  @override
  State<Investigator_HomePage> createState() => _investigator_HomePageState();
}

class _investigator_HomePageState extends State<Investigator_HomePage> {
  int _selectedIndex = 0; // 選択中のタブのインデックス
  // タブごとの画面リスト
  static const List<Widget> _pages = <Widget>[
    InvestigatorMap(), // マップ画面
    InvestigatorPost(), // 投稿画面
    InvestigatorInfo(), // 被害情報画面
    Investigator_Total(), // 応急危険度判定集計画面
  ];
  // タブを押したときに呼ばれる関数
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ホーム')),
      body: _pages[_selectedIndex], // 選択中のタブに応じて画面を切り替える
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'マップ'),
          BottomNavigationBarItem(icon: Icon(Icons.upload), label: '判定作業'),
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: '被害情報'),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart_outlined), label: '集計情報'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
