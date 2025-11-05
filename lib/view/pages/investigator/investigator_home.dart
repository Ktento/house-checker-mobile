import 'package:flutter/cupertino.dart';
import 'investigator_info.dart';
import 'investigator_map.dart';
import 'investigator_post.dart';
import 'investigator_total.dart';

class InvestigatorHomePage extends StatefulWidget {
  const InvestigatorHomePage({super.key});

  @override
  State<InvestigatorHomePage> createState() => _InvestigatorHomePageState();
}

class _InvestigatorHomePageState extends State<InvestigatorHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.map),
            label: 'マップ',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.pencil),
            label: '判定作業',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.exclamationmark_triangle),
            label: '被害情報',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chart_bar),
            label: '集計情報',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return const CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text('マップ'),
              ),
              child: SafeArea(child: InvestigatorMap()),
            );
          case 1:
            return const CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text('判定作業'),
              ),
              child: SafeArea(child: InvestigatorPost()),
            );
          case 2:
            return const CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text('被害情報'),
              ),
              child: SafeArea(child: InvestigatorInfo()),
            );
          case 3:
            return const CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text('集計情報'),
              ),
              child: SafeArea(child: InvestigatorTotal()),
            );
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
