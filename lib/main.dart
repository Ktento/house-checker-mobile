import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MyAppState(),
      child: CupertinoApp(
        title: '応急危険度判定アプリ',
        theme: CupertinoThemeData(
          brightness: Brightness.light,
          primaryColor: CupertinoColors.activeBlue,
          scaffoldBackgroundColor: CupertinoColors.systemGroupedBackground,
          textTheme: CupertinoTextThemeData(
            textStyle: TextStyle(
              fontSize: 14,
              color: CupertinoColors.label,
            ),
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  // 状態管理の内容
}
