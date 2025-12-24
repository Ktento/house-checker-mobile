import 'package:flutter/cupertino.dart';
import 'investigator_task.dart';
import 'investigator_map.dart';
import 'investigator_post.dart';
import 'investigator_total.dart';
import 'package:provider/provider.dart';
import '../../../view_model/location_view_model.dart';
import '../../../view_model/map_view_model.dart';
import '../../../view_model/dashboard_view_model.dart';

class InvestigatorHomePage extends StatelessWidget {
  const InvestigatorHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocationViewModel()),
        ChangeNotifierProvider(create: (_) => MapViewModel()),
        ChangeNotifierProvider(create: (_) => DashboardViewModel())
      ],
      child: tabMenu(),
    );
  }

  CupertinoTabScaffold tabMenu() {
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
            label: '未判定リスト',
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
                middle: Text('未判定リスト'),
              ),
              child: SafeArea(child: InvestigatorTask()),
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
