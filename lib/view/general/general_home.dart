import 'package:flutter/material.dart';
import 'general_info.dart';
import 'general_map.dart';
import 'general_post.dart';

class General_HomePage extends StatefulWidget {
  const General_HomePage({super.key});

  @override
  State<General_HomePage> createState() => _General_HomePageState();
}

class _General_HomePageState extends State<General_HomePage> {
  int _selectedIndex = 0; // 選択中のタブのインデックス
  // タブごとの画面リスト
  static const List<Widget> _pages = <Widget>[
    GeneralMap(), // マップ画面
    GeneralPost(), // 投稿画面
    GeneralInfo(), // 被害情報画面
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
          BottomNavigationBarItem(icon: Icon(Icons.upload), label: '投稿'),
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: '被害情報'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
