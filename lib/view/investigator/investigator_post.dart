import 'package:flutter/material.dart';
import 'post/wooden/wooden_research_unit.dart';
import 'package:flutter/cupertino.dart';

class InvestigatorPost extends StatelessWidget {
  const InvestigatorPost({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              //一般モードに遷移
              Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (context) => const WoodenResearchUnit()),
              );
            },
            child: Text('木造建築物'),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('鉄筋建築物'),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('コンクリート建築物'),
          )
        ],
      ),
    ));
  }
}
