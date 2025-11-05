import 'package:flutter/material.dart';
import 'pages/general/general_home.dart';
import 'pages/investigator/investigator_home.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SafeArea(
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CupertinoButton.filled(
          child: Text('一般'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const General_HomePage(),
              ),
            );
          },
        ),
        CupertinoButton.filled(
          child: Text('応急危険度判定'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const InvestigatorHomePage(),
              ),
            );
          },
        )
      ])),
    ));
  }
}
