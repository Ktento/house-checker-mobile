import 'package:flutter/cupertino.dart';
import 'general_info.dart';
import 'general_map.dart';
import 'general_post.dart';
import 'general_total.dart';
import 'package:provider/provider.dart';
import '../../../view_model/location_view_model.dart';
import '../../../view_model/map_view_model.dart';
import '../../../view_model/dashboard_view_model.dart';
import '../../home.dart';

class GeneralHomePage extends StatelessWidget {
  const GeneralHomePage({super.key});

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
            icon: Icon(CupertinoIcons.chart_bar),
            label: '集計情報',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                leading: CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: const Text('モード選択にもどる'),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      CupertinoPageRoute(
                        builder: (_) => const HomePage(),
                      ),
                      (route) => false,
                    );
                  },
                ),
                middle: Text('マップ'),
              ),
              child: SafeArea(child: GeneralMap()),
            );
          case 1:
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                leading: CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: const Text('モード選択にもどる'),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      CupertinoPageRoute(
                        builder: (_) => const HomePage(),
                      ),
                      (route) => false,
                    );
                  },
                ),
                middle: Text('判定作業'),
              ),
              child: SafeArea(child: GeneralPost()),
            );
          case 2:
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                leading: CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: const Text('モード選択にもどる'),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      CupertinoPageRoute(
                        builder: (_) => const HomePage(),
                      ),
                      (route) => false,
                    );
                  },
                ),
                middle: Text('集計情報'),
              ),
              child: SafeArea(child: GeneralTotal()),
            );
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
