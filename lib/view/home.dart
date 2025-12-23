import 'pages/general/general_home.dart';
import 'pages/investigator/investigator_home.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("災害対策支援アプリケーション",
                style: TextStyle(
                  color: CupertinoColors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                generalModeCard(context),
                SizedBox(width: 50),
                investigatorModeCard(context),
              ],
            ),
            SizedBox(height: 40),
            Text("モードを選択してください",
                style: TextStyle(
                  color: CupertinoColors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }

  GestureDetector generalModeCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const GeneralHomePage(),
          ),
        );
      },
      child: Container(
          width: 200,
          height: 300,
          decoration: BoxDecoration(
            color: CupertinoColors.systemBackground,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: CupertinoColors.black,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: CupertinoColors.systemGrey6,
                offset: Offset(0, 4),
                blurRadius: 6,
              ),
            ],
          ),
          child: Column(children: [
            SizedBox(height: 30),
            Text(
              "通常",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 5),
            Icon(
              CupertinoIcons.person,
              color: CupertinoColors.activeBlue,
              size: 80,
            ),
            Text(
              "・被害情報の確認\n・倒壊家屋の報告",
              style: TextStyle(fontSize: 15),
            ),
          ])),
    );
  }

  GestureDetector investigatorModeCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const InvestigatorHomePage(),
          ),
        );
      },
      child: Container(
          width: 200,
          height: 300,
          decoration: BoxDecoration(
            color: CupertinoColors.systemBackground,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: CupertinoColors.black,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: CupertinoColors.systemGrey6,
                offset: Offset(0, 4),
                blurRadius: 6,
              ),
            ],
          ),
          child: Column(children: [
            SizedBox(height: 30),
            Text(
              "応急危険度判定士",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 5),
            Icon(
              CupertinoIcons.person,
              color: CupertinoColors.systemRed,
              size: 80,
            ),
            Text(
              "・被害状況の確認\n・判定状況の確認\n・応急危険度判定の投稿",
              style: TextStyle(fontSize: 15),
            ),
          ])),
    );
  }
}
